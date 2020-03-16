--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Mon Mar 16 21:57:49 2020
--Host        : PC running 64-bit major release  (build 9200)
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
