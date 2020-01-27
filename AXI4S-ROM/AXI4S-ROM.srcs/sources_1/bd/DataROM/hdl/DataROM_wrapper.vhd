--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Thu Aug  1 14:28:36 2019
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target DataROM_wrapper.bd
--Design      : DataROM_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM_wrapper is
  port (
    Address : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Clk : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end DataROM_wrapper;

architecture STRUCTURE of DataROM_wrapper is
  component DataROM is
  port (
    Address : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Clk : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DataROM;
begin
DataROM_i: component DataROM
     port map (
      Address(10 downto 0) => Address(10 downto 0),
      Clk => Clk,
      DataOut(15 downto 0) => DataOut(15 downto 0)
    );
end STRUCTURE;
