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
--                      https://www.kampis-elektroecke.de/fpga/i2s/
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
    Generic (   MULT          : INTEGER := 8;                               -- Integer multiplier between SCLK and MCLK (must be 4 or higher)
                WIDTH         : INTEGER := 16                               -- Data width per channel
                );
    Port (  ACLK     : in STD_LOGIC;                                        -- AXI-Stream interface clock
            ARESETn  : in STD_LOGIC;                                        -- Reset (active low)

            -- I2S interface
            MCLK     : in STD_LOGIC;                                        -- Master audio clock. Must be an integer ration of the L/R clock signal
            LRCLK    : out STD_LOGIC;                                       -- I2S L/R clock
            SCLK     : out STD_LOGIC;                                       -- I2S clock signal
            SD       : out STD_LOGIC                                        -- I2S data signal
            );
end I2S;

architecture I2S_Arch of I2S is

    type FIFO_State_t is (Reset, WaitForReady, Increase);

    signal CurrentState : FIFO_State_t  := Reset;

    signal FIFO         : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0) := (others => '0');

    signal ROM_Data     : STD_LOGIC_VECTOR((WIDTH - 1) downto 0) := (others => '0');
    signal ROM_Address  : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');

    signal Valid        : STD_LOGIC := '0';
    signal Ready        : STD_LOGIC;

    signal Counter      : INTEGER := 0;

    component I2S_Transmitter is
        Generic (   MULT    : INTEGER := 4;
                    WIDTH   : INTEGER := 16
                  );
        Port (  MCLK    : in STD_LOGIC;
                ResetN  : in STD_LOGIC;
                Ready   : out STD_LOGIC;
                Valid   : in STD_LOGIC;
                Data    : in STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);
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

    Transmitter : I2S_Transmitter generic map(  MULT => MULT,
                                                WIDTH => WIDTH
                                                )
                                  port map(     MCLK => MCLK,
                                                ResetN => ARESETn,
                                                Valid => Valid,
                                                Ready => Ready,
                                                Data => FIFO,
                                                LRCLK => LRCLK,
                                                SCLK => SCLK,
                                                SD => SD
                                                );

    ROM : SineROM port map (Clock => ACLK,
                            Address => ROM_Address,
                            DataOut => ROM_Data
                            );

    process(ACLK, ARESETn)
    begin
        if(ARESETn = '0') then
            Valid <= '0';
            Counter <= 0;
            CurrentState <= Reset;
        else
            if(rising_edge(ACLK)) then
                case CurrentState is
                    when Reset =>
                        CurrentState <= WaitForReady;

                    when WaitForReady =>
                        if(Ready = '1') then
                            Valid <= '1';
                            if(Counter < 99) then
                                Counter <= Counter + 1;
                            else
                                Counter <= 0;
                            end if;
                            
                            ROM_Address <= STD_LOGIC_VECTOR(to_unsigned(Counter, ROM_Address'length));

                            FIFO <= ROM_Data & x"0000";
                            CurrentState <= Increase;
                        else
                            CurrentState <= WaitForReady;
                        end if;

                    when Increase =>
                        if(Ready = '0') then
                            Valid <= '0';
                            CurrentState <= WaitForReady;
                        else
                            CurrentState <= Increase;
                        end if;

                end case;
            end if;
        end if;
    end process;
end I2S_Arch;