//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Aug  5 11:48:37 2019
//Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
//Command     : generate_target StreamReader.bd
//Design      : StreamReader
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "StreamReader,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=StreamReader,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "StreamReader.hwdef" *) 
module StreamReader
   (ACLK,
    ARESETN,
    TDATA,
    TLAST,
    TREADY,
    TVALID);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET ARESETN, CLK_DOMAIN StreamReader_aclk_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ARESETN;
  input [31:0]TDATA;
  input [0:0]TLAST;
  output [0:0]TREADY;
  input [0:0]TVALID;

  wire [63:0]DataWidthConverter_M_AXIS_TDATA;
  wire [7:0]DataWidthConverter_M_AXIS_TKEEP;
  wire DataWidthConverter_M_AXIS_TLAST;
  wire [0:0]DataWidthConverter_M_AXIS_TREADY;
  wire DataWidthConverter_M_AXIS_TVALID;
  wire DataWidthConverter_s_axis_tready;
  wire [31:0]TDATA_1;
  wire [0:0]TLAST_1;
  wire [0:0]TVALID_1;
  wire aclk_0_1;
  wire aresetn_0_1;

  assign TDATA_1 = TDATA[31:0];
  assign TLAST_1 = TLAST[0];
  assign TREADY[0] = DataWidthConverter_s_axis_tready;
  assign TVALID_1 = TVALID[0];
  assign aclk_0_1 = ACLK;
  assign aresetn_0_1 = ARESETN;
  StreamReader_axis_dwidth_converter_0_0 DataWidthConverter
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axis_tdata(DataWidthConverter_M_AXIS_TDATA),
        .m_axis_tkeep(DataWidthConverter_M_AXIS_TKEEP),
        .m_axis_tlast(DataWidthConverter_M_AXIS_TLAST),
        .m_axis_tready(DataWidthConverter_M_AXIS_TREADY),
        .m_axis_tvalid(DataWidthConverter_M_AXIS_TVALID),
        .s_axis_tdata(TDATA_1),
        .s_axis_tlast(TLAST_1),
        .s_axis_tready(DataWidthConverter_s_axis_tready),
        .s_axis_tvalid(TVALID_1));
  StreamReader_axi4stream_vip_0_0 StreamReader
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .s_axis_tdata(DataWidthConverter_M_AXIS_TDATA),
        .s_axis_tkeep(DataWidthConverter_M_AXIS_TKEEP),
        .s_axis_tlast(DataWidthConverter_M_AXIS_TLAST),
        .s_axis_tready(DataWidthConverter_M_AXIS_TREADY),
        .s_axis_tvalid(DataWidthConverter_M_AXIS_TVALID));
endmodule
