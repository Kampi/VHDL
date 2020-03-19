--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Mar 19 13:19:14 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target AudioClock_wrapper.bd
--Design      : AudioClock_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AudioClock_wrapper is
  port (
    ClockIn : in STD_LOGIC;
    Locked : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    nReset : in STD_LOGIC
  );
end AudioClock_wrapper;

architecture STRUCTURE of AudioClock_wrapper is
  component AudioClock is
  port (
    ClockIn : in STD_LOGIC;
    Locked : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    nReset : in STD_LOGIC
  );
  end component AudioClock;
begin
AudioClock_i: component AudioClock
     port map (
      ClockIn => ClockIn,
      Locked => Locked,
      MCLK => MCLK,
      nReset => nReset
    );
end STRUCTURE;
