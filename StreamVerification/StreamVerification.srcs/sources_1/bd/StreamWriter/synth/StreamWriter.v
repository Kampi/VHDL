//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri Jul 12 13:46:54 2019
//Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
//Command     : generate_target StreamWriter.bd
//Design      : StreamWriter
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "StreamWriter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=StreamWriter,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "StreamWriter.hwdef" *) 
module StreamWriter
   (ACLK,
    ARESETN,
    TDATA,
    TLAST,
    TREADY,
    TVALID);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET ARESETN, CLK_DOMAIN StreamWriter_aclk_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ARESETN;
  output [7:0]TDATA;
  output [0:0]TLAST;
  input [0:0]TREADY;
  output [0:0]TVALID;

  wire [7:0]StreamWriter_m_axis_tdata;
  wire [0:0]StreamWriter_m_axis_tlast;
  wire [0:0]StreamWriter_m_axis_tvalid;
  wire aclk_0_1;
  wire aresetn_0_1;
  wire [0:0]m_axis_tready_0_1;

  assign TDATA[7:0] = StreamWriter_m_axis_tdata;
  assign TLAST[0] = StreamWriter_m_axis_tlast;
  assign TVALID[0] = StreamWriter_m_axis_tvalid;
  assign aclk_0_1 = ACLK;
  assign aresetn_0_1 = ARESETN;
  assign m_axis_tready_0_1 = TREADY[0];
  StreamWriter_axi4stream_vip_0_0 StreamWriter
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axis_tdata(StreamWriter_m_axis_tdata),
        .m_axis_tlast(StreamWriter_m_axis_tlast),
        .m_axis_tready(m_axis_tready_0_1),
        .m_axis_tvalid(StreamWriter_m_axis_tvalid));
endmodule
