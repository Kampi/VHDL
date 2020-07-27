--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Jun 20 20:56:33 2020
--Host        : PC running 64-bit major release  (build 9200)
--Command     : generate_target StreamReader.bd
--Design      : StreamReader
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity StreamReader is
  port (
    ACLK : in STD_LOGIC;
    ARESETn : in STD_LOGIC;
    TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    TREADY : out STD_LOGIC_VECTOR ( 0 to 0 );
    TVALID : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of StreamReader : entity is "StreamReader,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=StreamReader,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of StreamReader : entity is "StreamReader.hwdef";
end StreamReader;

architecture STRUCTURE of StreamReader is
  component StreamReader_axi4stream_vip_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component StreamReader_axi4stream_vip_0_0;
  signal StreamWriter_s_axis_tready : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aclk_0_1 : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
  signal s_axis_tdata_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axis_tlast_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axis_tvalid_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ACLK : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET ARESETn, CLK_DOMAIN StreamReader_ACLK, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ARESETn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of ARESETn : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  TREADY(0) <= StreamWriter_s_axis_tready(0);
  aclk_0_1 <= ACLK;
  aresetn_0_1 <= ARESETn;
  s_axis_tdata_0_1(31 downto 0) <= TDATA(31 downto 0);
  s_axis_tlast_0_1(0) <= TLAST(0);
  s_axis_tvalid_0_1(0) <= TVALID(0);
StreamReader: component StreamReader_axi4stream_vip_0_0
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
      s_axis_tdata(31 downto 0) => s_axis_tdata_0_1(31 downto 0),
      s_axis_tlast(0) => s_axis_tlast_0_1(0),
      s_axis_tready(0) => StreamWriter_s_axis_tready(0),
      s_axis_tvalid(0) => s_axis_tvalid_0_1(0)
    );
end STRUCTURE;
