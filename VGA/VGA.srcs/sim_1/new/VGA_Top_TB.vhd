----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         24.03.2015 08:43:55
-- Design Name: 
-- Module Name:         VGA_Top_TB - VGA_Top_TB_Arch
-- Project Name:        VGA controller testbench for the VHDL VGA controller tutorial from
--                      https://www.kampis-elektroecke.de/fpga/vga-im-fpga-der-vga-controller/
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         Testbench for VGA-Controller
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

entity VGA_Top_TB is
end VGA_Top_TB;

architecture VGA_Top_TB_Arch of VGA_Top_TB is

    signal Clock_In :   std_logic := '0';
    signal Mode     :   std_logic := '1';
    signal Read_Write   :   std_logic := '0';    
    signal HSync    :   std_logic;
    signal VSync    :   std_logic;
    signal Color    :   std_logic_vector(15 downto 0);
    signal Display_Data : std_logic_vector(23 downto 0) := x"0000FF";
    signal Display_Addr : unsigned(12 downto 0) := "0000000000001";
    signal Reset    :   std_logic := '1';

    component VGA is
        Generic (
                Color_Width         : integer := 16;
                ROM_Address_Width   : integer := 11;
                ROM_Data_Width      : integer := 8;
                Char_Size           : integer := 8;
                Max_Char_x          : integer := 80;
                Max_Char_y          : integer := 60
                );
        Port (  Clock_VGA   : in STD_LOGIC;
                Reset       : in STD_LOGIC;
                Mode        : in STD_LOGIC;
                Read_Write  : in STD_LOGIC; 
                Display_Data: in STD_LOGIC_VECTOR((Color_Width + Char_Size - 1) downto 0);
                Display_Addr: in UNSIGNED(12 downto 0);                 
                HSync       : out STD_LOGIC;
                VSync       : out STD_LOGIC;
                RGB         : out STD_LOGIC_VECTOR((Color_Width - 1) downto 0) 
                );
    end component VGA;

begin

    -- 25MHz Clock
    Clock_In <= not Clock_In after 20 ns;

    VGA_Ctrl    : VGA port map (Clock_In, Reset, Mode, Read_Write, Display_Data, Display_Addr, HSync, VSync, Color);

end VGA_Top_TB_Arch;
