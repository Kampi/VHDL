//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Feb 13 15:29:50 2020
//Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
//Command     : generate_target AXIMaster_wrapper.bd
//Design      : AXIMaster_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXIMaster_wrapper
   (ClockIn,
    GPIO_tri_i,
    ResetN);
  input ClockIn;
  input [1:0]GPIO_tri_i;
  input ResetN;

  wire ClockIn;
  wire [1:0]GPIO_tri_i;
  wire ResetN;

  AXIMaster AXIMaster_i
       (.ClockIn(ClockIn),
        .GPIO_tri_i(GPIO_tri_i),
        .ResetN(ResetN));
endmodule
