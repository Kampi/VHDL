--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue Aug  6 10:09:26 2019
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target ClockGeneration_wrapper.bd
--Design      : ClockGeneration_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ClockGeneration_wrapper is
  port (
    ClockIn : in STD_LOGIC;
    ClockOut : out STD_LOGIC;
    Locked : out STD_LOGIC
  );
end ClockGeneration_wrapper;

architecture STRUCTURE of ClockGeneration_wrapper is
  component ClockGeneration is
  port (
    ClockIn : in STD_LOGIC;
    ClockOut : out STD_LOGIC;
    Locked : out STD_LOGIC
  );
  end component ClockGeneration;
begin
ClockGeneration_i: component ClockGeneration
     port map (
      ClockIn => ClockIn,
      ClockOut => ClockOut,
      Locked => Locked
    );
end STRUCTURE;
