--Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
--Date        : Tue Mar 24 15:20:44 2015
--Host        : P-CZC4213R2K running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target Display_RAM_wrapper.bd
--Design      : Display_RAM_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Display_RAM_wrapper is
  port (
    Display_Addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    Display_Clock : in STD_LOGIC;
    Display_Data_In : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Display_Data_Out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Display_Read_Write : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Display_RAM_wrapper;

architecture STRUCTURE of Display_RAM_wrapper is
  component Display_RAM is
  port (
    Display_Read_Write : in STD_LOGIC_VECTOR ( 0 to 0 );
    Display_Data_Out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Display_Data_In : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Display_Clock : in STD_LOGIC;
    Display_Addr : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component Display_RAM;
begin
Display_RAM_i: component Display_RAM
    port map (
      Display_Addr(12 downto 0) => Display_Addr(12 downto 0),
      Display_Clock => Display_Clock,
      Display_Data_In(23 downto 0) => Display_Data_In(23 downto 0),
      Display_Data_Out(23 downto 0) => Display_Data_Out(23 downto 0),
      Display_Read_Write(0) => Display_Read_Write(0)
    );
end STRUCTURE;
