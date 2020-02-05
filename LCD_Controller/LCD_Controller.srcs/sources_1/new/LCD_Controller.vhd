----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         24.01.2020 21:51:49
-- Design Name: 
-- Module Name:         LCD_Controller - LCD_Controller_Arch
-- Project Name:        LCD interface for the HD44780 LCD-Interface tutorial from
--                      https://www.kampis-elektroecke.de/fpga/hd44780-lcd-interface/
-- Target Devices: 
-- Tool Versions:       Vivado 2019.2
-- Description:         LCD-Controller for HD44780 character displays.
-- 
-- Dependencies: 
-- 
-- Revision:
--  Revision            0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LCD_Controller is
    Generic (   CONFIG      : INTEGER := 0;                         -- Default configuration index.
                CLOCK_FREQ  : INTEGER := 125                        -- Input clock frequency in MHz.
                );
    Port (  Clock   : in STD_LOGIC;
            ResetN  : in STD_LOGIC;

            -- Communication bus
            Data    : in STD_LOGIC_VECTOR(7 downto 0);
            Ready   : out STD_LOGIC;                                -- Output to signal that the display controller is ready
            Valid   : in STD_LOGIC;                                 -- Input to signal valid data

            SendCommand : in STD_LOGIC;                             -- Handle the next data byte as command (High)

            -- LCD bus
            LCD_RS  : out STD_LOGIC;                                -- Command (High) / Data (Low)
            LCD_E   : out STD_LOGIC;                                -- Low-High Transition: Display read RW and RS
                                                                    -- High-Low Transition: Display read data from bus (RW Low)
                                                                    --                      Display put data on the bus (RW High)
            LCD_RW  : out STD_LOGIC;                                -- Read data (High) / Write data (Low)
            LCD_Data: inout STD_LOGIC_VECTOR(7 downto 0)            -- LCD data bus
            );
end LCD_Controller;

architecture LCD_Controller_Arch of LCD_Controller is

    type State_t is (Reset, Initialize, Idle, WaitBusy, Transmit);
    type Config_t is array(0 to 1, 0 to 5) of STD_LOGIC_VECTOR(7 downto 0);

    constant RESET_DELAY_1  : INTEGER   := 50000;                                                   -- Delay after power up in us
    constant RESET_DELAY_2  : INTEGER   := 4100;                                                    -- Delay after sending first initialization instruction in us
    constant RESET_DELAY_3  : INTEGER   := 100;                                                     -- Delay after sending second initialization instruction in us
    constant RESET_DELAY_4  : INTEGER   := 100;                                                     -- Delay after sending third initialization instruction in us

    constant Configs        : Config_t  := ((x"39", x"06", x"17", x"0F", x"01", x"02"),             -- Function set european character set
                                                                                                    -- Entry mode set increment cursor by 1 not shifting display
                                                                                                    -- Character mode and internal power on
                                                                                                    -- Clear the display
                                                                                                    -- Return cursor to home position
                                                                                                    -- Display and blinking cursor on
                                            (x"39", x"06", x"17", x"0C", x"01", x"02")              -- Function set european character set
                                                                                                    -- Entry mode set increment cursor by 1 not shifting display
                                                                                                    -- Character mode and internal power on
                                                                                                    -- Clear the display
                                                                                                    -- Return cursor to home position
                                                                                                    -- Display on
                                           );

    constant RESET_DELAY    : INTEGER   := RESET_DELAY_2 + RESET_DELAY_3 + RESET_DELAY_4;           -- Full reset delay after the power up reset

    signal CurrentState     : State_t   := Reset;

    signal Data_Int         : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

