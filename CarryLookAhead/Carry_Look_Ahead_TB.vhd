--------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
--
-- Create Date:   18:48:20 12/05/2017
-- Design Name:   
-- Module Name:   C:/Users/Kampi/Ripple_Carry/Carry_Look_Ahead_TB.vhd
-- Project Name:  Carry_Look_Ahead
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Top
-- 
-- Dependencies:
-- 
-- Revision:
-- 		 0.01 - File Created
--
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY Carry_Look_Ahead_TB IS
END Carry_Look_Ahead_TB;
 
ARCHITECTURE Carry_Look_Ahead_TB_Arch OF Carry_Look_Ahead_TB IS 
 
	constant WIDTH : INTEGER := 16;
 
	signal Clock : STD_LOGIC := '0';
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Top
	 GENERIC (	WIDTH : INTEGER
					);
	 PORT ( 	CLK : in STD_LOGIC;
				A : in STD_LOGIC_VECTOR((WIDTH - 1) downto 0);
				B : in STD_LOGIC_VECTOR((WIDTH - 1) downto 0);
				S : out STD_LOGIC_VECTOR(WIDTH downto 0)
			);
    END COMPONENT;

   --Inputs
   signal A : std_logic_vector((WIDTH - 1) downto 0) := (others => '0');
   signal B : std_logic_vector((WIDTH - 1) downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(WIDTH downto 0) := (others => '0');

	-- 50 MHz Clock
   constant Clock_Period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top GENERIC MAP ( WIDTH => WIDTH )
			PORT MAP (
			 CLK => Clock,
          A => A,
          B => B,
          S => S
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_Period / 2;
		Clock <= '1';
		wait for Clock_Period / 2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
	
		A <= std_logic_vector(to_unsigned(0, A'length));
		B <= std_logic_vector(to_unsigned(0, B'length));
		wait for 10 ns;
		A <= std_logic_vector(to_unsigned(1024, A'length));
		B <= std_logic_vector(to_unsigned(2048, B'length));
		wait for 100 us;

      wait;
   end process;
END;