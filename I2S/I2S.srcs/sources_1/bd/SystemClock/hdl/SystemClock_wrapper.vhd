--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Tue Feb 11 09:13:33 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target SystemClock_wrapper.bd
--Design      : SystemClock_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemClock_wrapper is
  port (
    ClockIn : in STD_LOGIC;
    Locked : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    ResetN : in STD_LOGIC
  );
end SystemClock_wrapper;

architecture STRUCTURE of SystemClock_wrapper is
  component SystemClock is
  port (
    ResetN : in STD_LOGIC;
    ClockIn : in STD_LOGIC;
    Locked : out STD_LOGIC;
    MCLK : out STD_LOGIC
  );
  end component SystemClock;
begin
SystemClock_i: component SystemClock
     port map (
      ClockIn => ClockIn,
      Locked => Locked,
      MCLK => MCLK,
      ResetN => ResetN
    );
end STRUCTURE;
