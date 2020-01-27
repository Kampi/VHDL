----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:    18:13:51 12/12/2017 
-- Design Name: 
-- Module Name:    Calc_Carry - Calc_Carry_Arch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- 		0.01 - File Created
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

entity Calc_Carry is
    Port ( C_In : in  STD_LOGIC;
           G : in  STD_LOGIC;
           P : in  STD_LOGIC;
           C_Out : out  STD_LOGIC);
end Calc_Carry;

architecture Calc_Carry_Arch of Calc_Carry is

begin

	C_Out <= G or (P and C_In) after 240 ps;

end Calc_Carry_Arch;

