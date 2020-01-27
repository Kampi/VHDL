----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:    18:15:55 12/12/2017 
-- Design Name: 
-- Module Name:    Look_Ahead - Look_Ahead_Arch 
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

entity Look_Ahead is
    Port ( G_Left : in  STD_LOGIC;
           P_Left : in  STD_LOGIC;
           G_Right : in  STD_LOGIC;
           P_Right : in  STD_LOGIC;
           G : out  STD_LOGIC;
           P : out  STD_LOGIC);
end Look_Ahead;

architecture Look_Ahead_Arch of Look_Ahead is

begin

	G <= G_Left or (P_Left and G_Right) after 240 ps;
	P <= P_Left and P_Right after 120 ps;

end Look_Ahead_Arch;