begin

    process(Clock)
        -- Millisecond counter for state machine timing
        variable usCounter  : INTEGER := 0;
    begin
        if(ResetN = '0') then
            usCounter := 0;
            Ready <= '0';
            LCD_E <= '0';
            LCD_RS <= '0';
            LCD_RW <= '0';
            LCD_Data <= (others => '0');
            Data_Int <= (others => '0');
            CurrentState <= Reset;
            if(ResetN = '0') then
        elsif(rising_edge(Clock)) then
            case CurrentState is

                -- The entry point for the state machine.
                when Reset =>
                    usCounter := usCounter + 1;

                    if(usCounter < (RESET_DELAY_1 * CLOCK_FREQ)) then
                        CurrentState <= Reset;
                    else
                        usCounter := 0;
                        LCD_Data <= x"30";
                        CurrentState <= Initialize;
                    end if;

                -- Initialize the display controller with a default configuration.
                when Initialize =>
                    usCounter := usCounter + 1;

                    -- Send three times 0x30 to put the LCD into 8-bit mode
                    if(usCounter < (RESET_DELAY_2 * CLOCK_FREQ)) then
                        LCD_E <= '1';
                    elsif(usCounter < ((RESET_DELAY_2 + 10) * CLOCK_FREQ)) then
                        LCD_E <= '0';
                    elsif(usCounter < ((RESET_DELAY_2 + RESET_DELAY_3 + 10) * CLOCK_FREQ)) then
                        LCD_E <= '1';
                    elsif(usCounter < ((RESET_DELAY_2 + RESET_DELAY_3 + 20) * CLOCK_FREQ)) then
                        LCD_E <= '0';         
                    elsif(usCounter < ((RESET_DELAY_2 + RESET_DELAY_3 + RESET_DELAY_4 + 20) * CLOCK_FREQ)) then
                        LCD_E <= '1';
                    elsif(usCounter < ((RESET_DELAY_3 + RESET_DELAY_3 + RESET_DELAY_4 + 30) * CLOCK_FREQ)) then
                        LCD_E <= '0';

                    -- Send the display configuration
                    elsif(usCounter < ((RESET_DELAY + 40) * CLOCK_FREQ)) then
                        LCD_E <= '1';
                        LCD_Data <= Configs(CONFIG, 0);
                    elsif(usCounter < ((RESET_DELAY + 50) * CLOCK_FREQ)) then
                        LCD_E <= '0';
                    elsif(usCounter < ((RESET_DELAY + 60) * CLOCK_FREQ)) then
                        LCD_E <= '1';
                        LCD_Data <= Configs(CONFIG, 1);
                    elsif(usCounter < ((RESET_DELAY + 70) * CLOCK_FREQ)) then
                        LCD_E <= '0';
                    elsif(usCounter < ((RESET_DELAY + 80) * CLOCK_FREQ)) then
                        LCD_E <= '1';
                        LCD_Data <= Configs(CONFIG, 2);
                    elsif(usCounter < ((RESET_DELAY + 90) * CLOCK_FREQ)) then
                        LCD_E <= '0';
                    elsif(usCounter < ((RESET_DELAY + 100) * CLOCK_FREQ)) then
                        LCD_E <= '1';
                        LCD_Data <= Configs(CONFIG, 3);
                    elsif(usCounter < ((RESET_DELAY + 110) * CLOCK_FREQ)) then
                        LCD_E <= '0';
                    elsif(usCounter < ((RESET_DELAY + 120) * CLOCK_FREQ)) then
                        LCD_E <= '1';
                        LCD_Data <= Configs(CONFIG, 4);
                    elsif(usCounter < ((RESET_DELAY + 130) * CLOCK_FREQ)) then
                        LCD_E <= '0';
                    elsif(usCounter < ((RESET_DELAY + 140) * CLOCK_FREQ)) then
                        LCD_E <= '1';
                        LCD_Data <= Configs(CONFIG, 5);
                    elsif(usCounter < ((RESET_DELAY + 150) * CLOCK_FREQ)) then
                        LCD_E <= '0';

                    -- Initialization complete. Wait for the display to become ready.
                    else
                        usCounter := 0;
                        CurrentState <= WaitBusy;
                    end if;

                -- Read the BUSY-Flag from the display controller and check 
                -- if the controller is ready.
                when WaitBusy =>
                    usCounter := usCounter + 1;

                    if(usCounter < (10 * CLOCK_FREQ)) then
                        LCD_RS <= '0';
                        LCD_RW <= '1';
                        LCD_E <= '1';
                        LCD_Data <= (others => 'Z');
                    elsif(usCounter < (20 * CLOCK_FREQ)) then
                        LCD_E <= '0';
                    else
                        usCounter := 0;

                        -- Check if the BUSY-Flag is set
                        if(LCD_Data(7) = '1') then
                            Ready <= '0';
                            CurrentState <= WaitBusy;
                        else
                            Ready <= '1';
                            CurrentState <= Idle;
                        end if;
                    end if;

                -- Wait for a new data transmission.
                when Idle =>
                    if(Valid = '1') then
                        Ready <= '0';
                        Data_Int <= Data;
                        if(SendCommand = '1') then
                            LCD_RS <= '0';
                        else
                            LCD_RS <= '1';
                        end if;

                        CurrentState <= Transmit;
                    else
                        Ready <= '1';
                        CurrentState <= Idle;
                    end if;

                -- Write the data into the display controller.
                when Transmit =>
                    usCounter := usCounter + 1;

                    if(usCounter < (10 * CLOCK_FREQ)) then
                        LCD_RW <= '0';
                        LCD_E <= '1';
                        LCD_Data <= Data_Int;
                    elsif(usCounter < (20 * CLOCK_FREQ)) then
                        LCD_E <= '0';
                    else
                        usCounter := 0;
                        CurrentState <= WaitBusy;
                    end if;

            end case;
        end if;
    end process;
end LCD_Controller_Arch;