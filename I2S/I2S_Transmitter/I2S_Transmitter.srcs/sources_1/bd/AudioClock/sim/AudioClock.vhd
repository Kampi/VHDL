--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Mar 19 13:19:14 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target AudioClock.bd
--Design      : AudioClock
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AudioClock is
  port (
    ClockIn : in STD_LOGIC;
    Locked : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    nReset : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of AudioClock : entity is "AudioClock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=AudioClock,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of AudioClock : entity is "AudioClock.hwdef";
end AudioClock;

architecture STRUCTURE of AudioClock is
  component AudioClock_ClockingWizard_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    MCLK : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component AudioClock_ClockingWizard_0;
  signal ClockingWizard_MCLK : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal resetn_0_1 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of ClockIn : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ClockIn : signal is "XIL_INTERFACENAME CLK.CLOCKIN, ASSOCIATED_RESET nReset, CLK_DOMAIN AudioClock_ClockIn, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute x_interface_info of MCLK : signal is "xilinx.com:signal:clock:1.0 CLK.MCLK CLK";
  attribute x_interface_parameter of MCLK : signal is "XIL_INTERFACENAME CLK.MCLK, CLK_DOMAIN /ClockingWizard_clk_out1, FREQ_HZ 12286324, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of nReset : signal is "xilinx.com:signal:reset:1.0 RST.NRESET RST";
  attribute x_interface_parameter of nReset : signal is "XIL_INTERFACENAME RST.NRESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  Locked <= clk_wiz_0_locked;
  MCLK <= ClockingWizard_MCLK;
  clk_in1_0_1 <= ClockIn;
  resetn_0_1 <= nReset;
ClockingWizard: component AudioClock_ClockingWizard_0
     port map (
      MCLK => ClockingWizard_MCLK,
      clk_in1 => clk_in1_0_1,
      locked => clk_wiz_0_locked,
      resetn => resetn_0_1
    );
end STRUCTURE;
