// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Mar 17 15:03:57 2020
// Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/AXIS_I2S_IP_Test/AXIS_I2S_IP_Test.srcs/sources_1/bd/DUT/ip/DUT_AXIS_I2S_Transmitter_0_0/DUT_AXIS_I2S_Transmitter_0_0_sim_netlist.v
// Design      : DUT_AXIS_I2S_Transmitter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DUT_AXIS_I2S_Transmitter_0_0,AXIS_I2S,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "AXIS_I2S,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module DUT_AXIS_I2S_Transmitter_0_0
   (Audio_Reset,
    aclk,
    aresetn,
    TDATA_RXD,
    TREADY_RXD,
    TVALID_RXD,
    MCLK,
    LRCLK,
    SCLK,
    SD);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Audio_ResetN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Audio_ResetN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Audio_Reset;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF AXIS_RXD, ASSOCIATED_RESET aresetn, PHASE 0.000, CLK_DOMAIN DUT_aclk, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXIS_RXD TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME AXIS_RXD, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.000, CLK_DOMAIN DUT_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]TDATA_RXD;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXIS_RXD TREADY" *) output TREADY_RXD;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXIS_RXD TVALID" *) input TVALID_RXD;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Audio_MCLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Audio_MCLK, ASSOCIATED_RESET Audio_Reset, ASSOCIATED_BUSIF I2S, PHASE 0.000, CLK_DOMAIN DUT_MCLK, INSERT_VIP 0" *) input MCLK;
  (* x_interface_info = "www.kampis-elektroecke.de:Kampis-Elektroecke:I2S:1.0 I2S LRCLK" *) output LRCLK;
  (* x_interface_info = "www.kampis-elektroecke.de:Kampis-Elektroecke:I2S:1.0 I2S SCLK" *) output SCLK;
  (* x_interface_info = "www.kampis-elektroecke.de:Kampis-Elektroecke:I2S:1.0 I2S SD" *) output SD;

  wire Audio_Reset;
  wire LRCLK;
  wire MCLK;
  wire SCLK;
  wire SD;
  wire [31:0]TDATA_RXD;
  wire TREADY_RXD;
  wire TVALID_RXD;
  wire aclk;
  wire aresetn;

  DUT_AXIS_I2S_Transmitter_0_0_AXIS_I2S U0
       (.Audio_Reset(Audio_Reset),
        .LRCLK(LRCLK),
        .MCLK(MCLK),
        .SCLK(SCLK),
        .SD(SD),
        .TDATA_RXD(TDATA_RXD),
        .TREADY_RXD(TREADY_RXD),
        .TVALID_RXD(TVALID_RXD),
        .aclk(aclk),
        .aresetn(aresetn));
endmodule

