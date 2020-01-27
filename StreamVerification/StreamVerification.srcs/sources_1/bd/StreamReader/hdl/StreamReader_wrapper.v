//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Aug  5 11:48:37 2019
//Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
//Command     : generate_target StreamReader_wrapper.bd
//Design      : StreamReader_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module StreamReader_wrapper
   (ACLK,
    ARESETN,
    TDATA,
    TLAST,
    TREADY,
    TVALID);
  input ACLK;
  input ARESETN;
  input [31:0]TDATA;
  input [0:0]TLAST;
  output [0:0]TREADY;
  input [0:0]TVALID;

  wire ACLK;
  wire ARESETN;
  wire [31:0]TDATA;
  wire [0:0]TLAST;
  wire [0:0]TREADY;
  wire [0:0]TVALID;

  StreamReader StreamReader_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .TDATA(TDATA),
        .TLAST(TLAST),
        .TREADY(TREADY),
        .TVALID(TVALID));
endmodule
