----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         25.01.2020 00:37:54
-- Design Name: 
-- Module Name:         Top - Top_Arch
-- Project Name:        Design for the HD44780 LCD-Interface tutorial from
--                      https://www.kampis-elektroecke.de/fpga/hd44780-lcd-interface/
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is
    Port (  Clock   : in STD_LOGIC;
            ResetN  : in STD_LOGIC;

            -- Output the current state machine state
            LED     : out STD_LOGIC_VECTOR(3 downto 0);

            -- LCD bus
            LCD_RS  : out STD_LOGIC;
            LCD_E   : out STD_LOGIC;
            LCD_RW  : out STD_LOGIC;
            LCD_Data: inout STD_LOGIC_VECTOR(7 downto 0)
            ); 
end Top;

architecture Top_Arch of Top is

    -- Data type for LCD communication
    type LCD_Data_t is record
        Data        : STD_LOGIC_VECTOR(7 downto 0);
        IsCommand   : STD_LOGIC;
    end record;

    type RAM_t is array(0 to 13) of LCD_Data_t;
    type State_t is (Reset, WaitDisplay, Send, Finish);

    signal CurrentState     : State_t := Reset;

    -- Create a small RAM with some data for the LCD.
    signal RAM              : RAM_t := ((x"48", '0'), (x"65", '0'), (x"6C", '0'), (x"6C", '0'), (x"6F", '0'), 
                                        (x"2C", '0'), (x"20", '0'), (x"57", '0'), (x"6F", '0'), (x"72", '0'), 
                                        (x"6C", '0'), (x"64", '0'), (x"21", '0'), (x"02", '1'));

    signal Data             : STD_LOGIC_VECTOR(7 downto 0);
    signal Address          : UNSIGNED(6 downto 0) := "0000010";
    signal Ready            : STD_LOGIC;
    signal Valid            : STD_LOGIC := '0';
    signal SendCommand      : STD_LOGIC := '0';
    signal AddressSet       : STD_LOGIC := '0';

    component LCD_Controller is
        Generic (   CLOCK_FREQ  : INTEGER := 125
                    );
        Port (  Clock   : in STD_LOGIC;
                ResetN  : in STD_LOGIC;

                Data    : in STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

                Ready   : out STD_LOGIC;
                Valid   : in STD_LOGIC;

                SendCommand : in STD_LOGIC;

                LCD_RS  : out STD_LOGIC;
                LCD_E   : out STD_LOGIC;
                LCD_RW  : out STD_LOGIC;
                LCD_Data: inout STD_LOGIC_VECTOR(7 downto 0)
                );
    end component;

begin

    LCD : LCD_Controller generic map (  CLOCK_FREQ => 125
                                        )
                         port map(  Clock => Clock,
                                    ResetN => ResetN,
                                    Data => Data,
                                    Ready => Ready,
                                    Valid => Valid,
                                    SendCommand => SendCommand,
                                    LCD_RS => LCD_RS,
                                    LCD_E => LCD_E,
                                    LCD_RW => LCD_RW,
                                    LCD_Data => LCD_Data
                                    );

    process(Clock)
        variable Index : INTEGER := 0;
    begin
        if(ResetN = '0') then
            CurrentState <= Reset;
        elsif(rising_edge(Clock)) then
            case CurrentState is

                when Reset =>
                    Valid <= '0';
                    Data <= (others => '0');
                    CurrentState <= WaitDisplay;

                when WaitDisplay =>
                    Valid <= '0';

                    if(Ready = '1') then
                        if(AddressSet = '0') then
                            AddressSet <= '1';
                            SendCommand <= '1';
                            Data <= '1' & STD_LOGIC_VECTOR(Address);
                        else
                            SendCommand <= RAM(Index).IsCommand;
                            Data <= RAM(Index).Data;
                            Index := Index + 1;
                        end if;

                        Valid <= '1';
                        CurrentState <= Send;
                    else
                        CurrentState <= WaitDisplay;
                    end if;

                when Send =>
                    if(Ready <= '0') then
                        if(Index < RAM'length) then
                            CurrentState <= WaitDisplay;
                        else
                            CurrentState <= Finish;
                        end if;
                    else
                        CurrentState <= Send;
                    end if;

                when Finish =>
                    Valid <= '0';

                end case;
            end if;
        end if;
    end process;
    
    LED <= STD_LOGIC_VECTOR(to_unsigned(State_t'pos(CurrentState) + 1, 4));

end Top_Arch;