----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         16.07.2020 12:45:22
-- Design Name: 
-- Module Name:         Top_TB - Top_TB_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:         Testbench for the SPI slave implementation.
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

entity Top_TB is
--  Port ( );
end Top_TB;

architecture Top_TB_Arch of Top_TB is

    -- 1 MHz Clock
    constant CLOCKPERIODE   : TIME := 8 ns;

    signal SimulationClock  : STD_LOGIC     := '0';
    signal nSimulationReset : STD_LOGIC     := '1';

    -- SPI signals
    signal MOSI             : STD_LOGIC     := '0';
    signal MISO             : STD_LOGIC;
    signal SCLK             : STD_LOGIC     := '0';
    signal nSS              : STD_LOGIC     := '1';

    component Top is
    Port (  Clock   : in STD_LOGIC;
            nReset  : in STD_LOGIC;
            SCLK    : in STD_LOGIC;
            nSS     : in STD_LOGIC;
            MOSI    : in STD_LOGIC;
            MISO    : out STD_LOGIC
            );
    end component;

begin

    -- Clock generation
    process
    begin
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '1';
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '0';
    end process;

    DUT : Top port map (Clock => SimulationClock,
                        nReset => nSimulationReset,
                        SCLK => SCLK,
                        nSS => nSS,
                        MOSI => MOSI,
                        MISO => MISO
                        );

    Stimulus : process
    begin

        wait for 1 us;

        nSS <= '0';
        for I in 0 to 7 loop
            wait for 500 ns;
            SCLK <= '1';
            wait for 500 ns;
            SCLK <= '0';
        end loop;
        nSS <= '1';

        wait for 1 us;

    end process;
end Top_TB_Arch;