//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Tue Mar 17 11:25:55 2020
//Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
//Command     : generate_target DUT_wrapper.bd
//Design      : DUT_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DUT_wrapper
   (AXIS_RXD_tdata,
    AXIS_RXD_tready,
    AXIS_RXD_tvalid,
    Audio_Reset,
    I2S_lrclk,
    I2S_sclk,
    I2S_sd,
    MCLK,
    aclk,
    aresetn);
  input [31:0]AXIS_RXD_tdata;
  output AXIS_RXD_tready;
  input AXIS_RXD_tvalid;
  input Audio_Reset;
  output I2S_lrclk;
  output I2S_sclk;
  output I2S_sd;
  input MCLK;
  input aclk;
  input aresetn;

  wire [31:0]AXIS_RXD_tdata;
  wire AXIS_RXD_tready;
  wire AXIS_RXD_tvalid;
  wire Audio_Reset;
  wire I2S_lrclk;
  wire I2S_sclk;
  wire I2S_sd;
  wire MCLK;
  wire aclk;
  wire aresetn;

  DUT DUT_i
       (.AXIS_RXD_tdata(AXIS_RXD_tdata),
        .AXIS_RXD_tready(AXIS_RXD_tready),
        .AXIS_RXD_tvalid(AXIS_RXD_tvalid),
        .Audio_Reset(Audio_Reset),
        .I2S_lrclk(I2S_lrclk),
        .I2S_sclk(I2S_sclk),
        .I2S_sd(I2S_sd),
        .MCLK(MCLK),
        .aclk(aclk),
        .aresetn(aresetn));
endmodule
