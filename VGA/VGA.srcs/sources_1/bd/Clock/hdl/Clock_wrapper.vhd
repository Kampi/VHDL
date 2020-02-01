--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Thu Apr 18 21:24:21 2019
--Host        : DevVM running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target Clock_wrapper.bd
--Design      : Clock_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Clock_wrapper is
  port (
    Clock_In : in STD_LOGIC;
    Clock_Locked : out STD_LOGIC;
    Clock_Out : out STD_LOGIC;
    Clock_Reset : in STD_LOGIC
  );
end Clock_wrapper;

architecture STRUCTURE of Clock_wrapper is
  component Clock is
  port (
    Clock_Out : out STD_LOGIC;
    Clock_Locked : out STD_LOGIC;
    Clock_Reset : in STD_LOGIC;
    Clock_In : in STD_LOGIC
  );
  end component Clock;
begin
Clock_i: component Clock
     port map (
      Clock_In => Clock_In,
      Clock_Locked => Clock_Locked,
      Clock_Out => Clock_Out,
      Clock_Reset => Clock_Reset
    );
end STRUCTURE;
