----------------------------------------------------------------------------------
-- Company:             www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert  
-- 
-- Create Date:         18.07.2019 08:26:24
-- Design Name: 
-- Module Name:         ROM - ROM_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:         Simple ROM implementation with preload sine values.
-- 
-- Dependencies: 
-- 
-- Revision:
--      Revision 0.01 - File Created
--
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port (  Clock   : in STD_LOGIC;
            Address : in STD_LOGIC_VECTOR(7 downto 0);
            DataOut : out std_logic_vector(15 downto 0)
            );
end ROM;

architecture ROM_Arch of ROM is

    type ROM_t is array (0 to 99) of std_logic_vector((DataOut'length - 1) downto 0);
    
    signal ROM : ROM_t := ( x"8000",
                            x"8809",
                            x"900A",
                            x"97FC",
                            x"9FD5",
                            x"A78D",
                            x"AF1E",
                            x"B67F",
                            x"BDAA",
                            x"C495",
                            x"CB3C",
                            x"D197",
                            x"D79F",
                            x"DD4E",
                            x"E2A0",
                            x"E78D",
                            x"EC12",
                            x"F02A",
                            x"F3D1",
                            x"F702",
                            x"F9BC",
                            x"FBFA",
                            x"FDBB",
                            x"FEFD",
                            x"FFBF",
                            x"FFFF",
                            x"FFBF",
                            x"FEFD",
                            x"FDBB",
                            x"FBFA",
                            x"F9BC",
                            x"F702",
                            x"F3D1",
                            x"F02A",
                            x"EC12",
                            x"E78D",
                            x"E2A0",
                            x"DD4E",
                            x"D79F",
                            x"D197",
                            x"CB3C",
                            x"C495",
                            x"BDAA",
                            x"B67F",
                            x"AF1E",
                            x"A78D",
                            x"9FD5",
                            x"97FC",
                            x"900A",
                            x"8809",
                            x"8000",
                            x"77F6",
                            x"6FF5",
                            x"6803",
                            x"602A",
                            x"5872",
                            x"50E1",
                            x"4980",
                            x"4255",
                            x"3B6A",
                            x"34C3",
                            x"2E68",
                            x"2860",
                            x"22B1",
                            x"1D5F",
                            x"1872",
                            x"13ED",
                            x"0FD5",
                            x"0C2E",
                            x"08FD",
                            x"0643",
                            x"0405",
                            x"0244",
                            x"0102",
                            x"0040",
                            x"0000",
                            x"0040",
                            x"0102",
                            x"0244",
                            x"0405",
                            x"0643",
                            x"08FD",
                            x"0C2E",
                            x"0FD5",
                            x"13ED",
                            x"1872",
                            x"1D5F",
                            x"22B1",
                            x"2860",
                            x"2E68",
                            x"34C3",
                            x"3B6A",
                            x"4255",
                            x"4980",
                            x"50E1",
                            x"5872",
                            x"602A",
                            x"6803",
                            x"6FF5",
                            x"77F6"
        );
begin
    
	process(Clock)
	begin
		if(rising_edge(Clock)) then
			DataOut <= ROM(to_integer(unsigned(Address)));
		end if;
	end process;

end ROM_Arch;