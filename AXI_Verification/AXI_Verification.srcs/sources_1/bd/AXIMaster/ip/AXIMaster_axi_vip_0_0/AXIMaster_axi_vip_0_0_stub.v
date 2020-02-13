// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Feb 13 15:26:24 2020
// Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Daniel.Kampert/Desktop/Clock/Clock.srcs/sources_1/bd/AXIMaster/ip/AXIMaster_axi_vip_0_0/AXIMaster_axi_vip_0_0_stub.v
// Design      : AXIMaster_axi_vip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_vip_v1_1_6_top,Vivado 2019.2" *)
module AXIMaster_axi_vip_0_0(aclk, aresetn, m_axi_awaddr, m_axi_awvalid, 
  m_axi_awready, m_axi_wdata, m_axi_wvalid, m_axi_wready, m_axi_bvalid, m_axi_bready, 
  m_axi_araddr, m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,m_axi_awaddr[31:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[31:0],m_axi_wvalid,m_axi_wready,m_axi_bvalid,m_axi_bready,m_axi_araddr[31:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[31:0],m_axi_rvalid,m_axi_rready" */;
  input aclk;
  input aresetn;
  output [31:0]m_axi_awaddr;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output m_axi_wvalid;
  input m_axi_wready;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input m_axi_rvalid;
  output m_axi_rready;
endmodule