(* ORIG_REF_NAME = "AXIS_I2S" *) 
module DUT_AXIS_I2S_Transmitter_0_0_AXIS_I2S
   (LRCLK,
    SD,
    TREADY_RXD,
    SCLK,
    Audio_Reset,
    aresetn,
    aclk,
    MCLK,
    TVALID_RXD,
    TDATA_RXD);
  output LRCLK;
  output SD;
  output TREADY_RXD;
  output SCLK;
  input Audio_Reset;
  input aresetn;
  input aclk;
  input MCLK;
  input TVALID_RXD;
  input [31:0]TDATA_RXD;

  wire Audio_Reset;
  wire [0:0]CurrentState;
  wire \FIFO[31]_i_1_n_0 ;
  wire \FIFO[31]_i_2_n_0 ;
  wire \FIFO_reg_n_0_[0] ;
  wire \FIFO_reg_n_0_[10] ;
  wire \FIFO_reg_n_0_[11] ;
  wire \FIFO_reg_n_0_[12] ;
  wire \FIFO_reg_n_0_[13] ;
  wire \FIFO_reg_n_0_[14] ;
  wire \FIFO_reg_n_0_[15] ;
  wire \FIFO_reg_n_0_[16] ;
  wire \FIFO_reg_n_0_[17] ;
  wire \FIFO_reg_n_0_[18] ;
  wire \FIFO_reg_n_0_[19] ;
  wire \FIFO_reg_n_0_[1] ;
  wire \FIFO_reg_n_0_[20] ;
  wire \FIFO_reg_n_0_[21] ;
  wire \FIFO_reg_n_0_[22] ;
  wire \FIFO_reg_n_0_[23] ;
  wire \FIFO_reg_n_0_[24] ;
  wire \FIFO_reg_n_0_[25] ;
  wire \FIFO_reg_n_0_[26] ;
  wire \FIFO_reg_n_0_[27] ;
  wire \FIFO_reg_n_0_[28] ;
  wire \FIFO_reg_n_0_[29] ;
  wire \FIFO_reg_n_0_[2] ;
  wire \FIFO_reg_n_0_[30] ;
  wire \FIFO_reg_n_0_[31] ;
  wire \FIFO_reg_n_0_[3] ;
  wire \FIFO_reg_n_0_[4] ;
  wire \FIFO_reg_n_0_[5] ;
  wire \FIFO_reg_n_0_[6] ;
  wire \FIFO_reg_n_0_[7] ;
  wire \FIFO_reg_n_0_[8] ;
  wire \FIFO_reg_n_0_[9] ;
  wire \FSM_sequential_CurrentState[0]_i_1__0_n_0 ;
  wire \FSM_sequential_CurrentState[1]_i_1__0_n_0 ;
  wire \FSM_sequential_CurrentState_reg_n_0_[1] ;
  wire LRCLK;
  wire MCLK;
  wire SCLK;
  wire SD;
  wire [31:0]TDATA_RXD;
  wire TREADY_RXD;
  wire TREADY_RXD_i_1_n_0;
  wire TVALID_RXD;
  wire [31:0]TransmitterFIFO;
  wire TransmitterReady_0;
  wire TransmitterReady_1;
  wire [0:0]TransmitterValid;
  wire \TransmitterValid[0]_i_1_n_0 ;
  wire aclk;
  wire aresetn;
  wire NLW_xpm_cdc_Valid_dest_out_UNCONNECTED;

  LUT3 #(
    .INIT(8'h04)) 
    \FIFO[31]_i_1 
       (.I0(CurrentState),
        .I1(aresetn),
        .I2(\FSM_sequential_CurrentState_reg_n_0_[1] ),
        .O(\FIFO[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00A2)) 
    \FIFO[31]_i_2 
       (.I0(aresetn),
        .I1(\FSM_sequential_CurrentState_reg_n_0_[1] ),
        .I2(TVALID_RXD),
        .I3(CurrentState),
        .O(\FIFO[31]_i_2_n_0 ));
  FDRE \FIFO_reg[0] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[0]),
        .Q(\FIFO_reg_n_0_[0] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[10] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[10]),
        .Q(\FIFO_reg_n_0_[10] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[11] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[11]),
        .Q(\FIFO_reg_n_0_[11] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[12] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[12]),
        .Q(\FIFO_reg_n_0_[12] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[13] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[13]),
        .Q(\FIFO_reg_n_0_[13] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[14] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[14]),
        .Q(\FIFO_reg_n_0_[14] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[15] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[15]),
        .Q(\FIFO_reg_n_0_[15] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[16] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[16]),
        .Q(\FIFO_reg_n_0_[16] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[17] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[17]),
        .Q(\FIFO_reg_n_0_[17] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[18] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[18]),
        .Q(\FIFO_reg_n_0_[18] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[19] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[19]),
        .Q(\FIFO_reg_n_0_[19] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[1] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[1]),
        .Q(\FIFO_reg_n_0_[1] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[20] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[20]),
        .Q(\FIFO_reg_n_0_[20] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[21] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[21]),
        .Q(\FIFO_reg_n_0_[21] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[22] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[22]),
        .Q(\FIFO_reg_n_0_[22] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[23] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[23]),
        .Q(\FIFO_reg_n_0_[23] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[24] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[24]),
        .Q(\FIFO_reg_n_0_[24] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[25] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[25]),
        .Q(\FIFO_reg_n_0_[25] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[26] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[26]),
        .Q(\FIFO_reg_n_0_[26] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[27] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[27]),
        .Q(\FIFO_reg_n_0_[27] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[28] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[28]),
        .Q(\FIFO_reg_n_0_[28] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[29] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[29]),
        .Q(\FIFO_reg_n_0_[29] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[2] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[2]),
        .Q(\FIFO_reg_n_0_[2] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[30] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[30]),
        .Q(\FIFO_reg_n_0_[30] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[31] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[31]),
        .Q(\FIFO_reg_n_0_[31] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[3] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[3]),
        .Q(\FIFO_reg_n_0_[3] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[4] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[4]),
        .Q(\FIFO_reg_n_0_[4] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[5] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[5]),
        .Q(\FIFO_reg_n_0_[5] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[6] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[6]),
        .Q(\FIFO_reg_n_0_[6] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[7] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[7]),
        .Q(\FIFO_reg_n_0_[7] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[8] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[8]),
        .Q(\FIFO_reg_n_0_[8] ),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE \FIFO_reg[9] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[9]),
        .Q(\FIFO_reg_n_0_[9] ),
        .R(\FIFO[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hD9FB0000)) 
    \FSM_sequential_CurrentState[0]_i_1__0 
       (.I0(CurrentState),
        .I1(\FSM_sequential_CurrentState_reg_n_0_[1] ),
        .I2(TVALID_RXD),
        .I3(TransmitterReady_1),
        .I4(aresetn),
        .O(\FSM_sequential_CurrentState[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \FSM_sequential_CurrentState[1]_i_1__0 
       (.I0(TransmitterReady_1),
        .I1(CurrentState),
        .I2(\FSM_sequential_CurrentState_reg_n_0_[1] ),
        .I3(aresetn),
        .O(\FSM_sequential_CurrentState[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "state_reset:00,waitforvalid:10,waitforbusy:11,state_waitfortransmitterready:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_CurrentState[0]_i_1__0_n_0 ),
        .Q(CurrentState),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_reset:00,waitforvalid:10,waitforbusy:11,state_waitfortransmitterready:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_CurrentState[1]_i_1__0_n_0 ),
        .Q(\FSM_sequential_CurrentState_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    TREADY_RXD_i_1
       (.I0(CurrentState),
        .I1(aresetn),
        .I2(\FSM_sequential_CurrentState_reg_n_0_[1] ),
        .I3(TREADY_RXD),
        .O(TREADY_RXD_i_1_n_0));
  FDRE TREADY_RXD_reg
       (.C(aclk),
        .CE(1'b1),
        .D(TREADY_RXD_i_1_n_0),
        .Q(TREADY_RXD),
        .R(1'b0));
  DUT_AXIS_I2S_Transmitter_0_0_I2S_Transmitter Transmitter
       (.Audio_Reset(Audio_Reset),
        .LRCLK(LRCLK),
        .MCLK(MCLK),
        .SCLK(SCLK),
        .SD(SD),
        .dest_out_bin(TransmitterFIFO),
        .src_in(TransmitterReady_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hDD80)) 
    \TransmitterValid[0]_i_1 
       (.I0(aresetn),
        .I1(\FSM_sequential_CurrentState_reg_n_0_[1] ),
        .I2(CurrentState),
        .I3(TransmitterValid),
        .O(\TransmitterValid[0]_i_1_n_0 ));
  FDRE \TransmitterValid_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\TransmitterValid[0]_i_1_n_0 ),
        .Q(TransmitterValid),
        .R(1'b0));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "32" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  DUT_AXIS_I2S_Transmitter_0_0_xpm_cdc_gray xpm_cdc_Data
       (.dest_clk(MCLK),
        .dest_out_bin(TransmitterFIFO),
        .src_clk(aclk),
        .src_in_bin({\FIFO_reg_n_0_[31] ,\FIFO_reg_n_0_[30] ,\FIFO_reg_n_0_[29] ,\FIFO_reg_n_0_[28] ,\FIFO_reg_n_0_[27] ,\FIFO_reg_n_0_[26] ,\FIFO_reg_n_0_[25] ,\FIFO_reg_n_0_[24] ,\FIFO_reg_n_0_[23] ,\FIFO_reg_n_0_[22] ,\FIFO_reg_n_0_[21] ,\FIFO_reg_n_0_[20] ,\FIFO_reg_n_0_[19] ,\FIFO_reg_n_0_[18] ,\FIFO_reg_n_0_[17] ,\FIFO_reg_n_0_[16] ,\FIFO_reg_n_0_[15] ,\FIFO_reg_n_0_[14] ,\FIFO_reg_n_0_[13] ,\FIFO_reg_n_0_[12] ,\FIFO_reg_n_0_[11] ,\FIFO_reg_n_0_[10] ,\FIFO_reg_n_0_[9] ,\FIFO_reg_n_0_[8] ,\FIFO_reg_n_0_[7] ,\FIFO_reg_n_0_[6] ,\FIFO_reg_n_0_[5] ,\FIFO_reg_n_0_[4] ,\FIFO_reg_n_0_[3] ,\FIFO_reg_n_0_[2] ,\FIFO_reg_n_0_[1] ,\FIFO_reg_n_0_[0] }));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  DUT_AXIS_I2S_Transmitter_0_0_xpm_cdc_single__2 xpm_cdc_Ready
       (.dest_clk(aclk),
        .dest_out(TransmitterReady_1),
        .src_clk(MCLK),
        .src_in(TransmitterReady_0));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  DUT_AXIS_I2S_Transmitter_0_0_xpm_cdc_single xpm_cdc_Valid
       (.dest_clk(MCLK),
        .dest_out(NLW_xpm_cdc_Valid_dest_out_UNCONNECTED),
        .src_clk(aclk),
        .src_in(TransmitterValid));
endmodule

(* ORIG_REF_NAME = "I2S_Transmitter" *) 
module DUT_AXIS_I2S_Transmitter_0_0_I2S_Transmitter
   (src_in,
    LRCLK,
    SD,
    SCLK,
    MCLK,
    Audio_Reset,
    dest_out_bin);
  output src_in;
  output LRCLK;
  output SD;
  output SCLK;
  input MCLK;
  input Audio_Reset;
  input [31:0]dest_out_bin;

  wire Audio_Reset;
  wire \BitCounter[0]_i_1_n_0 ;
  wire \BitCounter[10]_i_1_n_0 ;
  wire \BitCounter[11]_i_1_n_0 ;
  wire \BitCounter[12]_i_1_n_0 ;
  wire \BitCounter[13]_i_1_n_0 ;
  wire \BitCounter[14]_i_1_n_0 ;
  wire \BitCounter[15]_i_1_n_0 ;
  wire \BitCounter[16]_i_1_n_0 ;
  wire \BitCounter[17]_i_1_n_0 ;
  wire \BitCounter[18]_i_1_n_0 ;
  wire \BitCounter[19]_i_1_n_0 ;
  wire \BitCounter[1]_i_1_n_0 ;
  wire \BitCounter[20]_i_1_n_0 ;
  wire \BitCounter[21]_i_1_n_0 ;
  wire \BitCounter[22]_i_1_n_0 ;
  wire \BitCounter[23]_i_1_n_0 ;
  wire \BitCounter[24]_i_1_n_0 ;
  wire \BitCounter[25]_i_1_n_0 ;
  wire \BitCounter[26]_i_1_n_0 ;
  wire \BitCounter[27]_i_1_n_0 ;
  wire \BitCounter[28]_i_1_n_0 ;
  wire \BitCounter[29]_i_1_n_0 ;
  wire \BitCounter[2]_i_1_n_0 ;
  wire \BitCounter[30]_i_1_n_0 ;
  wire \BitCounter[31]_i_1_n_0 ;
  wire \BitCounter[3]_i_1_n_0 ;
  wire \BitCounter[4]_i_1_n_0 ;
  wire \BitCounter[5]_i_1_n_0 ;
  wire \BitCounter[6]_i_1_n_0 ;
  wire \BitCounter[7]_i_1_n_0 ;
  wire \BitCounter[8]_i_1_n_0 ;
  wire \BitCounter[9]_i_1_n_0 ;
  wire \BitCounter_reg_n_0_[0] ;
  wire \BitCounter_reg_n_0_[10] ;
  wire \BitCounter_reg_n_0_[11] ;
  wire \BitCounter_reg_n_0_[12] ;
  wire \BitCounter_reg_n_0_[13] ;
  wire \BitCounter_reg_n_0_[14] ;
  wire \BitCounter_reg_n_0_[15] ;
  wire \BitCounter_reg_n_0_[16] ;
  wire \BitCounter_reg_n_0_[17] ;
  wire \BitCounter_reg_n_0_[18] ;
  wire \BitCounter_reg_n_0_[19] ;
  wire \BitCounter_reg_n_0_[1] ;
  wire \BitCounter_reg_n_0_[20] ;
  wire \BitCounter_reg_n_0_[21] ;
  wire \BitCounter_reg_n_0_[22] ;
  wire \BitCounter_reg_n_0_[23] ;
  wire \BitCounter_reg_n_0_[24] ;
  wire \BitCounter_reg_n_0_[25] ;
  wire \BitCounter_reg_n_0_[26] ;
  wire \BitCounter_reg_n_0_[27] ;
  wire \BitCounter_reg_n_0_[28] ;
  wire \BitCounter_reg_n_0_[29] ;
  wire \BitCounter_reg_n_0_[2] ;
  wire \BitCounter_reg_n_0_[30] ;
  wire \BitCounter_reg_n_0_[31] ;
  wire \BitCounter_reg_n_0_[3] ;
  wire \BitCounter_reg_n_0_[4] ;
  wire \BitCounter_reg_n_0_[5] ;
  wire \BitCounter_reg_n_0_[6] ;
  wire \BitCounter_reg_n_0_[7] ;
  wire \BitCounter_reg_n_0_[8] ;
  wire \BitCounter_reg_n_0_[9] ;
  wire Counter1;
  wire Counter1_carry__0_i_1_n_0;
  wire Counter1_carry__0_i_2_n_0;
  wire Counter1_carry__0_i_3_n_0;
  wire Counter1_carry__0_i_4_n_0;
  wire Counter1_carry__0_n_0;
  wire Counter1_carry__0_n_1;
  wire Counter1_carry__0_n_2;
  wire Counter1_carry__0_n_3;
  wire Counter1_carry__1_i_1_n_0;
  wire Counter1_carry__1_i_2_n_0;
  wire Counter1_carry__1_i_3_n_0;
  wire Counter1_carry__1_i_4_n_0;
  wire Counter1_carry__1_n_0;
  wire Counter1_carry__1_n_1;
  wire Counter1_carry__1_n_2;
  wire Counter1_carry__1_n_3;
  wire Counter1_carry__2_i_1_n_0;
  wire Counter1_carry__2_i_2_n_0;
  wire Counter1_carry__2_i_3_n_0;
  wire Counter1_carry__2_i_4_n_0;
  wire Counter1_carry__2_n_1;
  wire Counter1_carry__2_n_2;
  wire Counter1_carry__2_n_3;
  wire Counter1_carry_i_1_n_0;
  wire Counter1_carry_i_2_n_0;
  wire Counter1_carry_i_3_n_0;
  wire Counter1_carry_i_4_n_0;
  wire Counter1_carry_i_5_n_0;
  wire Counter1_carry_n_0;
  wire Counter1_carry_n_1;
  wire Counter1_carry_n_2;
  wire Counter1_carry_n_3;
  wire \Counter[0]_i_1_n_0 ;
  wire \Counter[0]_i_3_n_0 ;
  wire [31:0]Counter_reg;
  wire \Counter_reg[0]_i_2_n_0 ;
  wire \Counter_reg[0]_i_2_n_1 ;
  wire \Counter_reg[0]_i_2_n_2 ;
  wire \Counter_reg[0]_i_2_n_3 ;
  wire \Counter_reg[0]_i_2_n_4 ;
  wire \Counter_reg[0]_i_2_n_5 ;
  wire \Counter_reg[0]_i_2_n_6 ;
  wire \Counter_reg[0]_i_2_n_7 ;
  wire \Counter_reg[12]_i_1_n_0 ;
  wire \Counter_reg[12]_i_1_n_1 ;
  wire \Counter_reg[12]_i_1_n_2 ;
  wire \Counter_reg[12]_i_1_n_3 ;
  wire \Counter_reg[12]_i_1_n_4 ;
  wire \Counter_reg[12]_i_1_n_5 ;
  wire \Counter_reg[12]_i_1_n_6 ;
  wire \Counter_reg[12]_i_1_n_7 ;
  wire \Counter_reg[16]_i_1_n_0 ;
  wire \Counter_reg[16]_i_1_n_1 ;
  wire \Counter_reg[16]_i_1_n_2 ;
  wire \Counter_reg[16]_i_1_n_3 ;
  wire \Counter_reg[16]_i_1_n_4 ;
  wire \Counter_reg[16]_i_1_n_5 ;
  wire \Counter_reg[16]_i_1_n_6 ;
  wire \Counter_reg[16]_i_1_n_7 ;
  wire \Counter_reg[20]_i_1_n_0 ;
  wire \Counter_reg[20]_i_1_n_1 ;
  wire \Counter_reg[20]_i_1_n_2 ;
  wire \Counter_reg[20]_i_1_n_3 ;
  wire \Counter_reg[20]_i_1_n_4 ;
  wire \Counter_reg[20]_i_1_n_5 ;
  wire \Counter_reg[20]_i_1_n_6 ;
  wire \Counter_reg[20]_i_1_n_7 ;
  wire \Counter_reg[24]_i_1_n_0 ;
  wire \Counter_reg[24]_i_1_n_1 ;
  wire \Counter_reg[24]_i_1_n_2 ;
  wire \Counter_reg[24]_i_1_n_3 ;
  wire \Counter_reg[24]_i_1_n_4 ;
  wire \Counter_reg[24]_i_1_n_5 ;
  wire \Counter_reg[24]_i_1_n_6 ;
  wire \Counter_reg[24]_i_1_n_7 ;
  wire \Counter_reg[28]_i_1_n_1 ;
  wire \Counter_reg[28]_i_1_n_2 ;
  wire \Counter_reg[28]_i_1_n_3 ;
  wire \Counter_reg[28]_i_1_n_4 ;
  wire \Counter_reg[28]_i_1_n_5 ;
  wire \Counter_reg[28]_i_1_n_6 ;
  wire \Counter_reg[28]_i_1_n_7 ;
  wire \Counter_reg[4]_i_1_n_0 ;
  wire \Counter_reg[4]_i_1_n_1 ;
  wire \Counter_reg[4]_i_1_n_2 ;
  wire \Counter_reg[4]_i_1_n_3 ;
  wire \Counter_reg[4]_i_1_n_4 ;
  wire \Counter_reg[4]_i_1_n_5 ;
  wire \Counter_reg[4]_i_1_n_6 ;
  wire \Counter_reg[4]_i_1_n_7 ;
  wire \Counter_reg[8]_i_1_n_0 ;
  wire \Counter_reg[8]_i_1_n_1 ;
  wire \Counter_reg[8]_i_1_n_2 ;
  wire \Counter_reg[8]_i_1_n_3 ;
  wire \Counter_reg[8]_i_1_n_4 ;
  wire \Counter_reg[8]_i_1_n_5 ;
  wire \Counter_reg[8]_i_1_n_6 ;
  wire \Counter_reg[8]_i_1_n_7 ;
  wire [1:0]CurrentState;
  wire CurrentState1_carry__0_i_1_n_0;
  wire CurrentState1_carry__0_i_2_n_0;
  wire CurrentState1_carry__0_i_3_n_0;
  wire CurrentState1_carry__0_i_4_n_0;
  wire CurrentState1_carry__0_n_0;
  wire CurrentState1_carry__0_n_1;
  wire CurrentState1_carry__0_n_2;
  wire CurrentState1_carry__0_n_3;
  wire CurrentState1_carry__1_i_1_n_0;
  wire CurrentState1_carry__1_i_2_n_0;
  wire CurrentState1_carry__1_i_3_n_0;
  wire CurrentState1_carry__1_i_4_n_0;
  wire CurrentState1_carry__1_n_0;
  wire CurrentState1_carry__1_n_1;
  wire CurrentState1_carry__1_n_2;
  wire CurrentState1_carry__1_n_3;
  wire CurrentState1_carry__2_i_1_n_0;
  wire CurrentState1_carry__2_i_2_n_0;
  wire CurrentState1_carry__2_i_3_n_0;
  wire CurrentState1_carry__2_i_4_n_0;
  wire CurrentState1_carry__2_n_0;
  wire CurrentState1_carry__2_n_1;
  wire CurrentState1_carry__2_n_2;
  wire CurrentState1_carry__2_n_3;
  wire CurrentState1_carry_i_1_n_0;
  wire CurrentState1_carry_i_2_n_0;
  wire CurrentState1_carry_i_3_n_0;
  wire CurrentState1_carry_i_4_n_0;
  wire CurrentState1_carry_i_5_n_0;
  wire CurrentState1_carry_i_6_n_0;
  wire CurrentState1_carry_i_7_n_0;
  wire CurrentState1_carry_n_0;
  wire CurrentState1_carry_n_1;
  wire CurrentState1_carry_n_2;
  wire CurrentState1_carry_n_3;
  wire CurrentState2_carry__0_n_0;
  wire CurrentState2_carry__0_n_1;
  wire CurrentState2_carry__0_n_2;
  wire CurrentState2_carry__0_n_3;
  wire CurrentState2_carry__1_n_0;
  wire CurrentState2_carry__1_n_1;
  wire CurrentState2_carry__1_n_2;
  wire CurrentState2_carry__1_n_3;
  wire CurrentState2_carry__2_n_0;
  wire CurrentState2_carry__2_n_1;
  wire CurrentState2_carry__2_n_2;
  wire CurrentState2_carry__2_n_3;
  wire CurrentState2_carry__3_n_0;
  wire CurrentState2_carry__3_n_1;
  wire CurrentState2_carry__3_n_2;
  wire CurrentState2_carry__3_n_3;
  wire CurrentState2_carry__4_n_0;
  wire CurrentState2_carry__4_n_1;
  wire CurrentState2_carry__4_n_2;
  wire CurrentState2_carry__4_n_3;
  wire CurrentState2_carry__5_n_0;
  wire CurrentState2_carry__5_n_1;
  wire CurrentState2_carry__5_n_2;
  wire CurrentState2_carry__5_n_3;
  wire CurrentState2_carry__6_n_2;
  wire CurrentState2_carry__6_n_3;
  wire CurrentState2_carry_n_0;
  wire CurrentState2_carry_n_1;
  wire CurrentState2_carry_n_2;
  wire CurrentState2_carry_n_3;
  wire [31:0]Data_Int;
  wire \Data_Int[31]_i_1_n_0 ;
  wire \Data_Int_reg_n_0_[0] ;
  wire \Data_Int_reg_n_0_[10] ;
  wire \Data_Int_reg_n_0_[11] ;
  wire \Data_Int_reg_n_0_[12] ;
  wire \Data_Int_reg_n_0_[13] ;
  wire \Data_Int_reg_n_0_[14] ;
  wire \Data_Int_reg_n_0_[15] ;
  wire \Data_Int_reg_n_0_[16] ;
  wire \Data_Int_reg_n_0_[17] ;
  wire \Data_Int_reg_n_0_[18] ;
  wire \Data_Int_reg_n_0_[19] ;
  wire \Data_Int_reg_n_0_[1] ;
  wire \Data_Int_reg_n_0_[20] ;
  wire \Data_Int_reg_n_0_[21] ;
  wire \Data_Int_reg_n_0_[22] ;
  wire \Data_Int_reg_n_0_[23] ;
  wire \Data_Int_reg_n_0_[24] ;
  wire \Data_Int_reg_n_0_[25] ;
  wire \Data_Int_reg_n_0_[26] ;
  wire \Data_Int_reg_n_0_[27] ;
  wire \Data_Int_reg_n_0_[28] ;
  wire \Data_Int_reg_n_0_[29] ;
  wire \Data_Int_reg_n_0_[2] ;
  wire \Data_Int_reg_n_0_[30] ;
  wire \Data_Int_reg_n_0_[3] ;
  wire \Data_Int_reg_n_0_[4] ;
  wire \Data_Int_reg_n_0_[5] ;
  wire \Data_Int_reg_n_0_[6] ;
  wire \Data_Int_reg_n_0_[7] ;
  wire \Data_Int_reg_n_0_[8] ;
  wire \Data_Int_reg_n_0_[9] ;
  wire Enable_i_1_n_0;
  wire Enable_reg_n_0;
  wire \FSM_sequential_CurrentState[0]_i_1_n_0 ;
  wire \FSM_sequential_CurrentState[1]_i_1_n_0 ;
  wire LRCLK;
  wire LRCLK1;
  wire LRCLK_i_10_n_0;
  wire LRCLK_i_12_n_0;
  wire LRCLK_i_13_n_0;
  wire LRCLK_i_14_n_0;
  wire LRCLK_i_15_n_0;
  wire LRCLK_i_16_n_0;
  wire LRCLK_i_17_n_0;
  wire LRCLK_i_18_n_0;
  wire LRCLK_i_19_n_0;
  wire LRCLK_i_1_n_0;
  wire LRCLK_i_20_n_0;
  wire LRCLK_i_4_n_0;
  wire LRCLK_i_5_n_0;
  wire LRCLK_i_7_n_0;
  wire LRCLK_i_8_n_0;
  wire LRCLK_i_9_n_0;
  wire LRCLK_reg_i_11_n_0;
  wire LRCLK_reg_i_11_n_1;
  wire LRCLK_reg_i_11_n_2;
  wire LRCLK_reg_i_11_n_3;
  wire LRCLK_reg_i_2_n_3;
  wire LRCLK_reg_i_3_n_0;
  wire LRCLK_reg_i_3_n_1;
  wire LRCLK_reg_i_3_n_2;
  wire LRCLK_reg_i_3_n_3;
  wire LRCLK_reg_i_6_n_0;
  wire LRCLK_reg_i_6_n_1;
  wire LRCLK_reg_i_6_n_2;
  wire LRCLK_reg_i_6_n_3;
  wire MCLK;
  wire Ready_i_1_n_0;
  wire SCLK;
  wire SCLK_Int_i_1_n_0;
  wire SCLK_Int_reg_n_0;
  wire SD;
  wire SD_i_1_n_0;
  wire [31:0]dest_out_bin;
  wire [31:1]in10;
  wire p_0_in;
  wire src_in;
  wire [3:0]NLW_Counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_Counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_CurrentState1_carry_O_UNCONNECTED;
  wire [3:0]NLW_CurrentState1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_CurrentState1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_CurrentState1_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_CurrentState2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_CurrentState2_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_LRCLK_reg_i_11_O_UNCONNECTED;
  wire [3:2]NLW_LRCLK_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_LRCLK_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_LRCLK_reg_i_6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \BitCounter[0]_i_1 
       (.I0(CurrentState[0]),
        .I1(CurrentState[1]),
        .I2(\BitCounter_reg_n_0_[0] ),
        .O(\BitCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[10]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[10]),
        .I2(CurrentState[1]),
        .O(\BitCounter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[11]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[11]),
        .I2(CurrentState[1]),
        .O(\BitCounter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[12]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[12]),
        .I2(CurrentState[1]),
        .O(\BitCounter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[13]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[13]),
        .I2(CurrentState[1]),
        .O(\BitCounter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[14]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[14]),
        .I2(CurrentState[1]),
        .O(\BitCounter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[15]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[15]),
        .I2(CurrentState[1]),
        .O(\BitCounter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[16]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[16]),
        .I2(CurrentState[1]),
        .O(\BitCounter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[17]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[17]),
        .I2(CurrentState[1]),
        .O(\BitCounter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[18]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[18]),
        .I2(CurrentState[1]),
        .O(\BitCounter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[19]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[19]),
        .I2(CurrentState[1]),
        .O(\BitCounter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[1]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[1]),
        .I2(CurrentState[1]),
        .O(\BitCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[20]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[20]),
        .I2(CurrentState[1]),
        .O(\BitCounter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[21]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[21]),
        .I2(CurrentState[1]),
        .O(\BitCounter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[22]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[22]),
        .I2(CurrentState[1]),
        .O(\BitCounter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[23]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[23]),
        .I2(CurrentState[1]),
        .O(\BitCounter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[24]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[24]),
        .I2(CurrentState[1]),
        .O(\BitCounter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[25]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[25]),
        .I2(CurrentState[1]),
        .O(\BitCounter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[26]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[26]),
        .I2(CurrentState[1]),
        .O(\BitCounter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[27]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[27]),
        .I2(CurrentState[1]),
        .O(\BitCounter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[28]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[28]),
        .I2(CurrentState[1]),
        .O(\BitCounter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[29]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[29]),
        .I2(CurrentState[1]),
        .O(\BitCounter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[2]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[2]),
        .I2(CurrentState[1]),
        .O(\BitCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[30]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[30]),
        .I2(CurrentState[1]),
        .O(\BitCounter[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[31]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[31]),
        .I2(CurrentState[1]),
        .O(\BitCounter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[3]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[3]),
        .I2(CurrentState[1]),
        .O(\BitCounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[4]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[4]),
        .I2(CurrentState[1]),
        .O(\BitCounter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[5]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[5]),
        .I2(CurrentState[1]),
        .O(\BitCounter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[6]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[6]),
        .I2(CurrentState[1]),
        .O(\BitCounter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[7]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[7]),
        .I2(CurrentState[1]),
        .O(\BitCounter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[8]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[8]),
        .I2(CurrentState[1]),
        .O(\BitCounter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[9]_i_1 
       (.I0(CurrentState[0]),
        .I1(in10[9]),
        .I2(CurrentState[1]),
        .O(\BitCounter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[0] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[0]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[10] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[10]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[11] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[11]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[12] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[12]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[13] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[13]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[14] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[14]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[15] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[15]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[16] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[16]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[17] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[17]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[18] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[18]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[19] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[19]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[1] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[1]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[20] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[20]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[21] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[21]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[22] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[22]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[23] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[23]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[24] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[24]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[25] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[25]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[26] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[26]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[27] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[27]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[28] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[28]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[29] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[29]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[2] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[2]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[30] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[30]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[31] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[31]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[3] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[3]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[4] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[4]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[5] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[5]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[6] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[6]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[7] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[7]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[8] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[8]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[9] 
       (.C(SCLK_Int_reg_n_0),
        .CE(Audio_Reset),
        .D(\BitCounter[9]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 Counter1_carry
       (.CI(1'b0),
        .CO({Counter1_carry_n_0,Counter1_carry_n_1,Counter1_carry_n_2,Counter1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Counter1_carry_i_1_n_0}),
        .O(NLW_Counter1_carry_O_UNCONNECTED[3:0]),
        .S({Counter1_carry_i_2_n_0,Counter1_carry_i_3_n_0,Counter1_carry_i_4_n_0,Counter1_carry_i_5_n_0}));
  CARRY4 Counter1_carry__0
       (.CI(Counter1_carry_n_0),
        .CO({Counter1_carry__0_n_0,Counter1_carry__0_n_1,Counter1_carry__0_n_2,Counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({Counter1_carry__0_i_1_n_0,Counter1_carry__0_i_2_n_0,Counter1_carry__0_i_3_n_0,Counter1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__0_i_1
       (.I0(Counter_reg[14]),
        .I1(Counter_reg[15]),
        .O(Counter1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__0_i_2
       (.I0(Counter_reg[12]),
        .I1(Counter_reg[13]),
        .O(Counter1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__0_i_3
       (.I0(Counter_reg[10]),
        .I1(Counter_reg[11]),
        .O(Counter1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__0_i_4
       (.I0(Counter_reg[8]),
        .I1(Counter_reg[9]),
        .O(Counter1_carry__0_i_4_n_0));
  CARRY4 Counter1_carry__1
       (.CI(Counter1_carry__0_n_0),
        .CO({Counter1_carry__1_n_0,Counter1_carry__1_n_1,Counter1_carry__1_n_2,Counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({Counter1_carry__1_i_1_n_0,Counter1_carry__1_i_2_n_0,Counter1_carry__1_i_3_n_0,Counter1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__1_i_1
       (.I0(Counter_reg[22]),
        .I1(Counter_reg[23]),
        .O(Counter1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__1_i_2
       (.I0(Counter_reg[20]),
        .I1(Counter_reg[21]),
        .O(Counter1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__1_i_3
       (.I0(Counter_reg[18]),
        .I1(Counter_reg[19]),
        .O(Counter1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__1_i_4
       (.I0(Counter_reg[16]),
        .I1(Counter_reg[17]),
        .O(Counter1_carry__1_i_4_n_0));
  CARRY4 Counter1_carry__2
       (.CI(Counter1_carry__1_n_0),
        .CO({Counter1,Counter1_carry__2_n_1,Counter1_carry__2_n_2,Counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({Counter_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_Counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({Counter1_carry__2_i_1_n_0,Counter1_carry__2_i_2_n_0,Counter1_carry__2_i_3_n_0,Counter1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__2_i_1
       (.I0(Counter_reg[30]),
        .I1(Counter_reg[31]),
        .O(Counter1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__2_i_2
       (.I0(Counter_reg[28]),
        .I1(Counter_reg[29]),
        .O(Counter1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__2_i_3
       (.I0(Counter_reg[26]),
        .I1(Counter_reg[27]),
        .O(Counter1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__2_i_4
       (.I0(Counter_reg[24]),
        .I1(Counter_reg[25]),
        .O(Counter1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    Counter1_carry_i_1
       (.I0(Counter_reg[0]),
        .I1(Counter_reg[1]),
        .O(Counter1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry_i_2
       (.I0(Counter_reg[6]),
        .I1(Counter_reg[7]),
        .O(Counter1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry_i_3
       (.I0(Counter_reg[4]),
        .I1(Counter_reg[5]),
        .O(Counter1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry_i_4
       (.I0(Counter_reg[2]),
        .I1(Counter_reg[3]),
        .O(Counter1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    Counter1_carry_i_5
       (.I0(Counter_reg[0]),
        .I1(Counter_reg[1]),
        .O(Counter1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \Counter[0]_i_1 
       (.I0(Audio_Reset),
        .I1(Counter1),
        .O(\Counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter[0]_i_3 
       (.I0(Counter_reg[0]),
        .O(\Counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[0] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[0]_i_2_n_7 ),
        .Q(Counter_reg[0]),
        .R(\Counter[0]_i_1_n_0 ));
  CARRY4 \Counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Counter_reg[0]_i_2_n_0 ,\Counter_reg[0]_i_2_n_1 ,\Counter_reg[0]_i_2_n_2 ,\Counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Counter_reg[0]_i_2_n_4 ,\Counter_reg[0]_i_2_n_5 ,\Counter_reg[0]_i_2_n_6 ,\Counter_reg[0]_i_2_n_7 }),
        .S({Counter_reg[3:1],\Counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[10] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[8]_i_1_n_5 ),
        .Q(Counter_reg[10]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[11] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[8]_i_1_n_4 ),
        .Q(Counter_reg[11]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[12] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[12]_i_1_n_7 ),
        .Q(Counter_reg[12]),
        .R(\Counter[0]_i_1_n_0 ));
  CARRY4 \Counter_reg[12]_i_1 
       (.CI(\Counter_reg[8]_i_1_n_0 ),
        .CO({\Counter_reg[12]_i_1_n_0 ,\Counter_reg[12]_i_1_n_1 ,\Counter_reg[12]_i_1_n_2 ,\Counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[12]_i_1_n_4 ,\Counter_reg[12]_i_1_n_5 ,\Counter_reg[12]_i_1_n_6 ,\Counter_reg[12]_i_1_n_7 }),
        .S(Counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[13] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[12]_i_1_n_6 ),
        .Q(Counter_reg[13]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[14] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[12]_i_1_n_5 ),
        .Q(Counter_reg[14]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[15] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[12]_i_1_n_4 ),
        .Q(Counter_reg[15]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[16] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[16]_i_1_n_7 ),
        .Q(Counter_reg[16]),
        .R(\Counter[0]_i_1_n_0 ));
  CARRY4 \Counter_reg[16]_i_1 
       (.CI(\Counter_reg[12]_i_1_n_0 ),
        .CO({\Counter_reg[16]_i_1_n_0 ,\Counter_reg[16]_i_1_n_1 ,\Counter_reg[16]_i_1_n_2 ,\Counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[16]_i_1_n_4 ,\Counter_reg[16]_i_1_n_5 ,\Counter_reg[16]_i_1_n_6 ,\Counter_reg[16]_i_1_n_7 }),
        .S(Counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[17] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[16]_i_1_n_6 ),
        .Q(Counter_reg[17]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[18] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[16]_i_1_n_5 ),
        .Q(Counter_reg[18]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[19] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[16]_i_1_n_4 ),
        .Q(Counter_reg[19]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[1] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[0]_i_2_n_6 ),
        .Q(Counter_reg[1]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[20] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[20]_i_1_n_7 ),
        .Q(Counter_reg[20]),
        .R(\Counter[0]_i_1_n_0 ));
  CARRY4 \Counter_reg[20]_i_1 
       (.CI(\Counter_reg[16]_i_1_n_0 ),
        .CO({\Counter_reg[20]_i_1_n_0 ,\Counter_reg[20]_i_1_n_1 ,\Counter_reg[20]_i_1_n_2 ,\Counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[20]_i_1_n_4 ,\Counter_reg[20]_i_1_n_5 ,\Counter_reg[20]_i_1_n_6 ,\Counter_reg[20]_i_1_n_7 }),
        .S(Counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[21] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[20]_i_1_n_6 ),
        .Q(Counter_reg[21]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[22] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[20]_i_1_n_5 ),
        .Q(Counter_reg[22]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[23] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[20]_i_1_n_4 ),
        .Q(Counter_reg[23]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[24] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[24]_i_1_n_7 ),
        .Q(Counter_reg[24]),
        .R(\Counter[0]_i_1_n_0 ));
  CARRY4 \Counter_reg[24]_i_1 
       (.CI(\Counter_reg[20]_i_1_n_0 ),
        .CO({\Counter_reg[24]_i_1_n_0 ,\Counter_reg[24]_i_1_n_1 ,\Counter_reg[24]_i_1_n_2 ,\Counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[24]_i_1_n_4 ,\Counter_reg[24]_i_1_n_5 ,\Counter_reg[24]_i_1_n_6 ,\Counter_reg[24]_i_1_n_7 }),
        .S(Counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[25] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[24]_i_1_n_6 ),
        .Q(Counter_reg[25]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[26] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[24]_i_1_n_5 ),
        .Q(Counter_reg[26]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[27] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[24]_i_1_n_4 ),
        .Q(Counter_reg[27]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[28] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[28]_i_1_n_7 ),
        .Q(Counter_reg[28]),
        .R(\Counter[0]_i_1_n_0 ));
  CARRY4 \Counter_reg[28]_i_1 
       (.CI(\Counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_Counter_reg[28]_i_1_CO_UNCONNECTED [3],\Counter_reg[28]_i_1_n_1 ,\Counter_reg[28]_i_1_n_2 ,\Counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[28]_i_1_n_4 ,\Counter_reg[28]_i_1_n_5 ,\Counter_reg[28]_i_1_n_6 ,\Counter_reg[28]_i_1_n_7 }),
        .S(Counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[29] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[28]_i_1_n_6 ),
        .Q(Counter_reg[29]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[2] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[0]_i_2_n_5 ),
        .Q(Counter_reg[2]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[30] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[28]_i_1_n_5 ),
        .Q(Counter_reg[30]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[31] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[28]_i_1_n_4 ),
        .Q(Counter_reg[31]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[3] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[0]_i_2_n_4 ),
        .Q(Counter_reg[3]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[4] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[4]_i_1_n_7 ),
        .Q(Counter_reg[4]),
        .R(\Counter[0]_i_1_n_0 ));
  CARRY4 \Counter_reg[4]_i_1 
       (.CI(\Counter_reg[0]_i_2_n_0 ),
        .CO({\Counter_reg[4]_i_1_n_0 ,\Counter_reg[4]_i_1_n_1 ,\Counter_reg[4]_i_1_n_2 ,\Counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[4]_i_1_n_4 ,\Counter_reg[4]_i_1_n_5 ,\Counter_reg[4]_i_1_n_6 ,\Counter_reg[4]_i_1_n_7 }),
        .S(Counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[5] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[4]_i_1_n_6 ),
        .Q(Counter_reg[5]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[6] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[4]_i_1_n_5 ),
        .Q(Counter_reg[6]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[7] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[4]_i_1_n_4 ),
        .Q(Counter_reg[7]),
        .R(\Counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[8] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[8]_i_1_n_7 ),
        .Q(Counter_reg[8]),
        .R(\Counter[0]_i_1_n_0 ));
  CARRY4 \Counter_reg[8]_i_1 
       (.CI(\Counter_reg[4]_i_1_n_0 ),
        .CO({\Counter_reg[8]_i_1_n_0 ,\Counter_reg[8]_i_1_n_1 ,\Counter_reg[8]_i_1_n_2 ,\Counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[8]_i_1_n_4 ,\Counter_reg[8]_i_1_n_5 ,\Counter_reg[8]_i_1_n_6 ,\Counter_reg[8]_i_1_n_7 }),
        .S(Counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[9] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter_reg[8]_i_1_n_6 ),
        .Q(Counter_reg[9]),
        .R(\Counter[0]_i_1_n_0 ));
  CARRY4 CurrentState1_carry
       (.CI(1'b0),
        .CO({CurrentState1_carry_n_0,CurrentState1_carry_n_1,CurrentState1_carry_n_2,CurrentState1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,CurrentState1_carry_i_1_n_0,CurrentState1_carry_i_2_n_0,CurrentState1_carry_i_3_n_0}),
        .O(NLW_CurrentState1_carry_O_UNCONNECTED[3:0]),
        .S({CurrentState1_carry_i_4_n_0,CurrentState1_carry_i_5_n_0,CurrentState1_carry_i_6_n_0,CurrentState1_carry_i_7_n_0}));
  CARRY4 CurrentState1_carry__0
       (.CI(CurrentState1_carry_n_0),
        .CO({CurrentState1_carry__0_n_0,CurrentState1_carry__0_n_1,CurrentState1_carry__0_n_2,CurrentState1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CurrentState1_carry__0_O_UNCONNECTED[3:0]),
        .S({CurrentState1_carry__0_i_1_n_0,CurrentState1_carry__0_i_2_n_0,CurrentState1_carry__0_i_3_n_0,CurrentState1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__0_i_1
       (.I0(in10[14]),
        .I1(in10[15]),
        .O(CurrentState1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__0_i_2
       (.I0(in10[12]),
        .I1(in10[13]),
        .O(CurrentState1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__0_i_3
       (.I0(in10[10]),
        .I1(in10[11]),
        .O(CurrentState1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__0_i_4
       (.I0(in10[8]),
        .I1(in10[9]),
        .O(CurrentState1_carry__0_i_4_n_0));
  CARRY4 CurrentState1_carry__1
       (.CI(CurrentState1_carry__0_n_0),
        .CO({CurrentState1_carry__1_n_0,CurrentState1_carry__1_n_1,CurrentState1_carry__1_n_2,CurrentState1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CurrentState1_carry__1_O_UNCONNECTED[3:0]),
        .S({CurrentState1_carry__1_i_1_n_0,CurrentState1_carry__1_i_2_n_0,CurrentState1_carry__1_i_3_n_0,CurrentState1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__1_i_1
       (.I0(in10[22]),
        .I1(in10[23]),
        .O(CurrentState1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__1_i_2
       (.I0(in10[20]),
        .I1(in10[21]),
        .O(CurrentState1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__1_i_3
       (.I0(in10[18]),
        .I1(in10[19]),
        .O(CurrentState1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__1_i_4
       (.I0(in10[16]),
        .I1(in10[17]),
        .O(CurrentState1_carry__1_i_4_n_0));
  CARRY4 CurrentState1_carry__2
       (.CI(CurrentState1_carry__1_n_0),
        .CO({CurrentState1_carry__2_n_0,CurrentState1_carry__2_n_1,CurrentState1_carry__2_n_2,CurrentState1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({in10[31],1'b0,1'b0,1'b0}),
        .O(NLW_CurrentState1_carry__2_O_UNCONNECTED[3:0]),
        .S({CurrentState1_carry__2_i_1_n_0,CurrentState1_carry__2_i_2_n_0,CurrentState1_carry__2_i_3_n_0,CurrentState1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__2_i_1
       (.I0(in10[30]),
        .I1(in10[31]),
        .O(CurrentState1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__2_i_2
       (.I0(in10[28]),
        .I1(in10[29]),
        .O(CurrentState1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__2_i_3
       (.I0(in10[26]),
        .I1(in10[27]),
        .O(CurrentState1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry__2_i_4
       (.I0(in10[24]),
        .I1(in10[25]),
        .O(CurrentState1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry_i_1
       (.I0(in10[4]),
        .I1(in10[5]),
        .O(CurrentState1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    CurrentState1_carry_i_2
       (.I0(in10[2]),
        .I1(in10[3]),
        .O(CurrentState1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    CurrentState1_carry_i_3
       (.I0(\BitCounter_reg_n_0_[0] ),
        .I1(in10[1]),
        .O(CurrentState1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    CurrentState1_carry_i_4
       (.I0(in10[6]),
        .I1(in10[7]),
        .O(CurrentState1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    CurrentState1_carry_i_5
       (.I0(in10[4]),
        .I1(in10[5]),
        .O(CurrentState1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    CurrentState1_carry_i_6
       (.I0(in10[2]),
        .I1(in10[3]),
        .O(CurrentState1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    CurrentState1_carry_i_7
       (.I0(in10[1]),
        .I1(\BitCounter_reg_n_0_[0] ),
        .O(CurrentState1_carry_i_7_n_0));
  CARRY4 CurrentState2_carry
       (.CI(1'b0),
        .CO({CurrentState2_carry_n_0,CurrentState2_carry_n_1,CurrentState2_carry_n_2,CurrentState2_carry_n_3}),
        .CYINIT(\BitCounter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[4:1]),
        .S({\BitCounter_reg_n_0_[4] ,\BitCounter_reg_n_0_[3] ,\BitCounter_reg_n_0_[2] ,\BitCounter_reg_n_0_[1] }));
  CARRY4 CurrentState2_carry__0
       (.CI(CurrentState2_carry_n_0),
        .CO({CurrentState2_carry__0_n_0,CurrentState2_carry__0_n_1,CurrentState2_carry__0_n_2,CurrentState2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:5]),
        .S({\BitCounter_reg_n_0_[8] ,\BitCounter_reg_n_0_[7] ,\BitCounter_reg_n_0_[6] ,\BitCounter_reg_n_0_[5] }));
  CARRY4 CurrentState2_carry__1
       (.CI(CurrentState2_carry__0_n_0),
        .CO({CurrentState2_carry__1_n_0,CurrentState2_carry__1_n_1,CurrentState2_carry__1_n_2,CurrentState2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[12:9]),
        .S({\BitCounter_reg_n_0_[12] ,\BitCounter_reg_n_0_[11] ,\BitCounter_reg_n_0_[10] ,\BitCounter_reg_n_0_[9] }));
  CARRY4 CurrentState2_carry__2
       (.CI(CurrentState2_carry__1_n_0),
        .CO({CurrentState2_carry__2_n_0,CurrentState2_carry__2_n_1,CurrentState2_carry__2_n_2,CurrentState2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[16:13]),
        .S({\BitCounter_reg_n_0_[16] ,\BitCounter_reg_n_0_[15] ,\BitCounter_reg_n_0_[14] ,\BitCounter_reg_n_0_[13] }));
  CARRY4 CurrentState2_carry__3
       (.CI(CurrentState2_carry__2_n_0),
        .CO({CurrentState2_carry__3_n_0,CurrentState2_carry__3_n_1,CurrentState2_carry__3_n_2,CurrentState2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[20:17]),
        .S({\BitCounter_reg_n_0_[20] ,\BitCounter_reg_n_0_[19] ,\BitCounter_reg_n_0_[18] ,\BitCounter_reg_n_0_[17] }));
  CARRY4 CurrentState2_carry__4
       (.CI(CurrentState2_carry__3_n_0),
        .CO({CurrentState2_carry__4_n_0,CurrentState2_carry__4_n_1,CurrentState2_carry__4_n_2,CurrentState2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[24:21]),
        .S({\BitCounter_reg_n_0_[24] ,\BitCounter_reg_n_0_[23] ,\BitCounter_reg_n_0_[22] ,\BitCounter_reg_n_0_[21] }));
  CARRY4 CurrentState2_carry__5
       (.CI(CurrentState2_carry__4_n_0),
        .CO({CurrentState2_carry__5_n_0,CurrentState2_carry__5_n_1,CurrentState2_carry__5_n_2,CurrentState2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[28:25]),
        .S({\BitCounter_reg_n_0_[28] ,\BitCounter_reg_n_0_[27] ,\BitCounter_reg_n_0_[26] ,\BitCounter_reg_n_0_[25] }));
  CARRY4 CurrentState2_carry__6
       (.CI(CurrentState2_carry__5_n_0),
        .CO({NLW_CurrentState2_carry__6_CO_UNCONNECTED[3:2],CurrentState2_carry__6_n_2,CurrentState2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_CurrentState2_carry__6_O_UNCONNECTED[3],in10[31:29]}),
        .S({1'b0,\BitCounter_reg_n_0_[31] ,\BitCounter_reg_n_0_[30] ,\BitCounter_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Data_Int[0]_i_1 
       (.I0(CurrentState[1]),
        .I1(CurrentState[0]),
        .I2(dest_out_bin[0]),
        .O(Data_Int[0]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[10]_i_1 
       (.I0(dest_out_bin[10]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[9] ),
        .O(Data_Int[10]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[11]_i_1 
       (.I0(dest_out_bin[11]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[10] ),
        .O(Data_Int[11]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[12]_i_1 
       (.I0(dest_out_bin[12]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[11] ),
        .O(Data_Int[12]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[13]_i_1 
       (.I0(dest_out_bin[13]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[12] ),
        .O(Data_Int[13]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[14]_i_1 
       (.I0(dest_out_bin[14]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[13] ),
        .O(Data_Int[14]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[15]_i_1 
       (.I0(dest_out_bin[15]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[14] ),
        .O(Data_Int[15]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[16]_i_1 
       (.I0(dest_out_bin[16]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[15] ),
        .O(Data_Int[16]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[17]_i_1 
       (.I0(dest_out_bin[17]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[16] ),
        .O(Data_Int[17]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[18]_i_1 
       (.I0(dest_out_bin[18]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[17] ),
        .O(Data_Int[18]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[19]_i_1 
       (.I0(dest_out_bin[19]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[18] ),
        .O(Data_Int[19]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[1]_i_1 
       (.I0(dest_out_bin[1]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[0] ),
        .O(Data_Int[1]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[20]_i_1 
       (.I0(dest_out_bin[20]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[19] ),
        .O(Data_Int[20]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[21]_i_1 
       (.I0(dest_out_bin[21]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[20] ),
        .O(Data_Int[21]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[22]_i_1 
       (.I0(dest_out_bin[22]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[21] ),
        .O(Data_Int[22]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[23]_i_1 
       (.I0(dest_out_bin[23]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[22] ),
        .O(Data_Int[23]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[24]_i_1 
       (.I0(dest_out_bin[24]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[23] ),
        .O(Data_Int[24]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[25]_i_1 
       (.I0(dest_out_bin[25]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[24] ),
        .O(Data_Int[25]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[26]_i_1 
       (.I0(dest_out_bin[26]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[25] ),
        .O(Data_Int[26]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[27]_i_1 
       (.I0(dest_out_bin[27]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[26] ),
        .O(Data_Int[27]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[28]_i_1 
       (.I0(dest_out_bin[28]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[27] ),
        .O(Data_Int[28]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[29]_i_1 
       (.I0(dest_out_bin[29]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[28] ),
        .O(Data_Int[29]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[2]_i_1 
       (.I0(dest_out_bin[2]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[1] ),
        .O(Data_Int[2]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[30]_i_1 
       (.I0(dest_out_bin[30]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[29] ),
        .O(Data_Int[30]));
  LUT3 #(
    .INIT(8'h2A)) 
    \Data_Int[31]_i_1 
       (.I0(Audio_Reset),
        .I1(CurrentState[1]),
        .I2(CurrentState[0]),
        .O(\Data_Int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[31]_i_2 
       (.I0(dest_out_bin[31]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[30] ),
        .O(Data_Int[31]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[3]_i_1 
       (.I0(dest_out_bin[3]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[2] ),
        .O(Data_Int[3]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[4]_i_1 
       (.I0(dest_out_bin[4]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[3] ),
        .O(Data_Int[4]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[5]_i_1 
       (.I0(dest_out_bin[5]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[4] ),
        .O(Data_Int[5]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[6]_i_1 
       (.I0(dest_out_bin[6]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[5] ),
        .O(Data_Int[6]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[7]_i_1 
       (.I0(dest_out_bin[7]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[6] ),
        .O(Data_Int[7]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[8]_i_1 
       (.I0(dest_out_bin[8]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[7] ),
        .O(Data_Int[8]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[9]_i_1 
       (.I0(dest_out_bin[9]),
        .I1(CurrentState[0]),
        .I2(CurrentState[1]),
        .I3(\Data_Int_reg_n_0_[8] ),
        .O(Data_Int[9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[0] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[0]),
        .Q(\Data_Int_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[10] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[10]),
        .Q(\Data_Int_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[11] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[11]),
        .Q(\Data_Int_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[12] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[12]),
        .Q(\Data_Int_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[13] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[13]),
        .Q(\Data_Int_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[14] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[14]),
        .Q(\Data_Int_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[15] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[15]),
        .Q(\Data_Int_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[16] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[16]),
        .Q(\Data_Int_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[17] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[17]),
        .Q(\Data_Int_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[18] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[18]),
        .Q(\Data_Int_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[19] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[19]),
        .Q(\Data_Int_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[1] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[1]),
        .Q(\Data_Int_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[20] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[20]),
        .Q(\Data_Int_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[21] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[21]),
        .Q(\Data_Int_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[22] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[22]),
        .Q(\Data_Int_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[23] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[23]),
        .Q(\Data_Int_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[24] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[24]),
        .Q(\Data_Int_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[25] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[25]),
        .Q(\Data_Int_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[26] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[26]),
        .Q(\Data_Int_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[27] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[27]),
        .Q(\Data_Int_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[28] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[28]),
        .Q(\Data_Int_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[29] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[29]),
        .Q(\Data_Int_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[2] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[2]),
        .Q(\Data_Int_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[30] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[30]),
        .Q(\Data_Int_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[31] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[31]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[3] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[3]),
        .Q(\Data_Int_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[4] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[4]),
        .Q(\Data_Int_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[5] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[5]),
        .Q(\Data_Int_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[6] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[6]),
        .Q(\Data_Int_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[7] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[7]),
        .Q(\Data_Int_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[8] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[8]),
        .Q(\Data_Int_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[9] 
       (.C(SCLK_Int_reg_n_0),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[9]),
        .Q(\Data_Int_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    Enable_i_1
       (.I0(CurrentState[0]),
        .I1(Audio_Reset),
        .I2(CurrentState[1]),
        .I3(Enable_reg_n_0),
        .O(Enable_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Enable_reg
       (.C(SCLK_Int_reg_n_0),
        .CE(1'b1),
        .D(Enable_i_1_n_0),
        .Q(Enable_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0700)) 
    \FSM_sequential_CurrentState[0]_i_1 
       (.I0(CurrentState[1]),
        .I1(CurrentState1_carry__2_n_0),
        .I2(CurrentState[0]),
        .I3(Audio_Reset),
        .O(\FSM_sequential_CurrentState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \FSM_sequential_CurrentState[1]_i_1 
       (.I0(CurrentState1_carry__2_n_0),
        .I1(CurrentState[1]),
        .I2(CurrentState[0]),
        .I3(Audio_Reset),
        .O(\FSM_sequential_CurrentState[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "reset:00,idle:01,transmit:10" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(SCLK_Int_reg_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_CurrentState[0]_i_1_n_0 ),
        .Q(CurrentState[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:00,idle:01,transmit:10" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(SCLK_Int_reg_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_CurrentState[1]_i_1_n_0 ),
        .Q(CurrentState[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF37F0040)) 
    LRCLK_i_1
       (.I0(LRCLK1),
        .I1(Audio_Reset),
        .I2(CurrentState[1]),
        .I3(CurrentState[0]),
        .I4(LRCLK),
        .O(LRCLK_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_10
       (.I0(in10[20]),
        .I1(in10[21]),
        .O(LRCLK_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_12
       (.I0(in10[18]),
        .I1(in10[19]),
        .O(LRCLK_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_13
       (.I0(in10[16]),
        .I1(in10[17]),
        .O(LRCLK_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_14
       (.I0(in10[14]),
        .I1(in10[15]),
        .O(LRCLK_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_15
       (.I0(in10[12]),
        .I1(in10[13]),
        .O(LRCLK_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_16
       (.I0(in10[4]),
        .I1(in10[5]),
        .O(LRCLK_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_17
       (.I0(in10[10]),
        .I1(in10[11]),
        .O(LRCLK_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_18
       (.I0(in10[8]),
        .I1(in10[9]),
        .O(LRCLK_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_19
       (.I0(in10[6]),
        .I1(in10[7]),
        .O(LRCLK_i_19_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LRCLK_i_20
       (.I0(in10[4]),
        .I1(in10[5]),
        .O(LRCLK_i_20_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_4
       (.I0(in10[30]),
        .I1(in10[31]),
        .O(LRCLK_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_5
       (.I0(in10[28]),
        .I1(in10[29]),
        .O(LRCLK_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_7
       (.I0(in10[26]),
        .I1(in10[27]),
        .O(LRCLK_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_8
       (.I0(in10[24]),
        .I1(in10[25]),
        .O(LRCLK_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_9
       (.I0(in10[22]),
        .I1(in10[23]),
        .O(LRCLK_i_9_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    LRCLK_reg
       (.C(SCLK_Int_reg_n_0),
        .CE(1'b1),
        .D(LRCLK_i_1_n_0),
        .Q(LRCLK),
        .R(1'b0));
  CARRY4 LRCLK_reg_i_11
       (.CI(1'b0),
        .CO({LRCLK_reg_i_11_n_0,LRCLK_reg_i_11_n_1,LRCLK_reg_i_11_n_2,LRCLK_reg_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,LRCLK_i_16_n_0}),
        .O(NLW_LRCLK_reg_i_11_O_UNCONNECTED[3:0]),
        .S({LRCLK_i_17_n_0,LRCLK_i_18_n_0,LRCLK_i_19_n_0,LRCLK_i_20_n_0}));
  CARRY4 LRCLK_reg_i_2
       (.CI(LRCLK_reg_i_3_n_0),
        .CO({NLW_LRCLK_reg_i_2_CO_UNCONNECTED[3:2],LRCLK1,LRCLK_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in10[31],1'b0}),
        .O(NLW_LRCLK_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,LRCLK_i_4_n_0,LRCLK_i_5_n_0}));
  CARRY4 LRCLK_reg_i_3
       (.CI(LRCLK_reg_i_6_n_0),
        .CO({LRCLK_reg_i_3_n_0,LRCLK_reg_i_3_n_1,LRCLK_reg_i_3_n_2,LRCLK_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_reg_i_3_O_UNCONNECTED[3:0]),
        .S({LRCLK_i_7_n_0,LRCLK_i_8_n_0,LRCLK_i_9_n_0,LRCLK_i_10_n_0}));
  CARRY4 LRCLK_reg_i_6
       (.CI(LRCLK_reg_i_11_n_0),
        .CO({LRCLK_reg_i_6_n_0,LRCLK_reg_i_6_n_1,LRCLK_reg_i_6_n_2,LRCLK_reg_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_reg_i_6_O_UNCONNECTED[3:0]),
        .S({LRCLK_i_12_n_0,LRCLK_i_13_n_0,LRCLK_i_14_n_0,LRCLK_i_15_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFF550200)) 
    Ready_i_1
       (.I0(Audio_Reset),
        .I1(CurrentState[0]),
        .I2(CurrentState1_carry__2_n_0),
        .I3(CurrentState[1]),
        .I4(src_in),
        .O(Ready_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    Ready_reg
       (.C(SCLK_Int_reg_n_0),
        .CE(1'b1),
        .D(Ready_i_1_n_0),
        .Q(src_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    SCLK_INST_0
       (.I0(SCLK_Int_reg_n_0),
        .I1(Enable_reg_n_0),
        .O(SCLK));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    SCLK_Int_i_1
       (.I0(Counter1),
        .I1(Audio_Reset),
        .I2(SCLK_Int_reg_n_0),
        .O(SCLK_Int_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    SCLK_Int_reg
       (.C(MCLK),
        .CE(1'b1),
        .D(SCLK_Int_i_1_n_0),
        .Q(SCLK_Int_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    SD_i_1
       (.I0(p_0_in),
        .I1(CurrentState[1]),
        .I2(Audio_Reset),
        .I3(CurrentState[0]),
        .I4(SD),
        .O(SD_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    SD_reg
       (.C(SCLK_Int_reg_n_0),
        .CE(1'b1),
        .D(SD_i_1_n_0),
        .Q(SD),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "32" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module DUT_AXIS_I2S_Transmitter_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [31:0]src_in_bin;
  input dest_clk;
  output [31:0]dest_out_bin;

  wire [31:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [31:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [31:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [31:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [31:0]\dest_graysync_ff[3] ;
  wire [30:0]\^dest_out_bin ;
  wire \dest_out_bin[0]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[10]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[14]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[15]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[20]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[25]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[2]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[3]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[4]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[5]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[8]_INST_0_i_1_n_0 ;
  wire \dest_out_bin[9]_INST_0_i_1_n_0 ;
  wire [30:0]gray_enc;
  wire src_clk;
  wire [31:0]src_in_bin;

  assign dest_out_bin[31] = \dest_graysync_ff[3] [31];
  assign dest_out_bin[30:0] = \^dest_out_bin [30:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[12]),
        .Q(\dest_graysync_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[13]),
        .Q(\dest_graysync_ff[0] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[14]),
        .Q(\dest_graysync_ff[0] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[15]),
        .Q(\dest_graysync_ff[0] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[16]),
        .Q(\dest_graysync_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[17]),
        .Q(\dest_graysync_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[18]),
        .Q(\dest_graysync_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[19]),
        .Q(\dest_graysync_ff[0] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[20]),
        .Q(\dest_graysync_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[21]),
        .Q(\dest_graysync_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[22]),
        .Q(\dest_graysync_ff[0] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[23]),
        .Q(\dest_graysync_ff[0] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[24]),
        .Q(\dest_graysync_ff[0] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[25]),
        .Q(\dest_graysync_ff[0] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[26]),
        .Q(\dest_graysync_ff[0] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[27]),
        .Q(\dest_graysync_ff[0] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[28]),
        .Q(\dest_graysync_ff[0] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[29]),
        .Q(\dest_graysync_ff[0] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[30]),
        .Q(\dest_graysync_ff[0] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[31]),
        .Q(\dest_graysync_ff[0] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [12]),
        .Q(\dest_graysync_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [13]),
        .Q(\dest_graysync_ff[1] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [14]),
        .Q(\dest_graysync_ff[1] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [15]),
        .Q(\dest_graysync_ff[1] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [16]),
        .Q(\dest_graysync_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [17]),
        .Q(\dest_graysync_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [18]),
        .Q(\dest_graysync_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [19]),
        .Q(\dest_graysync_ff[1] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [20]),
        .Q(\dest_graysync_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [21]),
        .Q(\dest_graysync_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [22]),
        .Q(\dest_graysync_ff[1] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [23]),
        .Q(\dest_graysync_ff[1] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [24]),
        .Q(\dest_graysync_ff[1] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [25]),
        .Q(\dest_graysync_ff[1] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [26]),
        .Q(\dest_graysync_ff[1] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [27]),
        .Q(\dest_graysync_ff[1] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [28]),
        .Q(\dest_graysync_ff[1] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [29]),
        .Q(\dest_graysync_ff[1] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [30]),
        .Q(\dest_graysync_ff[1] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [31]),
        .Q(\dest_graysync_ff[1] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(\dest_graysync_ff[2] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [12]),
        .Q(\dest_graysync_ff[2] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [13]),
        .Q(\dest_graysync_ff[2] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [14]),
        .Q(\dest_graysync_ff[2] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [15]),
        .Q(\dest_graysync_ff[2] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [16]),
        .Q(\dest_graysync_ff[2] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [17]),
        .Q(\dest_graysync_ff[2] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [18]),
        .Q(\dest_graysync_ff[2] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [19]),
        .Q(\dest_graysync_ff[2] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [20]),
        .Q(\dest_graysync_ff[2] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [21]),
        .Q(\dest_graysync_ff[2] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [22]),
        .Q(\dest_graysync_ff[2] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [23]),
        .Q(\dest_graysync_ff[2] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [24]),
        .Q(\dest_graysync_ff[2] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [25]),
        .Q(\dest_graysync_ff[2] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [26]),
        .Q(\dest_graysync_ff[2] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [27]),
        .Q(\dest_graysync_ff[2] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [28]),
        .Q(\dest_graysync_ff[2] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [29]),
        .Q(\dest_graysync_ff[2] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [30]),
        .Q(\dest_graysync_ff[2] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [31]),
        .Q(\dest_graysync_ff[2] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [10]),
        .Q(\dest_graysync_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [11]),
        .Q(\dest_graysync_ff[3] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [12]),
        .Q(\dest_graysync_ff[3] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [13]),
        .Q(\dest_graysync_ff[3] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [14]),
        .Q(\dest_graysync_ff[3] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [15]),
        .Q(\dest_graysync_ff[3] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [16]),
        .Q(\dest_graysync_ff[3] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [17]),
        .Q(\dest_graysync_ff[3] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [18]),
        .Q(\dest_graysync_ff[3] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [19]),
        .Q(\dest_graysync_ff[3] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [20]),
        .Q(\dest_graysync_ff[3] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [21]),
        .Q(\dest_graysync_ff[3] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [22]),
        .Q(\dest_graysync_ff[3] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [23]),
        .Q(\dest_graysync_ff[3] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [24]),
        .Q(\dest_graysync_ff[3] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [25]),
        .Q(\dest_graysync_ff[3] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [26]),
        .Q(\dest_graysync_ff[3] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [27]),
        .Q(\dest_graysync_ff[3] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [28]),
        .Q(\dest_graysync_ff[3] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [29]),
        .Q(\dest_graysync_ff[3] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [30]),
        .Q(\dest_graysync_ff[3] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [31]),
        .Q(\dest_graysync_ff[3] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[0]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[8]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[2]_INST_0_i_1_n_0 ),
        .I4(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I5(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[0]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [0]),
        .O(\dest_out_bin[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[10]_INST_0 
       (.I0(\dest_graysync_ff[3] [11]),
        .I1(\dest_out_bin[10]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I4(\dest_graysync_ff[3] [10]),
        .I5(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [10]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[10]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [13]),
        .I1(\dest_graysync_ff[3] [12]),
        .O(\dest_out_bin[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[11]_INST_0 
       (.I0(\dest_graysync_ff[3] [12]),
        .I1(\dest_graysync_ff[3] [13]),
        .I2(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I4(\dest_graysync_ff[3] [11]),
        .I5(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[12]_INST_0 
       (.I0(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I2(\dest_graysync_ff[3] [13]),
        .I3(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I4(\dest_graysync_ff[3] [12]),
        .O(\^dest_out_bin [12]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[13]_INST_0 
       (.I0(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I3(\dest_graysync_ff[3] [13]),
        .O(\^dest_out_bin [13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[14]_INST_0 
       (.I0(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [14]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[14]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [15]),
        .I1(\dest_graysync_ff[3] [14]),
        .I2(\dest_graysync_ff[3] [18]),
        .I3(\dest_graysync_ff[3] [19]),
        .I4(\dest_graysync_ff[3] [16]),
        .I5(\dest_graysync_ff[3] [17]),
        .O(\dest_out_bin[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[15]_INST_0 
       (.I0(\dest_graysync_ff[3] [17]),
        .I1(\dest_out_bin[15]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I4(\dest_graysync_ff[3] [16]),
        .I5(\dest_graysync_ff[3] [15]),
        .O(\^dest_out_bin [15]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[15]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [19]),
        .I1(\dest_graysync_ff[3] [18]),
        .O(\dest_out_bin[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[16]_INST_0 
       (.I0(\dest_graysync_ff[3] [18]),
        .I1(\dest_graysync_ff[3] [19]),
        .I2(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I4(\dest_graysync_ff[3] [17]),
        .I5(\dest_graysync_ff[3] [16]),
        .O(\^dest_out_bin [16]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[17]_INST_0 
       (.I0(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I2(\dest_graysync_ff[3] [19]),
        .I3(\dest_graysync_ff[3] [17]),
        .I4(\dest_graysync_ff[3] [18]),
        .O(\^dest_out_bin [17]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[18]_INST_0 
       (.I0(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I2(\dest_graysync_ff[3] [18]),
        .I3(\dest_graysync_ff[3] [19]),
        .O(\^dest_out_bin [18]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[19]_INST_0 
       (.I0(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I1(\dest_graysync_ff[3] [19]),
        .I2(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [19]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I1(\dest_graysync_ff[3] [1]),
        .I2(\dest_out_bin[8]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[2]_INST_0_i_1_n_0 ),
        .I4(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I5(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[20]_INST_0 
       (.I0(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [20]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[20]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [21]),
        .I1(\dest_graysync_ff[3] [20]),
        .I2(\dest_graysync_ff[3] [24]),
        .I3(\dest_graysync_ff[3] [25]),
        .I4(\dest_graysync_ff[3] [22]),
        .I5(\dest_graysync_ff[3] [23]),
        .O(\dest_out_bin[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[21]_INST_0 
       (.I0(\dest_graysync_ff[3] [24]),
        .I1(\dest_graysync_ff[3] [25]),
        .I2(\dest_graysync_ff[3] [21]),
        .I3(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I4(\dest_graysync_ff[3] [23]),
        .I5(\dest_graysync_ff[3] [22]),
        .O(\^dest_out_bin [21]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[22]_INST_0 
       (.I0(\dest_graysync_ff[3] [22]),
        .I1(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I2(\dest_graysync_ff[3] [25]),
        .I3(\dest_graysync_ff[3] [23]),
        .I4(\dest_graysync_ff[3] [24]),
        .O(\^dest_out_bin [22]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[23]_INST_0 
       (.I0(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I1(\dest_graysync_ff[3] [23]),
        .I2(\dest_graysync_ff[3] [24]),
        .I3(\dest_graysync_ff[3] [25]),
        .O(\^dest_out_bin [23]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[24]_INST_0 
       (.I0(\dest_graysync_ff[3] [24]),
        .I1(\dest_graysync_ff[3] [25]),
        .I2(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [24]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[25]_INST_0 
       (.I0(\dest_graysync_ff[3] [25]),
        .I1(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [25]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[25]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [27]),
        .I1(\dest_graysync_ff[3] [26]),
        .I2(\dest_graysync_ff[3] [30]),
        .I3(\dest_graysync_ff[3] [31]),
        .I4(\dest_graysync_ff[3] [28]),
        .I5(\dest_graysync_ff[3] [29]),
        .O(\dest_out_bin[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[26]_INST_0 
       (.I0(\dest_graysync_ff[3] [26]),
        .I1(\dest_graysync_ff[3] [28]),
        .I2(\dest_graysync_ff[3] [30]),
        .I3(\dest_graysync_ff[3] [31]),
        .I4(\dest_graysync_ff[3] [29]),
        .I5(\dest_graysync_ff[3] [27]),
        .O(\^dest_out_bin [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[27]_INST_0 
       (.I0(\dest_graysync_ff[3] [27]),
        .I1(\dest_graysync_ff[3] [29]),
        .I2(\dest_graysync_ff[3] [31]),
        .I3(\dest_graysync_ff[3] [30]),
        .I4(\dest_graysync_ff[3] [28]),
        .O(\^dest_out_bin [27]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[28]_INST_0 
       (.I0(\dest_graysync_ff[3] [28]),
        .I1(\dest_graysync_ff[3] [30]),
        .I2(\dest_graysync_ff[3] [31]),
        .I3(\dest_graysync_ff[3] [29]),
        .O(\^dest_out_bin [28]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[29]_INST_0 
       (.I0(\dest_graysync_ff[3] [29]),
        .I1(\dest_graysync_ff[3] [31]),
        .I2(\dest_graysync_ff[3] [30]),
        .O(\^dest_out_bin [29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_out_bin[8]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[2]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I4(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[2]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\dest_graysync_ff[3] [6]),
        .I3(\dest_graysync_ff[3] [7]),
        .I4(\dest_graysync_ff[3] [4]),
        .I5(\dest_graysync_ff[3] [5]),
        .O(\dest_out_bin[2]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[30]_INST_0 
       (.I0(\dest_graysync_ff[3] [30]),
        .I1(\dest_graysync_ff[3] [31]),
        .O(\^dest_out_bin [30]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_out_bin[3]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[8]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I4(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[3]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\dest_graysync_ff[3] [6]),
        .I2(\dest_graysync_ff[3] [5]),
        .I3(\dest_graysync_ff[3] [4]),
        .I4(\dest_graysync_ff[3] [3]),
        .O(\dest_out_bin[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_out_bin[4]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[8]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I4(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[4]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_graysync_ff[3] [7]),
        .I2(\dest_graysync_ff[3] [6]),
        .I3(\dest_graysync_ff[3] [4]),
        .O(\dest_out_bin[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_out_bin[5]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[8]_INST_0_i_1_n_0 ),
        .I4(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I5(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[5]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\dest_graysync_ff[3] [6]),
        .O(\dest_out_bin[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [6]),
        .I1(\dest_graysync_ff[3] [7]),
        .I2(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[8]_INST_0_i_1_n_0 ),
        .I4(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .I5(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[8]_INST_0_i_1_n_0 ),
        .I2(\dest_graysync_ff[3] [7]),
        .I3(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I4(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_out_bin[8]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I3(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[8]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [9]),
        .I1(\dest_graysync_ff[3] [8]),
        .I2(\dest_graysync_ff[3] [12]),
        .I3(\dest_graysync_ff[3] [13]),
        .I4(\dest_graysync_ff[3] [10]),
        .I5(\dest_graysync_ff[3] [11]),
        .O(\dest_out_bin[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_out_bin[9]_INST_0_i_1_n_0 ),
        .I1(\dest_out_bin[20]_INST_0_i_1_n_0 ),
        .I2(\dest_out_bin[14]_INST_0_i_1_n_0 ),
        .I3(\dest_graysync_ff[3] [9]),
        .I4(\dest_out_bin[25]_INST_0_i_1_n_0 ),
        .O(\^dest_out_bin [9]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[9]_INST_0_i_1 
       (.I0(\dest_graysync_ff[3] [11]),
        .I1(\dest_graysync_ff[3] [13]),
        .I2(\dest_graysync_ff[3] [12]),
        .I3(\dest_graysync_ff[3] [10]),
        .O(\dest_out_bin[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[11]_i_1 
       (.I0(src_in_bin[12]),
        .I1(src_in_bin[11]),
        .O(gray_enc[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[12]_i_1 
       (.I0(src_in_bin[13]),
        .I1(src_in_bin[12]),
        .O(gray_enc[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[13]_i_1 
       (.I0(src_in_bin[14]),
        .I1(src_in_bin[13]),
        .O(gray_enc[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[14]_i_1 
       (.I0(src_in_bin[15]),
        .I1(src_in_bin[14]),
        .O(gray_enc[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[15]_i_1 
       (.I0(src_in_bin[16]),
        .I1(src_in_bin[15]),
        .O(gray_enc[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[16]_i_1 
       (.I0(src_in_bin[17]),
        .I1(src_in_bin[16]),
        .O(gray_enc[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[17]_i_1 
       (.I0(src_in_bin[18]),
        .I1(src_in_bin[17]),
        .O(gray_enc[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[18]_i_1 
       (.I0(src_in_bin[19]),
        .I1(src_in_bin[18]),
        .O(gray_enc[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[19]_i_1 
       (.I0(src_in_bin[20]),
        .I1(src_in_bin[19]),
        .O(gray_enc[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[20]_i_1 
       (.I0(src_in_bin[21]),
        .I1(src_in_bin[20]),
        .O(gray_enc[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[21]_i_1 
       (.I0(src_in_bin[22]),
        .I1(src_in_bin[21]),
        .O(gray_enc[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[22]_i_1 
       (.I0(src_in_bin[23]),
        .I1(src_in_bin[22]),
        .O(gray_enc[22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[23]_i_1 
       (.I0(src_in_bin[24]),
        .I1(src_in_bin[23]),
        .O(gray_enc[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[24]_i_1 
       (.I0(src_in_bin[25]),
        .I1(src_in_bin[24]),
        .O(gray_enc[24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[25]_i_1 
       (.I0(src_in_bin[26]),
        .I1(src_in_bin[25]),
        .O(gray_enc[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[26]_i_1 
       (.I0(src_in_bin[27]),
        .I1(src_in_bin[26]),
        .O(gray_enc[26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[27]_i_1 
       (.I0(src_in_bin[28]),
        .I1(src_in_bin[27]),
        .O(gray_enc[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[28]_i_1 
       (.I0(src_in_bin[29]),
        .I1(src_in_bin[28]),
        .O(gray_enc[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[29]_i_1 
       (.I0(src_in_bin[30]),
        .I1(src_in_bin[29]),
        .O(gray_enc[29]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[30]_i_1 
       (.I0(src_in_bin[31]),
        .I1(src_in_bin[30]),
        .O(gray_enc[30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[12] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[12]),
        .Q(async_path[12]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[13] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[13]),
        .Q(async_path[13]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[14] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[14]),
        .Q(async_path[14]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[15] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[15]),
        .Q(async_path[15]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[16] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[16]),
        .Q(async_path[16]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[17] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[17]),
        .Q(async_path[17]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[18] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[18]),
        .Q(async_path[18]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[19] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[19]),
        .Q(async_path[19]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[20] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[20]),
        .Q(async_path[20]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[21] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[21]),
        .Q(async_path[21]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[22] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[22]),
        .Q(async_path[22]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[23] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[23]),
        .Q(async_path[23]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[24] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[24]),
        .Q(async_path[24]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[25] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[25]),
        .Q(async_path[25]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[26] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[26]),
        .Q(async_path[26]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[27] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[27]),
        .Q(async_path[27]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[28] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[28]),
        .Q(async_path[28]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[29] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[29]),
        .Q(async_path[29]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[30] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[30]),
        .Q(async_path[30]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[31] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[31]),
        .Q(async_path[31]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module DUT_AXIS_I2S_Transmitter_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module DUT_AXIS_I2S_Transmitter_0_0_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
