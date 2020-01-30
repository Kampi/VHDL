----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         28.01.2020 19:54:00
-- Design Name: 
-- Module Name:         I2S_Transmitter_TB - I2S_Transmitter_TB_Arch
-- Project Name:    
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         Testbench for the I2S transmitter.
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

entity I2S_Transmitter_TB is
end I2S_Transmitter_TB;

architecture I2S_Transmitter_TB_Arch of I2S_Transmitter_TB is

    -- 8.192 MHz Clock
    constant CLOCKPERIODE   : TIME := 12.2 ns;

    -- Packet size
    constant WIDTH          : INTEGER := 16;

    signal SimulationClock  : STD_LOGIC := '0';
    signal SimulationResetN : STD_LOGIC := '0';

    signal Ready            : STD_LOGIC;
    signal Valid            : STD_LOGIC := '0';
    signal Data             : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0)  := (others => '0');

    -- I2S bus
    signal LRCLK            : STD_LOGIC;
    signal SCLK             : STD_LOGIC;
    signal SD               : STD_LOGIC;

    component I2S_Transmitter is
        Generic ( WIDTH : INTEGER := 16
                  );
        Port (  Clock   : in STD_LOGIC;
                ResetN  : in STD_LOGIC;
                
                -- Communication bus
                Ready   : out STD_LOGIC;
                Valid   : in STD_LOGIC;
                Data    : in STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);
    
                -- I2S interface
                LRCLK   : out STD_LOGIC;
                SCLK    : out STD_LOGIC;
                SD      : out STD_LOGIC
                );
    end component;
    
begin

    UUT: I2S_Transmitter generic map( WIDTH => WIDTH
                                      )
                         port map(  Clock => SimulationClock,
                                    ResetN => SimulationResetN,
                                    Ready => Ready,
                                    Valid => Valid,
                                    Data => Data,
                                    LRCLK => LRCLK,
                                    SCLK => SCLK,
                                    SD => SD
                                    );

    -- Clock generation
    process begin
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '1';
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '0';
    end process;

    -- Stimulus
    process begin
        wait for 10 us;
        SimulationResetN <= '1';
        wait;

    end process;

end I2S_Transmitter_TB_Arch;