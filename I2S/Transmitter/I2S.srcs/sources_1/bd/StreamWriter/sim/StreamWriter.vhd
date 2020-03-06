--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Feb  6 12:20:11 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target StreamWriter.bd
--Design      : StreamWriter
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity StreamWriter is
  port (
    ACLK : in STD_LOGIC;
    ARESETn : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of StreamWriter : entity is "StreamWriter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=StreamWriter,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of StreamWriter : entity is "StreamWriter.hwdef";
end StreamWriter;

architecture STRUCTURE of StreamWriter is
  component StreamWriter_axi4stream_vip_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component StreamWriter_axi4stream_vip_0_0;
  signal StreamWriter_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal StreamWriter_M_AXIS_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal StreamWriter_M_AXIS_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal StreamWriter_M_AXIS_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aclk_0_1 : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ACLK : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET ARESETn, CLK_DOMAIN StreamWriter_aclk_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ARESETn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of ARESETn : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of M_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS ";
  attribute X_INTERFACE_PARAMETER of M_AXIS_tdata : signal is "XIL_INTERFACENAME M_AXIS, CLK_DOMAIN StreamWriter_aclk_0, FREQ_HZ 125000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS ";
  attribute X_INTERFACE_INFO of M_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS ";
  attribute X_INTERFACE_INFO of M_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS ";
begin
  M_AXIS_tdata(31 downto 0) <= StreamWriter_M_AXIS_TDATA(31 downto 0);
  M_AXIS_tlast(0) <= StreamWriter_M_AXIS_TLAST(0);
  M_AXIS_tvalid(0) <= StreamWriter_M_AXIS_TVALID(0);
  StreamWriter_M_AXIS_TREADY(0) <= M_AXIS_tready(0);
  aclk_0_1 <= ACLK;
  aresetn_0_1 <= ARESETn;
StreamWriter: component StreamWriter_axi4stream_vip_0_0
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
      m_axis_tdata(31 downto 0) => StreamWriter_M_AXIS_TDATA(31 downto 0),
      m_axis_tlast(0) => StreamWriter_M_AXIS_TLAST(0),
      m_axis_tready(0) => StreamWriter_M_AXIS_TREADY(0),
      m_axis_tvalid(0) => StreamWriter_M_AXIS_TVALID(0)
    );
end STRUCTURE;
