--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Tue Mar 17 14:59:18 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target DUT.bd
--Design      : DUT
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DUT is
  port (
    AXIS_RXD_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIS_RXD_tready : out STD_LOGIC;
    AXIS_RXD_tvalid : in STD_LOGIC;
    Audio_Reset : in STD_LOGIC;
    I2S_lrclk : out STD_LOGIC;
    I2S_sclk : out STD_LOGIC;
    I2S_sd : out STD_LOGIC;
    MCLK : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of DUT : entity is "DUT,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DUT,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of DUT : entity is "DUT.hwdef";
end DUT;

architecture STRUCTURE of DUT is
  component DUT_AXIS_I2S_Transmitter_0_0 is
  port (
    Audio_Reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    TDATA_RXD : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TREADY_RXD : out STD_LOGIC;
    TVALID_RXD : in STD_LOGIC;
    MCLK : in STD_LOGIC;
    LRCLK : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    SD : out STD_LOGIC
  );
  end component DUT_AXIS_I2S_Transmitter_0_0;
  signal AXIS_RXD_0_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIS_RXD_0_1_TREADY : STD_LOGIC;
  signal AXIS_RXD_0_1_TVALID : STD_LOGIC;
  signal Audio_Reset_0_1 : STD_LOGIC;
  signal MCLK_0_1 : STD_LOGIC;
  signal Transmitter_I2S_LRCLK : STD_LOGIC;
  signal Transmitter_I2S_SCLK : STD_LOGIC;
  signal Transmitter_I2S_SD : STD_LOGIC;
  signal aclk_0_1 : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of AXIS_RXD_tready : signal is "xilinx.com:interface:axis:1.0 AXIS_RXD TREADY";
  attribute X_INTERFACE_INFO of AXIS_RXD_tvalid : signal is "xilinx.com:interface:axis:1.0 AXIS_RXD TVALID";
  attribute X_INTERFACE_INFO of Audio_Reset : signal is "xilinx.com:signal:reset:1.0 RST.AUDIO_RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Audio_Reset : signal is "XIL_INTERFACENAME RST.AUDIO_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of I2S_lrclk : signal is "www.kampis-elektroecke.de:Kampis-Elektroecke:I2S:1.0 I2S LRCLK";
  attribute X_INTERFACE_INFO of I2S_sclk : signal is "www.kampis-elektroecke.de:Kampis-Elektroecke:I2S:1.0 I2S SCLK";
  attribute X_INTERFACE_INFO of I2S_sd : signal is "www.kampis-elektroecke.de:Kampis-Elektroecke:I2S:1.0 I2S SD";
  attribute X_INTERFACE_INFO of MCLK : signal is "xilinx.com:signal:clock:1.0 CLK.MCLK CLK";
  attribute X_INTERFACE_PARAMETER of MCLK : signal is "XIL_INTERFACENAME CLK.MCLK, ASSOCIATED_RESET Audio_Reset_0:Audio_Reset, CLK_DOMAIN DUT_MCLK, FREQ_HZ 12500000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF AXIS_RXD, ASSOCIATED_RESET aresetn, CLK_DOMAIN DUT_aclk, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of AXIS_RXD_tdata : signal is "xilinx.com:interface:axis:1.0 AXIS_RXD TDATA";
  attribute X_INTERFACE_PARAMETER of AXIS_RXD_tdata : signal is "XIL_INTERFACENAME AXIS_RXD, CLK_DOMAIN DUT_aclk, FREQ_HZ 125000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
begin
  AXIS_RXD_0_1_TDATA(31 downto 0) <= AXIS_RXD_tdata(31 downto 0);
  AXIS_RXD_0_1_TVALID <= AXIS_RXD_tvalid;
  AXIS_RXD_tready <= AXIS_RXD_0_1_TREADY;
  Audio_Reset_0_1 <= Audio_Reset;
  I2S_lrclk <= Transmitter_I2S_LRCLK;
  I2S_sclk <= Transmitter_I2S_SCLK;
  I2S_sd <= Transmitter_I2S_SD;
  MCLK_0_1 <= MCLK;
  aclk_0_1 <= aclk;
  aresetn_0_1 <= aresetn;
Transmitter: component DUT_AXIS_I2S_Transmitter_0_0
     port map (
      Audio_Reset => Audio_Reset_0_1,
      LRCLK => Transmitter_I2S_LRCLK,
      MCLK => MCLK_0_1,
      SCLK => Transmitter_I2S_SCLK,
      SD => Transmitter_I2S_SD,
      TDATA_RXD(31 downto 0) => AXIS_RXD_0_1_TDATA(31 downto 0),
      TREADY_RXD => AXIS_RXD_0_1_TREADY,
      TVALID_RXD => AXIS_RXD_0_1_TVALID,
      aclk => aclk_0_1,
      aresetn => aresetn_0_1
    );
end STRUCTURE;
