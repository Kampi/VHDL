----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:     10.11.2017 21:53:41
-- Design Name: 
-- Module Name:     Fulladder - Fulladder_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Fulladder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_In : in STD_LOGIC;
           S : out STD_LOGIC;
           P : out STD_LOGIC;
			  G : out STD_LOGIC
			  );
end Fulladder;

architecture Fulladder_Arch of Fulladder is

begin

    S <= A xor B xor C_In after 240 ps;
	 P <= A or B after 120 ps;
	 G <= A and B after 120 ps;

end Fulladder_Arch;
