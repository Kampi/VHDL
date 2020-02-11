--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Tue Feb 11 09:13:33 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target SystemClock.bd
--Design      : SystemClock
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemClock is
  port (
    ClockIn : in STD_LOGIC;
    Locked : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    ResetN : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of SystemClock : entity is "SystemClock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SystemClock,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of SystemClock : entity is "SystemClock.hwdef";
end SystemClock;

architecture STRUCTURE of SystemClock is
  component SystemClock_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    MCLK : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component SystemClock_clk_wiz_0_0;
  signal ClockingWizard_MCLK : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal resetn_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ClockIn : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ClockIn : signal is "XIL_INTERFACENAME CLK.CLOCKIN, CLK_DOMAIN SystemClock_ClockIn, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of MCLK : signal is "xilinx.com:signal:clock:1.0 CLK.MCLK CLK";
  attribute X_INTERFACE_PARAMETER of MCLK : signal is "XIL_INTERFACENAME CLK.MCLK, CLK_DOMAIN /ClockingWizard_clk_out1, FREQ_HZ 12288013, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ResetN : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of ResetN : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  Locked <= clk_wiz_0_locked;
  MCLK <= ClockingWizard_MCLK;
  clk_in1_0_1 <= ClockIn;
  resetn_0_1 <= ResetN;
ClockingWizard: component SystemClock_clk_wiz_0_0
     port map (
      MCLK => ClockingWizard_MCLK,
      clk_in1 => clk_in1_0_1,
      locked => clk_wiz_0_locked,
      resetn => resetn_0_1
    );
end STRUCTURE;
