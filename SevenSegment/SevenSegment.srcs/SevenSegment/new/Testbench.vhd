----------------------------------------------------------------------------------
-- Company:             www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         15.01.2019 16:35:35
-- Design Name: 
-- Module Name:         Testbench - Testbench_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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

entity Testbench is
--  Port ( );
end Testbench;

architecture Testbench_Arch of Testbench is

    -- 125 MHz Clock
    constant CLOCKPERIODE : TIME := 8 ns;

    signal SimulationClock  : STD_LOGIC := '0';
    signal SimulationResetN : STD_LOGIC := '1';
    
    signal Kathode      : STD_LOGIC := '0';
    signal Anode        : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
    
    component Top is
        Port (  Clock    : in STD_LOGIC;
                ResetN   : in STD_LOGIC;
                Kathode  : out STD_LOGIC;
                Anode    : out STD_LOGIC_VECTOR (6 downto 0)
                );
    end component;

begin

    UUT : component Top port map ( Clock => SimulationClock,
                                   ResetN => SimulationResetN,
                                   Anode => Anode,
                                   Kathode => Kathode
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
        wait for 100 us;
        SimulationResetN <= '0';
        wait for 100 us;
        SimulationResetN <= '1';
    end process;

end Testbench_Arch;