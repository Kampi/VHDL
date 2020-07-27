// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Jun 20 20:57:35 2020
// Host        : PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {g:/Dropbox/Git/VHDL/AXI-Stream/AXI-Stream Slave/AXI-Stream
//               Slave.srcs/sources_1/bd/StreamWriter/ip/StreamWriter_axi4stream_vip_0_0/StreamWriter_axi4stream_vip_0_0_stub.v}
// Design      : StreamWriter_axi4stream_vip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi4stream_vip_v1_1_7_top,Vivado 2020.1" *)
module StreamWriter_axi4stream_vip_0_0(aclk, aresetn, m_axis_tvalid, m_axis_tready, 
  m_axis_tdata, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,m_axis_tvalid[0:0],m_axis_tready[0:0],m_axis_tdata[31:0],m_axis_tlast[0:0]" */;
  input aclk;
  input aresetn;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [31:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
endmodule
