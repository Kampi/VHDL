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
-- Description:         I2S transmitter module.
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
    Generic (   WIDTH   : INTEGER := 16                                         -- Data width per channel
                );
    Port (  MCLK    : in STD_LOGIC;                                             -- Master clock
            ResetN  : in STD_LOGIC;                                             -- Reset (active low)

            -- Communication bus
            Ready   : out STD_LOGIC;                                            -- Slave handshake to signal that the transmitter is ready
            Valid   : in STD_LOGIC;                                             -- Master handshake to signal valid data
            Data    : in STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);          -- Audio data for both channels (Left: Top half, Right: Bottom half)

            -- I2S interface
            LRCLK   : out STD_LOGIC;                                            -- L/R clock
            SCLK    : out STD_LOGIC;                                            -- I2S serial clock
            SD      : out STD_LOGIC                                             -- I2S serial data
            );
end I2S_Transmitter;

architecture I2S_Transmitter_Arch of I2S_Transmitter is

    type State_t is (Reset, Idle, Transmit);

    signal CurrentState     : State_t   := Reset;

    signal Data_Int         : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0) := (others => '0');

    signal SCLK_Int         : STD_LOGIC := '0';
    signal Enable           : STD_LOGIC := '0';

begin

    SCLK_Gen : process(MCLK)
        variable Counter    : INTEGER := 0;
    begin
        if(falling_edge(MCLK)) then
            if(ResetN = '0') then
                Counter := 0;
            else
                if(Counter < ((WIDTH / 4) - 1)) then
                    Counter := Counter + 1;
                else
                    SCLK_Int <= not SCLK_Int;
                    Counter := 0;
                end if;
            end if;
        end if;
    end process;

    I2S : process(SCLK_Int)
        variable BitCounter : INTEGER := 0;
    begin
        if(falling_edge(SCLK_Int)) then
            if(ResetN = '0') then
                CurrentState <= Reset;
            else
                case CurrentState is
                    when Reset =>
                        BitCounter := 0;

                        Enable <= '0';
                        Ready <= '0';
                        SD <= '0';
                        Data_Int <= (others => '0');

                        CurrentState <= Idle;

                    when Idle =>
                        BitCounter := 0;
                        Enable <= '1';
                        LRCLK <= '0';

                        if(Valid = '1') then
                            Ready <= '0';
                            Data_Int <= Data;

                            CurrentState <= Transmit;
                        else
                            Ready <= '1';

                            CurrentState <= Idle;
                        end if;

                    when Transmit =>
                        BitCounter := BitCounter + 1;

                        Data_Int <= Data_Int(((2 * WIDTH) - 2) downto 0) & "0";
                        SD <= Data_Int((2 * WIDTH) - 1);

                        if(BitCounter < WIDTH) then
                            LRCLK <= '0';
                        else
                            LRCLK <= '1';
                        end if;

                        if(BitCounter < ((2 * WIDTH) - 1)) then
                            CurrentState <= Transmit;
                        else
                            Ready <= '1';
                            CurrentState <= Idle;
                        end if;

                    end case;
                end if;
            end if;
    end process;

    SCLK <= SCLK_Int and Enable;

end I2S_Transmitter_Arch;