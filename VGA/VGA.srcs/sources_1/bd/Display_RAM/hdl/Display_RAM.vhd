--Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
--Date        : Tue Mar 24 15:20:43 2015
--Host        : P-CZC4213R2K running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target Display_RAM.bd
--Design      : Display_RAM
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Display_RAM is
  port (
    Display_Addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    Display_Clock : in STD_LOGIC;
    Display_Data_In : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Display_Data_Out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Display_Read_Write : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Display_RAM;

architecture STRUCTURE of Display_RAM is
  component Display_RAM_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 23 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component Display_RAM_blk_mem_gen_0_0;
  signal Display_RAM_douta : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal addra_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal clka_1 : STD_LOGIC;
  signal dina_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal wea_1 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Display_Data_Out(23 downto 0) <= Display_RAM_douta(23 downto 0);
  addra_1(12 downto 0) <= Display_Addr(12 downto 0);
  clka_1 <= Display_Clock;
  dina_1(23 downto 0) <= Display_Data_In(23 downto 0);
  wea_1(0) <= Display_Read_Write(0);
Display_RAM: component Display_RAM_blk_mem_gen_0_0
    port map (
      addra(12 downto 0) => addra_1(12 downto 0),
      clka => clka_1,
      dina(23 downto 0) => dina_1(23 downto 0),
      douta(23 downto 0) => Display_RAM_douta(23 downto 0),
      wea(0) => wea_1(0)
    );
end STRUCTURE;
