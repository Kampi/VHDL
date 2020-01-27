----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:    18:33:23 12/05/2017 
-- Design Name: 
-- Module Name:    FlipFlop - FlipFlop_Arch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- 		 0.01 - File Created
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FlipFlop is
	Port	(	Clock : in STD_LOGIC;
				D: in STD_LOGIC;
				Q : out STD_LOGIC
			);
end FlipFlop;

architecture FlipFlop_Arch of FlipFlop is

begin

	process(Clock, D)
	begin
		if(rising_edge(Clock)) then
			Q <= D;
		end if;
	end process;

end FlipFlop_Arch;

