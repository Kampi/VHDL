//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sat Feb  1 23:20:15 2020
//Host        : PC running 64-bit major release  (build 9200)
//Command     : generate_target StreamWriter_wrapper.bd
//Design      : StreamWriter_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module StreamWriter_wrapper
   (ACLK,
    ARESETN,
    TDATA,
    TLAST,
    TREADY,
    TVALID);
  input ACLK;
  input ARESETN;
  output [31:0]TDATA;
  output [0:0]TLAST;
  input [0:0]TREADY;
  output [0:0]TVALID;

  wire ACLK;
  wire ARESETN;
  wire [31:0]TDATA;
  wire [0:0]TLAST;
  wire [0:0]TREADY;
  wire [0:0]TVALID;

  StreamWriter StreamWriter_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .TDATA(TDATA),
        .TLAST(TLAST),
        .TREADY(TREADY),
        .TVALID(TVALID));
endmodule
