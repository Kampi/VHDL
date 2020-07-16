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
-- Description:         Testbench for the SPI slave implementation
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

    -- 1 kHz Clock
    constant CLOCKPERIODE : TIME := 1 ms;

    signal SimulationClock  : STD_LOGIC := '0';
    signal nSimulationReset : STD_LOGIC := '1';

begin

    -- Clock generation
    process begin
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '1';
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '0';
    end process;

end Top_TB_Arch;