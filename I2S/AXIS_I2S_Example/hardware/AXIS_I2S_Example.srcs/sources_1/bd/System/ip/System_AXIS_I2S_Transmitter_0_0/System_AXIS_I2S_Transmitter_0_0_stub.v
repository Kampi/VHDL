// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Mon Mar 16 22:08:47 2020
// Host        : PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/Dropbox/Git/VHDL/I2S/AXIS_I2S_Example/hardware/AXIS_I2S_Example.srcs/sources_1/bd/System/ip/System_AXIS_I2S_Transmitter_0_0/System_AXIS_I2S_Transmitter_0_0_stub.v
// Design      : System_AXIS_I2S_Transmitter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXIS_I2S,Vivado 2019.2.1" *)
module System_AXIS_I2S_Transmitter_0_0(Audio_Reset, aclk, aresetn, TDATA_RXD, 
  TREADY_RXD, TVALID_RXD, MCLK, LRCLK, SCLK, SD, DataOut)
/* synthesis syn_black_box black_box_pad_pin="Audio_Reset,aclk,aresetn,TDATA_RXD[31:0],TREADY_RXD,TVALID_RXD,MCLK,LRCLK,SCLK,SD,DataOut[31:0]" */;
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
  output [31:0]DataOut;
endmodule
