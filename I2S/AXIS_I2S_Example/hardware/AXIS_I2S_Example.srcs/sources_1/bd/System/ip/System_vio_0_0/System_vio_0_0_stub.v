// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Mon Mar 16 19:52:21 2020
// Host        : PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/Dropbox/Git/VHDL/I2S/AXIS_I2S_Example/hardware/AXIS_I2S_Example.srcs/sources_1/bd/System/ip/System_vio_0_0/System_vio_0_0_stub.v
// Design      : System_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.2.1" *)
module System_vio_0_0(clk, probe_in0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[31:0]" */;
  input clk;
  input [31:0]probe_in0;
endmodule
