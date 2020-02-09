----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         07.02.2020 09:37:43
-- Design Name: 
-- Module Name:         SineROM - SineROM_Arch
-- Project Name: 
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         ROM with sine wave test pattern.
-- 
-- Dependencies: 
-- 
-- Revision:
--  Revision            0.01 - File Created
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

entity SineROM is
    Port (  Clock   : in STD_LOGIC;
            Address : in STD_LOGIC_VECTOR(6 downto 0);
            DataOut : out STD_LOGIC_VECTOR(15 downto 0)
            );
end SineROM;

architecture SineROM_Arch of SineROM is

	type Memory_t is array(99 downto 0) of STD_LOGIC_VECTOR((DataOut'length - 1) downto 0);
	constant ROM : Memory_t := (
        x"0000",
        x"080A",
        x"100B",
        x"17FC",
        x"1FD5",
        x"278E",
        x"2F1F",
        x"3680",
        x"3DAA",
        x"4496",
        x"4B3D",
        x"5197",
        x"579F",
        x"5D4F",
        x"62A0",
        x"678E",
        x"6C13",
        x"702B",
        x"73D1",
        x"7703",
        x"79BC",
        x"7BFB",
        x"7DBC",
        x"7EFE",
        x"7FBF",
        x"7FFF",
        x"7FBF",
        x"7EFE",
        x"7DBC",
        x"7BFB",
        x"79BC",
        x"7703",
        x"73D1",
        x"702B",
        x"6C13",
        x"678E",
        x"62A0",
        x"5D4F",
        x"579F",
        x"5197",
        x"4B3D",
        x"4496",
        x"3DAA",
        x"3680",
        x"2F1F",
        x"278E",
        x"1FD5",
        x"17FC",
        x"100B",
        x"080A",
        x"0000",
        x"F7F6",
        x"EFF5",
        x"E804",
        x"E02B",
        x"D872",
        x"D0E1",
        x"C980",
        x"C256",
        x"BB6A",
        x"B4C3",
        x"AE69",
        x"A861",
        x"A2B1",
        x"9D60",
        x"9872",
        x"93ED",
        x"8FD5",
        x"8C2F",
        x"88FD",
        x"8644",
        x"8405",
        x"8244",
        x"8102",
        x"8041",
        x"8000",
        x"8041",
        x"8102",
        x"8244",
        x"8405",
        x"8644",
        x"88FD",
        x"8C2F",
        x"8FD5",
        x"93ED",
        x"9872",
        x"9D60",
        x"A2B1",
        x"A861",
        x"AE69",
        x"B4C3",
        x"BB6A",
        x"C256",
        x"C980",
        x"D0E1",
        x"D872",
        x"E02B",
        x"E804",
        x"EFF5",
        x"F7F6"
	);

begin

    process(Clock)
    begin
        if(rising_edge(Clock)) then
            DataOut <= ROM(to_integer(UNSIGNED(Address)));
        end if;
    end process;

end SineROM_Arch;