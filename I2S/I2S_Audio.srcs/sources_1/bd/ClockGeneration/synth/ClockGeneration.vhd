--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue Aug  6 10:09:26 2019
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target ClockGeneration.bd
--Design      : ClockGeneration
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ClockGeneration is
  port (
    ClockIn : in STD_LOGIC;
    ClockOut : out STD_LOGIC;
    Locked : out STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of ClockGeneration : entity is "ClockGeneration,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ClockGeneration,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of ClockGeneration : entity is "ClockGeneration.hwdef";
end ClockGeneration;

architecture STRUCTURE of ClockGeneration is
  component ClockGeneration_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component ClockGeneration_clk_wiz_0_0;
  signal ClockingWIzard_locked : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of ClockIn : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ClockIn : signal is "XIL_INTERFACENAME CLK.CLOCKIN, CLK_DOMAIN ClockGeneration_clk_in1_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute x_interface_info of ClockOut : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKOUT CLK";
  attribute x_interface_parameter of ClockOut : signal is "XIL_INTERFACENAME CLK.CLOCKOUT, CLK_DOMAIN /ClockingWIzard_clk_out1, FREQ_HZ 12288013, INSERT_VIP 0, PHASE 0.0";
begin
  ClockOut <= clk_wiz_0_clk_out1;
  Locked <= ClockingWIzard_locked;
  clk_in1_0_1 <= ClockIn;
ClockingWIzard: component ClockGeneration_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_0_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => ClockingWIzard_locked
    );
end STRUCTURE;
