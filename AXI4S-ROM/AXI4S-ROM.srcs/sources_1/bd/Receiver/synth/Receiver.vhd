--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Aug  5 11:05:02 2019
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target Receiver.bd
--Design      : Receiver
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Receiver is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    TREADY : out STD_LOGIC_VECTOR ( 0 to 0 );
    TVALID : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Receiver : entity is "Receiver,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Receiver,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Receiver : entity is "Receiver.hwdef";
end Receiver;

architecture STRUCTURE of Receiver is
  component Receiver_axi4stream_vip_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Receiver_axi4stream_vip_0_0;
  component Receiver_axis_dwidth_converter_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Receiver_axis_dwidth_converter_0_0;
  signal ACLK_1 : STD_LOGIC;
  signal ARESETN_1 : STD_LOGIC;
  signal TDATA_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TID_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TLAST_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TVALID_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_dwidth_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_dwidth_converter_0_M_AXIS_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_dwidth_converter_0_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_dwidth_converter_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_dwidth_converter_0_M_AXIS_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_dwidth_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_dwidth_converter_0_s_axis_tready : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ACLK : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET ARESETN, CLK_DOMAIN Receiver_aclk_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ARESETN : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of ARESETN : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  ACLK_1 <= ACLK;
  ARESETN_1 <= ARESETN;
  TDATA_1(31 downto 0) <= TDATA(31 downto 0);
  TID_1(7 downto 0) <= TID(7 downto 0);
  TLAST_1(0) <= TLAST(0);
  TREADY(0) <= axis_dwidth_converter_0_s_axis_tready;
  TVALID_1(0) <= TVALID(0);
Receiver: component Receiver_axi4stream_vip_0_0
     port map (
      aclk => ACLK_1,
      aresetn => ARESETN_1,
      s_axis_tdata(63 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(63 downto 0),
      s_axis_tid(7 downto 0) => axis_dwidth_converter_0_M_AXIS_TID(7 downto 0),
      s_axis_tkeep(7 downto 0) => axis_dwidth_converter_0_M_AXIS_TKEEP(7 downto 0),
      s_axis_tlast(0) => axis_dwidth_converter_0_M_AXIS_TLAST,
      s_axis_tready(0) => axis_dwidth_converter_0_M_AXIS_TREADY(0),
      s_axis_tvalid(0) => axis_dwidth_converter_0_M_AXIS_TVALID
    );
axis_dwidth_converter_0: component Receiver_axis_dwidth_converter_0_0
     port map (
      aclk => ACLK_1,
      aresetn => ARESETN_1,
      m_axis_tdata(63 downto 0) => axis_dwidth_converter_0_M_AXIS_TDATA(63 downto 0),
      m_axis_tid(7 downto 0) => axis_dwidth_converter_0_M_AXIS_TID(7 downto 0),
      m_axis_tkeep(7 downto 0) => axis_dwidth_converter_0_M_AXIS_TKEEP(7 downto 0),
      m_axis_tlast => axis_dwidth_converter_0_M_AXIS_TLAST,
      m_axis_tready => axis_dwidth_converter_0_M_AXIS_TREADY(0),
      m_axis_tvalid => axis_dwidth_converter_0_M_AXIS_TVALID,
      s_axis_tdata(31 downto 0) => TDATA_1(31 downto 0),
      s_axis_tid(7 downto 0) => TID_1(7 downto 0),
      s_axis_tlast => TLAST_1(0),
      s_axis_tready => axis_dwidth_converter_0_s_axis_tready,
      s_axis_tvalid => TVALID_1(0)
    );
end STRUCTURE;
