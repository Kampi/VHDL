----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:    18:18:21 12/12/2017 
-- Design Name: 
-- Module Name:    CarryLookAhead - CarryLookAhead_Arch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- 		0.01 - File Created
--
-- Additional Comments: Siehe ab S. 393 im Skript
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

entity CarryLookAhead is
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
end CarryLookAhead;

architecture CarryLookAhead_Arch of CarryLookAhead is

	component Fulladder is
		 Port ( A : in STD_LOGIC;
				  B : in STD_LOGIC;
				  C_In : in STD_LOGIC;
				  S : out STD_LOGIC;
				  P : out STD_LOGIC;
				  G : out STD_LOGIC
				  );
	end component;
	
	component Calc_Carry is
		 Port ( C_In : in STD_LOGIC;
				  G : in STD_LOGIC;
				  P : in STD_LOGIC;
				  C_Out : out STD_LOGIC);
	end component;
	
	component Look_Ahead is
		 Port ( G_Left : in STD_LOGIC;
				  P_Left : in STD_LOGIC;
				  G_Right : in STD_LOGIC;
				  P_Right : in STD_LOGIC;
				  G : out STD_LOGIC;
				  P : out STD_LOGIC);
	end component;
	
	component CarryLookAhead is
			Generic (WIDTH : INTEGER := 32
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
		
	signal Internal_Carry : STD_LOGIC := '0';
	signal G_Left : STD_LOGIC := '0';
	signal G_Right : STD_LOGIC := '0';
	signal G_Out : STD_LOGIC := '0';
	signal P_Out : STD_LOGIC := '0';
	signal P_Left : STD_LOGIC := '0';
	signal P_Right : STD_LOGIC := '0';
	
begin

	Single_Adder : if(WIDTH = 1) generate
	
		Fulladder_Inst : Fulladder port map (	A => A(0),
															B => B(0),
															S => S(0),
															C_In => C_In,
															P => P_Out,
															G => G_Out
															);
														
		C_Out <= G_Out;

	end generate;
	
	Multi_Adder : if(WIDTH > 1) generate
	
		Adder_Left_Inst : CarryLookAhead generic map ( WIDTH => (WIDTH / 2) )
													port map (	A => A((WIDTH - 1) downto (WIDTH / 2)),
																	B => B((WIDTH - 1) downto (WIDTH / 2)),
																	S => S((WIDTH - 1) downto (WIDTH / 2)),
																	C_In => Internal_Carry,
																	C_Out => open,
																	P => P_Left,
																	G => G_Left
																	);

		Adder_Right_Inst : CarryLookAhead generic map ( WIDTH => (WIDTH / 2) )
													port map (	A => A(((WIDTH / 2) - 1) downto 0),
																	B => B(((WIDTH / 2) - 1) downto 0),
																	S => S(((WIDTH / 2) - 1) downto 0),
																	C_In => C_In,
																	C_Out => open,
																	P => P_Right,
																	G => G_Right
																	);
	
		Look_Ahead_Inst : Look_Ahead port map (	G_Left => G_Left,
																P_Left => P_Left,
																G_Right => G_Right,
																P_Right => P_Right,
																G => G_Out,
																P => P_Out
																);

		Calc_Carry_Int_Inst : Calc_Carry port map ( 	C_In => C_In,
																	C_Out => Internal_Carry,
																	G => G_Right,
																	P => P_Right
																	);
	
		Calc_Carry_Final_Inst : Calc_Carry port map (C_In => C_In,
																	C_Out => C_Out,
																	G => G_Out,
																	P => P_Out
																	);

	end generate;	

	G <= G_Out;
	P <= P_Out;
	
end CarryLookAhead_Arch;