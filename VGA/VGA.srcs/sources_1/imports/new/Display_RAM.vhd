----------------------------------------------------------------------------------
-- Company:             www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         10.03.2015 09:26:02
-- Design Name: 
-- Module Name:         Display_RAM - Display_RAM_Arch
-- Project Name: 
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2014.4
-- Description:         Display-RAM for VGA-Core 
--                      (640x480, Charsize 8x8 -> 80x60 Chars per Screen)
--                      Each Character contains 24 Bit
--                      Bit 23  -   8 -> Color of each Character
--                      Bit 7   -   0 -> ASCII-Value of each Character      
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Display_RAM is
    Generic (
            Addr_Width : integer := 13;
            Data_Width : integer := 24
            );
    Port (  Clock       : in STD_LOGIC;
            Reset       : in STD_LOGIC;                                                         -- Reset für das Display-RAM
            Read_Write  : in STD_LOGIC;                                                         -- Schreib-/Leseumschaltung, 1 - Lesen, 0 - Schreiben
            Address     : in UNSIGNED((Addr_Width - 1) downto 0);                               -- Adresse der Zeichen auf dem Bildschirm
            Data_Out    : out STD_LOGIC_VECTOR((Data_Width - 1) downto 0);                      -- Aktuelles Zeichen auf dem Bildschirm
            Data_In     : in STD_LOGIC_VECTOR((Data_Width - 1) downto 0)                        -- Zeichen, welches auf dem Bildschirm ausgegeben werden soll
            );
end Display_RAM;

architecture Display_RAM_Arch of Display_RAM is

    type Display_RAM_Type is array (0 to (2**Address'length) - 1) of std_logic_vector(Data_In'range);
    signal Read_Address : unsigned(Address'range);
    signal RAM : Display_RAM_Type := (
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",    
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",    
    x"F80056",
    x"07E047",
    x"001F41",
    x"FFFF20",
    x"FFFF61",
    x"FFFF75",
    x"FFFF66",
    x"FFFF20",
    x"FFFF64",
    x"FFFF65",
    x"FFFF6D",
    x"FFFF20",
    x"FFFF5A",
    x"FFFF79",
    x"FFFF62",
    x"FFFF6F",
    x"FFFF21",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"FFFF76", 
    x"FFFF6F", 
    x"FFFF6E", 
    x"FFFF20", 
    x"FFFF44", 
    x"FFFF61", 
    x"FFFF6E", 
    x"FFFF69", 
    x"FFFF65", 
    x"FFFF6C", 
    x"FFFF20", 
    x"FFFF4B", 
    x"FFFF61", 
    x"FFFF6D", 
    x"FFFF70", 
    x"FFFF65", 
    x"FFFF72", 
    x"FFFF74", 
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"000000",
    x"F80032", 
    x"F80034", 
    x"F8002E", 
    x"F80030", 
    x"F80033", 
    x"F8002E", 
    x"F80032", 
    x"F80030", 
    x"F80031",
    x"F80035",     
    others=> "00000000"
    );

begin

    process(Clock)
    begin
        if(rising_edge(Clock)) then
            if(Read_Write = '0') then
                RAM(to_integer(Read_Address)) <= Data_In;
            end if;
    
            Read_Address <= Address;
        end if;
    end process;

    Data_Out <= RAM(to_integer(Read_Address));   

end Display_RAM_Arch;