--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
--Date        : Mon Jan 14 18:34:09 2019
--Host        : DevVM running 64-bit Ubuntu 16.04.5 LTS
--Command     : generate_target Clock.bd
--Design      : Clock
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Clock is
  port (
    Clk5MHz : out STD_LOGIC;
    Clock_In : in STD_LOGIC;
    Reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Clock : entity is "Clock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Clock,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Clock : entity is "Clock.hwdef";
end Clock;

architecture STRUCTURE of Clock is
  component Clock_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    Clk5MHz : out STD_LOGIC
  );
  end component Clock_clk_wiz_0_0;
  signal ClockingWizzard_Clk5MHz : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk5MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK5MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk5MHz : signal is "XIL_INTERFACENAME CLK.CLK5MHZ, CLK_DOMAIN /ClockingWizzard_clk_out1, FREQ_HZ 5000000, PHASE 0.0";
  attribute X_INTERFACE_INFO of Clock_In : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCK_IN CLK";
  attribute X_INTERFACE_PARAMETER of Clock_In : signal is "XIL_INTERFACENAME CLK.CLOCK_IN, CLK_DOMAIN Clock_clk_in1_0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH";
begin
  Clk5MHz <= ClockingWizzard_Clk5MHz;
  clk_in1_0_1 <= Clock_In;
  reset_0_1 <= Reset;
ClockingWizzard: component Clock_clk_wiz_0_0
     port map (
      Clk5MHz => ClockingWizzard_Clk5MHz,
      clk_in1 => clk_in1_0_1,
      reset => reset_0_1
    );
end STRUCTURE;
