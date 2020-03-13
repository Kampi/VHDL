--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri Mar 13 14:25:49 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target StreamWriter_wrapper.bd
--Design      : StreamWriter_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity StreamWriter_wrapper is
  port (
    TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    TREADY : in STD_LOGIC_VECTOR ( 0 to 0 );
    TVALID : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end StreamWriter_wrapper;

architecture STRUCTURE of StreamWriter_wrapper is
  component StreamWriter is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    TREADY : in STD_LOGIC_VECTOR ( 0 to 0 );
    TVALID : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component StreamWriter;
begin
StreamWriter_i: component StreamWriter
     port map (
      TDATA(31 downto 0) => TDATA(31 downto 0),
      TLAST(0) => TLAST(0),
      TREADY(0) => TREADY(0),
      TVALID(0) => TVALID(0),
      aclk => aclk,
      aresetn => aresetn
    );
end STRUCTURE;
