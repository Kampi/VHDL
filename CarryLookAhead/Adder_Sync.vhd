----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:32:01 12/05/2017 
-- Design Name: 
-- Module Name:    Adder_Sync - Adder_Sync_Arch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder_Sync is
	Generic (	WIDTH : INTEGER := 32
				);
	Port 	(	CLK : in STD_LOGIC;
				A : in STD_LOGIC_VECTOR((WIDTH - 1) downto 0);
				B : in STD_LOGIC_VECTOR((WIDTH - 1) downto 0);
				S : out STD_LOGIC_VECTOR(WIDTH downto 0)
				);
end Adder_Sync;

architecture Adder_Sync_Arch of Adder_Sync is

	signal P : STD_LOGIC := '0';
	signal G : STD_LOGIC := '0';

	signal A_Int : STD_LOGIC_VECTOR((WIDTH - 1) downto 0) := (others => '0');
	signal B_Int : STD_LOGIC_VECTOR((WIDTH - 1) downto 0) := (others => '0');
	signal S_Int : STD_LOGIC_VECTOR((WIDTH - 1) downto 0) := (others => '0');
	signal Carry_Int : STD_LOGIC := '0';
	
	component CarryLookAhead is
		Generic (	WIDTH : INTEGER := 32
						);
		Port ( 	A : in STD_LOGIC_VECTOR ((WIDTH - 1) downto 0);
					B : in STD_LOGIC_VECTOR ((WIDTH - 1) downto 0);
					C_In : in STD_LOGIC;
					S : out STD_LOGIC_VECTOR ((WIDTH - 1) downto 0);
					P : out STD_LOGIC;
					G : out STD_LOGIC;
					C_Out : out STD_LOGIC
					);
	end component;
	
	component FlipFlop is
		Port	(	Clock : in STD_LOGIC;
					D : in STD_LOGIC;
					Q : out STD_LOGIC
				);
	end component;
	
begin

	Buffer_FF : for FF in 0 to (WIDTH - 1) generate
		Input_FF_A : component FlipFlop
							port map ( 	D => A(FF),
											Clock => CLK,
											Q => A_Int(FF)
										);
										
		Input_FF_B : component FlipFlop
							port map ( 	D => B(FF),
											Clock => CLK,
											Q => B_Int(FF)
										);
										
		Output_FF_S : component FlipFlop
								port map ( 	D => S_Int(FF),
												Clock => CLK,
												Q => S(FF)
											);										
	end generate;

	Output_FF_Carry : component FlipFlop
							port map ( 	D => Carry_Int,
											Clock => CLK,
											Q => S(WIDTH)
										);

	Adder_1 : component CarryLookAhead 
				generic map ( WIDTH => WIDTH )
				port map (	A => A_Int,
								B => B_Int,
								S => S_Int,
								C_In => '0',
								C_Out => Carry_Int,
								P => P,
								G => G								
							);

end Adder_Sync_Arch;