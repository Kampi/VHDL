--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Fri Jul 12 13:48:53 2019
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
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    TREADY : in STD_LOGIC_VECTOR ( 0 to 0 );
    TVALID : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end StreamWriter_wrapper;

architecture STRUCTURE of StreamWriter_wrapper is
  component StreamWriter is
  port (
    ARESETN : in STD_LOGIC;
    TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    TREADY : in STD_LOGIC_VECTOR ( 0 to 0 );
    TVALID : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACLK : in STD_LOGIC
  );
  end component StreamWriter;
begin
StreamWriter_i: component StreamWriter
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      TDATA(31 downto 0) => TDATA(31 downto 0),
      TLAST(0) => TLAST(0),
      TREADY(0) => TREADY(0),
      TVALID(0) => TVALID(0)
    );
end STRUCTURE;
