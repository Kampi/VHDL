----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert          
-- 
-- Create Date:         28.01.2020 19:54:00
-- Design Name: 
-- Module Name:         I2S_Transmitter - I2S_Transmitter_Arch
-- Project Name: 
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         I2S transmitter protocol module.
-- 
-- Dependencies: 
-- 
-- Revision:
--  Revision            0.01 - File Created
--
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

entity I2S_Transmitter is
    Generic ( WIDTH : INTEGER := 16                                            -- Data width per channel
              );
    Port (  Clock   : in STD_LOGIC;                                            -- Input clock
            ResetN  : in STD_LOGIC;                                            -- Reset (active low)
            
            -- Communication bus
            Ready   : out STD_LOGIC;                                            -- Output to signal that the display controller is ready.
            Valid   : in STD_LOGIC;                                             -- Input to signal valid data.
            Data    : in STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);         -- Input data for both channels

            -- I2S interface
            LRCLK   : out STD_LOGIC;                                           -- L/R clock output signal
            SCLK    : out STD_LOGIC;                                           -- I2S output clock signal
            SD      : out STD_LOGIC                                            -- I2S output data
            );
end I2S_Transmitter;

architecture I2S_Transmitter_Arch of I2S_Transmitter is

    type State_t is (Reset, Idle, Transmit);

    signal Data_Int         : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0) := (others => '0');
    
    signal CurrentState     : State_t   := Reset; 

begin

    process(Clock)
        variable BitCounter : INTEGER := 0;
    begin
        if(rising_edge(Clock)) then
            if(ResetN = '0') then
                BitCounter := 0;
                Data_Int <= (others => '0');
                CurrentState <= Reset;
            else
                case CurrentState is

                    when Reset =>
                        CurrentState <= Idle;

                    when Idle =>
                        if(Valid = '1') then
                            BitCounter := 0;
                            Ready <= '0';
                            Data_Int <= Data;

                            CurrentState <= Transmit;
                        else
                            Ready <= '1';
                        end if;

                    when Transmit =>
                        if(BitCounter < ((2 * WIDTH) - 1)) then
                            BitCounter := BitCounter + 1;
                        else
                            CurrentState <= Idle;
                        end if;

                        -- L/R logic
                        if(BitCounter < WIDTH) then
                            LRCLK <= '0';
                        else
                            LRCLK <= '1';
                        end if;

                        -- Handle the shift register
                        Data_Int <= Data_Int(((2 * WIDTH) - 2) downto 0) & "0";

                end case;
            end if;
        end if;
    end process;

    SD <= Data_Int((2 * WIDTH) - 1);
end I2S_Transmitter_Arch;