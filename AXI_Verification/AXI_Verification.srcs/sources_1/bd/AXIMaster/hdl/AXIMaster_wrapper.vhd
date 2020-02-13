--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Feb 13 14:52:29 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target AXIMaster_wrapper.bd
--Design      : AXIMaster_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXIMaster_wrapper is
  port (
    ClockIn : in STD_LOGIC;
    ClockOut : out STD_LOGIC;
    Locked : out STD_LOGIC;
    ResetN : in STD_LOGIC
  );
end AXIMaster_wrapper;

architecture STRUCTURE of AXIMaster_wrapper is
  component AXIMaster is
  port (
    ClockIn : in STD_LOGIC;
    ClockOut : out STD_LOGIC;
    Locked : out STD_LOGIC;
    ResetN : in STD_LOGIC
  );
  end component AXIMaster;
begin
AXIMaster_i: component AXIMaster
     port map (
      ClockIn => ClockIn,
      ClockOut => ClockOut,
      Locked => Locked,
      ResetN => ResetN
    );
end STRUCTURE;
