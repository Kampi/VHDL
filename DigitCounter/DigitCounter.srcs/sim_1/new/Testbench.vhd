----------------------------------------------------------------------------------
-- Company:             www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         28.07.2019 13:56:57
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
--  Revision 0.01 - File Created
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

    constant ClockPeriod    : TIME := 200 ns;

    signal SimulationClock  : STD_LOGIC := '0';
    signal SimulationResetn : STD_LOGIC := '0';
    
    signal Direction        : STD_LOGIC := '0';

    signal Out1 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal Out2 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal Out3 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    
    component DigitCounter is
        Port ( Clock        : in STD_LOGIC;
               Resetn       : in STD_LOGIC;
               Direction    : in STD_LOGIC;
               Out1         : out STD_LOGIC_VECTOR(3 downto 0);
               Out2         : out STD_LOGIC_VECTOR(3 downto 0);
               Out3         : out STD_LOGIC_VECTOR(3 downto 0));
    end component;

begin

    -- Clock generation
    process begin
        wait for (ClockPeriod / 2);
        SimulationClock <= '1';
        wait for (ClockPeriod / 2);
        SimulationClock <= '0';
    end process;

    UUT : component DigitCounter port map ( Clock => SimulationClock,
                                            Resetn => SimulationResetn,
                                            Direction => Direction,
                                            Out1 => Out1,
                                            Out2 => Out2,
                                            Out3 => Out3
                                            );

    -- Stimulus
    process begin
        wait for 10 ns;
        SimulationResetn <= '1';
    end process;

end Testbench_Arch;