// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Mar 17 15:03:57 2020
// Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/AXIS_I2S_IP_Test/AXIS_I2S_IP_Test.srcs/sources_1/bd/DUT/ip/DUT_AXIS_I2S_Transmitter_0_0/DUT_AXIS_I2S_Transmitter_0_0_stub.v
// Design      : DUT_AXIS_I2S_Transmitter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXIS_I2S,Vivado 2019.2" *)
module DUT_AXIS_I2S_Transmitter_0_0(Audio_Reset, aclk, aresetn, TDATA_RXD, 
  TREADY_RXD, TVALID_RXD, MCLK, LRCLK, SCLK, SD)
/* synthesis syn_black_box black_box_pad_pin="Audio_Reset,aclk,aresetn,TDATA_RXD[31:0],TREADY_RXD,TVALID_RXD,MCLK,LRCLK,SCLK,SD" */;
  input Audio_Reset;
  input aclk;
  input aresetn;
  input [31:0]TDATA_RXD;
  output TREADY_RXD;
  input TVALID_RXD;
  input MCLK;
  output LRCLK;
  output SCLK;
  output SD;
endmodule
