//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Tue Mar 17 11:25:55 2020
//Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
//Command     : generate_target DUT.bd
//Design      : DUT
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "DUT,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DUT,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "DUT.hwdef" *) 
module DUT
   (AXIS_RXD_tdata,
    AXIS_RXD_tready,
    AXIS_RXD_tvalid,
    Audio_Reset,
    I2S_lrclk,
    I2S_sclk,
    I2S_sd,
    MCLK,
    aclk,
    aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_RXD TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_RXD, CLK_DOMAIN DUT_aclk, FREQ_HZ 125000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]AXIS_RXD_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_RXD TREADY" *) output AXIS_RXD_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_RXD TVALID" *) input AXIS_RXD_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AUDIO_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AUDIO_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input Audio_Reset;
  (* X_INTERFACE_INFO = "www.kampis-elektroecke.de:Kampis-Elektroecke:I2S:1.0 I2S " *) output I2S_lrclk;
  (* X_INTERFACE_INFO = "www.kampis-elektroecke.de:Kampis-Elektroecke:I2S:1.0 I2S " *) output I2S_sclk;
  (* X_INTERFACE_INFO = "www.kampis-elektroecke.de:Kampis-Elektroecke:I2S:1.0 I2S " *) output I2S_sd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MCLK, ASSOCIATED_RESET Audio_Reset_0:Audio_Reset, CLK_DOMAIN DUT_MCLK, FREQ_HZ 12500000, INSERT_VIP 0, PHASE 0.000" *) input MCLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF AXIS_RXD, ASSOCIATED_RESET aresetn, CLK_DOMAIN DUT_aclk, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;

  wire [31:0]AXIS_RXD_0_1_TDATA;
  wire AXIS_RXD_0_1_TREADY;
  wire AXIS_RXD_0_1_TVALID;
  wire Audio_Reset_0_1;
  wire MCLK_0_1;
  wire Transmitter_I2S_LRCLK;
  wire Transmitter_I2S_SCLK;
  wire Transmitter_I2S_SD;
  wire aclk_0_1;
  wire aresetn_0_1;

  assign AXIS_RXD_0_1_TDATA = AXIS_RXD_tdata[31:0];
  assign AXIS_RXD_0_1_TVALID = AXIS_RXD_tvalid;
  assign AXIS_RXD_tready = AXIS_RXD_0_1_TREADY;
  assign Audio_Reset_0_1 = Audio_Reset;
  assign I2S_lrclk = Transmitter_I2S_LRCLK;
  assign I2S_sclk = Transmitter_I2S_SCLK;
  assign I2S_sd = Transmitter_I2S_SD;
  assign MCLK_0_1 = MCLK;
  assign aclk_0_1 = aclk;
  assign aresetn_0_1 = aresetn;
  DUT_AXIS_I2S_Transmitter_0_0 Transmitter
       (.Audio_Reset(Audio_Reset_0_1),
        .LRCLK(Transmitter_I2S_LRCLK),
        .MCLK(MCLK_0_1),
        .SCLK(Transmitter_I2S_SCLK),
        .SD(Transmitter_I2S_SD),
        .TDATA_RXD(AXIS_RXD_0_1_TDATA),
        .TREADY_RXD(AXIS_RXD_0_1_TREADY),
        .TVALID_RXD(AXIS_RXD_0_1_TVALID),
        .aclk(aclk_0_1),
        .aresetn(aresetn_0_1));
endmodule
