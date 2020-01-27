--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Thu Apr 18 21:24:25 2019
--Host        : DevVM running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target Font_ROM_wrapper.bd
--Design      : Font_ROM_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Font_ROM_wrapper is
  port (
    ROM_Address : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ROM_Clock : in STD_LOGIC;
    ROM_DataOut : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ROM_Reset : in STD_LOGIC
  );
end Font_ROM_wrapper;

architecture STRUCTURE of Font_ROM_wrapper is
  component Font_ROM is
  port (
    ROM_Address : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ROM_Clock : in STD_LOGIC;
    ROM_DataOut : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ROM_Reset : in STD_LOGIC
  );
  end component Font_ROM;
begin
Font_ROM_i: component Font_ROM
     port map (
      ROM_Address(10 downto 0) => ROM_Address(10 downto 0),
      ROM_Clock => ROM_Clock,
      ROM_DataOut(7 downto 0) => ROM_DataOut(7 downto 0),
      ROM_Reset => ROM_Reset
    );
end STRUCTURE;
