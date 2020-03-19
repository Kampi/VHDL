// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Mar 17 07:21:00 2020
// Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/AXIS_I2S_Example/hardware/AXIS_I2S_Example.srcs/sources_1/bd/System/ip/System_clk_wiz_0_0/System_clk_wiz_0_0_stub.v
// Design      : System_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module System_clk_wiz_0_0(ClkAudio, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="ClkAudio,resetn,locked,clk_in1" */;
  output ClkAudio;
  input resetn;
  output locked;
  input clk_in1;
endmodule
