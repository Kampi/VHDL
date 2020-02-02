//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sat Feb  1 23:36:30 2020
//Host        : PC running 64-bit major release  (build 9200)
//Command     : generate_target StreamReader.bd
//Design      : StreamReader
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "StreamReader,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=StreamReader,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "StreamReader.hwdef" *) 
module StreamReader
   (ACLK,
    ARESETN,
    TDATA,
    TLAST,
    TREADY,
    TVALID);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET ARESETN, CLK_DOMAIN StreamReader_ACLK, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ARESETN;
  input [31:0]TDATA;
  input [0:0]TLAST;
  output [0:0]TREADY;
  input [0:0]TVALID;

  wire [0:0]StreamReader_s_axis_tready;
  wire [31:0]TDATA_1;
  wire [0:0]TLAST_1;
  wire [0:0]TVALID_1;
  wire aclk_0_1;
  wire aresetn_0_1;

  assign TDATA_1 = TDATA[31:0];
  assign TLAST_1 = TLAST[0];
  assign TREADY[0] = StreamReader_s_axis_tready;
  assign TVALID_1 = TVALID[0];
  assign aclk_0_1 = ACLK;
  assign aresetn_0_1 = ARESETN;
  StreamReader_axi4stream_vip_0_0 StreamReader
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,TDATA_1}),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(TLAST_1),
        .s_axis_tready(StreamReader_s_axis_tready),
        .s_axis_tvalid(TVALID_1));
endmodule
