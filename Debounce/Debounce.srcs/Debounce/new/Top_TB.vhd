----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert  
-- 
-- Create Date:         17.06.2020 15:05:56
-- Design Name: 
-- Module Name:         Top_TB - Top_TB_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions:       Vivado 2020.1
-- Description:         Testbench for the MAX6817 debounce design.
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
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

    signal Bounce           : STD_LOGIC := '0';
    signal Debounce         : STD_LOGIC := '0';

    component Top
        Port ( Clock        : in STD_LOGIC;
               Bounce_In    : in STD_LOGIC;
               Debounce_Out : out STD_LOGIC
               );
    end component;

begin

    UUT: Top port map(  Clock => SimulationClock, 
                        Bounce_In => Bounce,
                        Debounce_Out => Debounce
                        );

    -- Clock generation
    process begin
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '1';
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '0';
    end process;

end Top_TB_Arch;