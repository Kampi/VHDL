--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Feb 13 14:52:29 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target AXIMaster.bd
--Design      : AXIMaster
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXIMaster is
  port (
    ClockIn : in STD_LOGIC;
    ClockOut : out STD_LOGIC;
    Locked : out STD_LOGIC;
    ResetN : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of AXIMaster : entity is "AXIMaster,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=AXIMaster,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of AXIMaster : entity is "AXIMaster.hwdef";
end AXIMaster;

architecture STRUCTURE of AXIMaster is
  component AXIMaster_axi_vip_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component AXIMaster_axi_vip_0_0;
  component AXIMaster_clk_wiz_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    clk_stop : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_glitch : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interrupt : out STD_LOGIC;
    clk_oor : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_in1 : in STD_LOGIC;
    ClockOut : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component AXIMaster_clk_wiz_0_0;
  component AXIMaster_rst_ClockingWizard_8M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component AXIMaster_rst_ClockingWizard_8M_0;
  signal AXIMaster_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIMaster_M_AXI_ARREADY : STD_LOGIC;
  signal AXIMaster_M_AXI_ARVALID : STD_LOGIC;
  signal AXIMaster_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIMaster_M_AXI_AWREADY : STD_LOGIC;
  signal AXIMaster_M_AXI_AWVALID : STD_LOGIC;
  signal AXIMaster_M_AXI_BREADY : STD_LOGIC;
  signal AXIMaster_M_AXI_BVALID : STD_LOGIC;
  signal AXIMaster_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIMaster_M_AXI_RREADY : STD_LOGIC;
  signal AXIMaster_M_AXI_RVALID : STD_LOGIC;
  signal AXIMaster_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIMaster_M_AXI_WREADY : STD_LOGIC;
  signal AXIMaster_M_AXI_WVALID : STD_LOGIC;
  signal ClockingWizard_ClockOut : STD_LOGIC;
  signal ClockingWizard_locked : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal ext_reset_in_0_1 : STD_LOGIC;
  signal rst_ClockingWizard_8M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ClockingWizard_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_ClockingWizard_clk_glitch_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ClockingWizard_clk_oor_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ClockingWizard_clk_stop_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ClockingWizard_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ClockingWizard_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_Reset_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_Reset_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Reset_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_Reset_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ClockIn : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ClockIn : signal is "XIL_INTERFACENAME CLK.CLOCKIN, CLK_DOMAIN AXIMaster_ClockIn, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ClockOut : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKOUT CLK";
  attribute X_INTERFACE_PARAMETER of ClockOut : signal is "XIL_INTERFACENAME CLK.CLOCKOUT, CLK_DOMAIN /ClockingWizard_clk_out1, FREQ_HZ 8000000, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ResetN : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of ResetN : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  ClockOut <= ClockingWizard_ClockOut;
  Locked <= ClockingWizard_locked;
  clk_in1_0_1 <= ClockIn;
  ext_reset_in_0_1 <= ResetN;
AXIMaster: component AXIMaster_axi_vip_0_0
     port map (
      aclk => ClockingWizard_ClockOut,
      aresetn => rst_ClockingWizard_8M_peripheral_aresetn(0),
      m_axi_araddr(31 downto 0) => AXIMaster_M_AXI_ARADDR(31 downto 0),
      m_axi_arready => AXIMaster_M_AXI_ARREADY,
      m_axi_arvalid => AXIMaster_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => AXIMaster_M_AXI_AWADDR(31 downto 0),
      m_axi_awready => AXIMaster_M_AXI_AWREADY,
      m_axi_awvalid => AXIMaster_M_AXI_AWVALID,
      m_axi_bready => AXIMaster_M_AXI_BREADY,
      m_axi_bvalid => AXIMaster_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => AXIMaster_M_AXI_RDATA(31 downto 0),
      m_axi_rready => AXIMaster_M_AXI_RREADY,
      m_axi_rvalid => AXIMaster_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => AXIMaster_M_AXI_WDATA(31 downto 0),
      m_axi_wready => AXIMaster_M_AXI_WREADY,
      m_axi_wvalid => AXIMaster_M_AXI_WVALID
    );
ClockingWizard: component AXIMaster_clk_wiz_0_0
     port map (
      ClockOut => ClockingWizard_ClockOut,
      clk_glitch(3 downto 0) => NLW_ClockingWizard_clk_glitch_UNCONNECTED(3 downto 0),
      clk_in1 => clk_in1_0_1,
      clk_oor(3 downto 0) => NLW_ClockingWizard_clk_oor_UNCONNECTED(3 downto 0),
      clk_stop(3 downto 0) => NLW_ClockingWizard_clk_stop_UNCONNECTED(3 downto 0),
      interrupt => NLW_ClockingWizard_interrupt_UNCONNECTED,
      locked => ClockingWizard_locked,
      ref_clk => clk_in1_0_1,
      s_axi_aclk => ClockingWizard_ClockOut,
      s_axi_araddr(10 downto 0) => AXIMaster_M_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => rst_ClockingWizard_8M_peripheral_aresetn(0),
      s_axi_arready => AXIMaster_M_AXI_ARREADY,
      s_axi_arvalid => AXIMaster_M_AXI_ARVALID,
      s_axi_awaddr(10 downto 0) => AXIMaster_M_AXI_AWADDR(10 downto 0),
      s_axi_awready => AXIMaster_M_AXI_AWREADY,
      s_axi_awvalid => AXIMaster_M_AXI_AWVALID,
      s_axi_bready => AXIMaster_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => NLW_ClockingWizard_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => AXIMaster_M_AXI_BVALID,
      s_axi_rdata(31 downto 0) => AXIMaster_M_AXI_RDATA(31 downto 0),
      s_axi_rready => AXIMaster_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => NLW_ClockingWizard_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => AXIMaster_M_AXI_RVALID,
      s_axi_wdata(31 downto 0) => AXIMaster_M_AXI_WDATA(31 downto 0),
      s_axi_wready => AXIMaster_M_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => B"1111",
      s_axi_wvalid => AXIMaster_M_AXI_WVALID
    );
Reset: component AXIMaster_rst_ClockingWizard_8M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_Reset_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => ClockingWizard_locked,
      ext_reset_in => ext_reset_in_0_1,
      interconnect_aresetn(0) => NLW_Reset_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_Reset_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ClockingWizard_8M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_Reset_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => ClockingWizard_ClockOut
    );
end STRUCTURE;
