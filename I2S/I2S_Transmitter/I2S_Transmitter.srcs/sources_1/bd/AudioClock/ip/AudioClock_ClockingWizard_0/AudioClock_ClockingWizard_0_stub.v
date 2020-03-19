// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Mar 18 12:01:20 2020
// Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/I2S_Transmitter/I2S_Transmitter.srcs/sources_1/bd/AudioClock/ip/AudioClock_ClockingWizard_0/AudioClock_ClockingWizard_0_stub.v
// Design      : AudioClock_ClockingWizard_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module AudioClock_ClockingWizard_0(MCLK, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="MCLK,resetn,locked,clk_in1" */;
  output MCLK;
  input resetn;
  output locked;
  input clk_in1;
endmodule
