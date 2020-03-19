----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         28.01.2020 19:54:00
-- Design Name: 
-- Module Name:         I2S - I2S_Arch
-- Project Name: 
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         I2S top level module from
--                      https://www.kampis-elektroecke.de/fpga/i2s/design-des-i2s-sender/
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2S is
    Generic (   RATIO   : INTEGER := 8;                                     -- MCLK / SCLK ratio as integer value
                WIDTH   : INTEGER := 16                                     -- Data width per channel
                );
    Port (  MCLK     : in STD_LOGIC;                                        -- Interface clock
            nReset   : in STD_LOGIC;                                        -- Interface reset (active low)

            -- I2S interface
            LRCLK    : out STD_LOGIC;                                       -- I2S L/R clock
            SCLK     : out STD_LOGIC;                                       -- I2S clock signal
            SD       : out STD_LOGIC                                        -- I2S data signal
            );
end I2S;

architecture I2S_Arch of I2S is

    type State_t is (State_Reset, State_WaitForReady, State_IncreaseAddress, State_WaitForStart);

    signal CurrentState : State_t                                           := State_Reset;

    signal Tx           : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0)      := (others => '0');

    signal ROM_Data     : STD_LOGIC_VECTOR((WIDTH - 1) downto 0)            := (others => '0');
    signal ROM_Address  : STD_LOGIC_VECTOR(6 downto 0)                      := (others => '0');

    signal Ready        : STD_LOGIC;
    signal SCLK_Int     : STD_LOGIC                                         := '0';

    component I2S_Transmitter is
        Generic (   WIDTH   : INTEGER := 16
                    );
        Port (  Clock   : in STD_LOGIC;
                nReset  : in STD_LOGIC;
                Ready   : out STD_LOGIC;
                Tx      : in STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);
                LRCLK   : out STD_LOGIC;
                SCLK    : out STD_LOGIC;
                SD      : out STD_LOGIC
                );
    end component;

    component SineROM is
        Port (  Address : in STD_LOGIC_VECTOR(6 downto 0);
                Clock   : in STD_LOGIC;
                DataOut : out STD_LOGIC_VECTOR(15 downto 0)
                );
    end component SineROM;

begin

    Transmitter : I2S_Transmitter generic map(  WIDTH => WIDTH
                                                )
                                  port map(     Clock => SCLK_Int,
                                                nReset => nReset,
                                                Ready => Ready,
                                                Tx => Tx,
                                                LRCLK => LRCLK,
                                                SCLK => SCLK,
                                                SD => SD
                                                );

    ROM : SineROM port map (Clock => MCLK,
                            Address => ROM_Address,
                            DataOut => ROM_Data
                            );

    process
        variable Counter    : INTEGER := 0;
    begin
        wait until rising_edge(MCLK);
        if(Counter < ((RATIO / 2) - 1)) then
            Counter := Counter + 1;
        else
            Counter := 0;

            SCLK_Int <= not SCLK_Int;
        end if;

        if(nReset = '0') then
            Counter := 0;

            SCLK_Int <= '0';
        end if;
    end process;

    process
        variable WordCounter    : INTEGER := 0;
    begin
        wait until rising_edge(MCLK);
        case CurrentState is
            when State_Reset =>
                WordCounter := 0;

                CurrentState <= State_WaitForReady;

            when State_WaitForReady =>
                if(Ready = '1') then
                    CurrentState <= State_WaitForStart;
                else
                    CurrentState <= State_WaitForReady;
                end if;

            when State_WaitForStart =>
                ROM_Address <= STD_LOGIC_VECTOR(to_unsigned(WordCounter, ROM_Address'length));
                Tx <= ROM_Data & x"0000";

                if(Ready = '0') then
                    CurrentState <= State_IncreaseAddress;
                else
                    CurrentState <= State_WaitForStart;
                end if;

            when State_IncreaseAddress =>
                if(WordCounter < 99) then
                    WordCounter := WordCounter + 1;
                else
                    WordCounter := 0;
                end if;

                CurrentState <= State_WaitForReady;

        end case;

        if(nReset = '0') then
            CurrentState <= State_Reset;
        end if;
    end process;
end I2S_Arch;