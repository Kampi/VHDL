--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Fri Jul 16 08:29:21 2021
--Host        : PC running 64-bit major release  (build 9200)
--Command     : generate_target StreamReader_wrapper.bd
--Design      : StreamReader_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity StreamReader_wrapper is
  port (
    ACLK : in STD_LOGIC;
    ARESETn : in STD_LOGIC;
    TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    TREADY : out STD_LOGIC_VECTOR ( 0 to 0 );
    TVALID : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end StreamReader_wrapper;

architecture STRUCTURE of StreamReader_wrapper is
  component StreamReader is
  port (
    TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TREADY : out STD_LOGIC_VECTOR ( 0 to 0 );
    TVALID : in STD_LOGIC_VECTOR ( 0 to 0 );
    ACLK : in STD_LOGIC;
    ARESETn : in STD_LOGIC;
    TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component StreamReader;
begin
StreamReader_i: component StreamReader
     port map (
      ACLK => ACLK,
      ARESETn => ARESETn,
      TDATA(31 downto 0) => TDATA(31 downto 0),
      TLAST(0) => TLAST(0),
      TREADY(0) => TREADY(0),
      TVALID(0) => TVALID(0)
    );
end STRUCTURE;
