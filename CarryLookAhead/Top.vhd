----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:    18:26:28 12/05/2017 
-- Design Name: 
-- Module Name:    Top - Top_Arch 
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

entity Top is
	Generic (	WIDTH : INTEGER := 4
				);
	Port ( 	CLK : in STD_LOGIC;
				A : in STD_LOGIC_VECTOR((WIDTH - 1) downto 0);
				B : in STD_LOGIC_VECTOR((WIDTH - 1) downto 0);
				S : out STD_LOGIC_VECTOR(WIDTH downto 0)
			);
end Top;

architecture Top_Arch of Top is

	component Adder_Sync is
		Generic (	WIDTH : INTEGER := 32
					);
		Port ( 	CLK : in STD_LOGIC;
					A : in STD_LOGIC_VECTOR((WIDTH - 1) downto 0);
					B : in STD_LOGIC_VECTOR((WIDTH - 1) downto 0);
					S : out STD_LOGIC_VECTOR(WIDTH downto 0)
				);
	end component;

begin

	Sync_1 : component Adder_Sync 
				generic map ( WIDTH => WIDTH )
				port map (	CLK => CLK,
								A => A,
								B => B,
								S => S					
								);

end Top_Arch;