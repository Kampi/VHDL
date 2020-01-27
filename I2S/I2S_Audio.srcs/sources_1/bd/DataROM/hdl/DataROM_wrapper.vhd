--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Fri Aug  9 15:40:30 2019
--Host        : PC running 64-bit major release  (build 9200)
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
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TLAST : out STD_LOGIC;
    TREADY : in STD_LOGIC;
    TVALID : out STD_LOGIC
  );
end DataROM_wrapper;

architecture STRUCTURE of DataROM_wrapper is
  component DataROM is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    TREADY : in STD_LOGIC;
    TLAST : out STD_LOGIC;
    TID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TVALID : out STD_LOGIC
  );
  end component DataROM;
begin
DataROM_i: component DataROM
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      TDATA(31 downto 0) => TDATA(31 downto 0),
      TID(7 downto 0) => TID(7 downto 0),
      TLAST => TLAST,
      TREADY => TREADY,
      TVALID => TVALID
    );
end STRUCTURE;
