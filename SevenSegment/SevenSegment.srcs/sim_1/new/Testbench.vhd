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
-- Revision             0.01 - File Created
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

    -- 5 MHz Clock
    constant ClockPeriod : TIME := 200 ns;

    signal Clock : STD_LOGIC := '0';
    signal Reset : STD_LOGIC := '1';
    
    signal Kathode      : STD_LOGIC := '0';
    signal Anode        : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
    
    component SevenSegment is
        Port ( Clock    : in STD_LOGIC;
               Reset    : in STD_LOGIC;
               Data     : in STD_LOGIC_VECTOR(7 downto 0);
               Anode    : out STD_LOGIC_VECTOR(6 downto 0);
               Kathode  : out STD_LOGIC
               );
    end component;

begin

    UUT : component SevenSegment port map ( Clock => Clock,
                                             Reset => Reset,
                                             Data => "00010001",
                                             Anode => Anode,
                                             Kathode => Kathode
                                             );    

    -- Clock generation
    process begin
        wait for (ClockPeriod / 2);
        Clock <= '1';
        wait for (ClockPeriod / 2);
        Clock <= '0';
    end process;

	-- Stimulus
    process begin
        wait for 100 us;
        Reset <= '0';
    end process;

end Testbench_Arch;