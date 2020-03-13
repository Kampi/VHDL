// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Mar 13 15:07:55 2020
// Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/Test/hardware/AXIS_I2S_Example.srcs/sources_1/bd/System/ip/System_AXIS_I2S_Transmitter_0_0/System_AXIS_I2S_Transmitter_0_0_sim_netlist.v
// Design      : System_AXIS_I2S_Transmitter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "System_AXIS_I2S_Transmitter_0_0,AXIS_I2S,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "AXIS_I2S,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module System_AXIS_I2S_Transmitter_0_0
   (aclk,
    aresetn,
    TDATA_RXD,
    TREADY_RXD,
    TVALID_RXD,
    MCLK,
    LRCLK,
    SCLK,
    SD);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF AXIS_RXD, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN System_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXIS_RXD TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME AXIS_RXD, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN System_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]TDATA_RXD;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXIS_RXD TREADY" *) output TREADY_RXD;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXIS_RXD TVALID" *) input TVALID_RXD;
  input MCLK;
  output LRCLK;
  output SCLK;
  output SD;

  wire LRCLK;
  wire MCLK;
  wire SCLK;
  wire SD;
  wire [31:0]TDATA_RXD;
  wire TREADY_RXD;
  wire TVALID_RXD;
  wire aclk;
  wire aresetn;

  System_AXIS_I2S_Transmitter_0_0_AXIS_I2S U0
       (.LRCLK(LRCLK),
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
module System_AXIS_I2S_Transmitter_0_0_AXIS_I2S
   (LRCLK,
    SD,
    TREADY_RXD,
    SCLK,
    aresetn,
    TVALID_RXD,
    aclk,
    MCLK,
    TDATA_RXD);
  output LRCLK;
  output SD;
  output TREADY_RXD;
  output SCLK;
  input aresetn;
  input TVALID_RXD;
  input aclk;
  input MCLK;
  input [31:0]TDATA_RXD;

  wire [0:0]CurrentState;
  wire [31:0]FIFO;
  wire \FIFO[31]_i_1_n_0 ;
  wire \FIFO[31]_i_2_n_0 ;
  wire \FSM_sequential_CurrentState_reg_n_0_[1] ;
  wire LRCLK;
  wire MCLK;
  wire SCLK;
  wire SD;
  wire [31:0]TDATA_RXD;
  wire TREADY_RXD;
  wire TREADY_RXD_i_1_n_0;
  wire TVALID_RXD;
  wire Transmitter_n_2;
  wire Transmitter_n_3;
  wire Valid_i_1_n_0;
  wire Valid_reg_n_0;
  wire aclk;
  wire aresetn;

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
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[0] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[0]),
        .Q(FIFO[0]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[10] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[10]),
        .Q(FIFO[10]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[11] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[11]),
        .Q(FIFO[11]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[12] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[12]),
        .Q(FIFO[12]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[13] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[13]),
        .Q(FIFO[13]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[14] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[14]),
        .Q(FIFO[14]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[15] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[15]),
        .Q(FIFO[15]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[16] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[16]),
        .Q(FIFO[16]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[17] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[17]),
        .Q(FIFO[17]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[18] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[18]),
        .Q(FIFO[18]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[19] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[19]),
        .Q(FIFO[19]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[1] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[1]),
        .Q(FIFO[1]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[20] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[20]),
        .Q(FIFO[20]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[21] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[21]),
        .Q(FIFO[21]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[22] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[22]),
        .Q(FIFO[22]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[23] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[23]),
        .Q(FIFO[23]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[24] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[24]),
        .Q(FIFO[24]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[25] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[25]),
        .Q(FIFO[25]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[26] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[26]),
        .Q(FIFO[26]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[27] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[27]),
        .Q(FIFO[27]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[28] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[28]),
        .Q(FIFO[28]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[29] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[29]),
        .Q(FIFO[29]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[2] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[2]),
        .Q(FIFO[2]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[30] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[30]),
        .Q(FIFO[30]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[31] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[31]),
        .Q(FIFO[31]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[3] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[3]),
        .Q(FIFO[3]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[4] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[4]),
        .Q(FIFO[4]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[5] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[5]),
        .Q(FIFO[5]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[6] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[6]),
        .Q(FIFO[6]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[7] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[7]),
        .Q(FIFO[7]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[8] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[8]),
        .Q(FIFO[8]),
        .R(\FIFO[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[9] 
       (.C(aclk),
        .CE(\FIFO[31]_i_2_n_0 ),
        .D(TDATA_RXD[9]),
        .Q(FIFO[9]),
        .R(\FIFO[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "state_reset:00,waitforvalid:10,waitforbusy:11,state_waitfortransmitterready:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Transmitter_n_3),
        .Q(CurrentState),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_reset:00,waitforvalid:10,waitforbusy:11,state_waitfortransmitterready:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(Transmitter_n_2),
        .Q(\FSM_sequential_CurrentState_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
  System_AXIS_I2S_Transmitter_0_0_I2S_Transmitter Transmitter
       (.CurrentState(CurrentState),
        .FIFO(FIFO),
        .\FSM_sequential_CurrentState_reg[0]_0 (Transmitter_n_3),
        .\FSM_sequential_CurrentState_reg[1]_0 (\FSM_sequential_CurrentState_reg_n_0_[1] ),
        .\FSM_sequential_CurrentState_reg[1]_1 (Valid_reg_n_0),
        .LRCLK(LRCLK),
        .MCLK(MCLK),
        .Ready_reg_0(Transmitter_n_2),
        .SCLK(SCLK),
        .SD(SD),
        .TVALID_RXD(TVALID_RXD),
        .aresetn(aresetn));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hDD80)) 
    Valid_i_1
       (.I0(aresetn),
        .I1(\FSM_sequential_CurrentState_reg_n_0_[1] ),
        .I2(CurrentState),
        .I3(Valid_reg_n_0),
        .O(Valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(Valid_i_1_n_0),
        .Q(Valid_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "I2S_Transmitter" *) 
module System_AXIS_I2S_Transmitter_0_0_I2S_Transmitter
   (LRCLK,
    SD,
    Ready_reg_0,
    \FSM_sequential_CurrentState_reg[0]_0 ,
    SCLK,
    MCLK,
    CurrentState,
    \FSM_sequential_CurrentState_reg[1]_0 ,
    aresetn,
    TVALID_RXD,
    \FSM_sequential_CurrentState_reg[1]_1 ,
    FIFO);
  output LRCLK;
  output SD;
  output Ready_reg_0;
  output \FSM_sequential_CurrentState_reg[0]_0 ;
  output SCLK;
  input MCLK;
  input [0:0]CurrentState;
  input \FSM_sequential_CurrentState_reg[1]_0 ;
  input aresetn;
  input TVALID_RXD;
  input \FSM_sequential_CurrentState_reg[1]_1 ;
  input [31:0]FIFO;

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
  wire [1:0]Counter;
  wire \Counter[0]_i_1_n_0 ;
  wire \Counter[1]_i_1_n_0 ;
  wire [0:0]CurrentState;
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
  wire [1:0]CurrentState_0;
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
  wire [31:0]FIFO;
  wire \FSM_sequential_CurrentState[0]_i_1_n_0 ;
  wire \FSM_sequential_CurrentState[1]_i_1_n_0 ;
  wire \FSM_sequential_CurrentState_reg[0]_0 ;
  wire \FSM_sequential_CurrentState_reg[1]_0 ;
  wire \FSM_sequential_CurrentState_reg[1]_1 ;
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
  wire Ready_reg_0;
  wire SCLK;
  wire SCLK_Int;
  wire SCLK_Int_i_1_n_0;
  wire SD;
  wire SD_i_1_n_0;
  wire TVALID_RXD;
  wire TransmitterReady;
  wire aresetn;
  wire [31:1]in10;
  wire p_0_in;
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

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \BitCounter[0]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(CurrentState_0[1]),
        .I2(\BitCounter_reg_n_0_[0] ),
        .O(\BitCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[10]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[10]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[11]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[11]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[12]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[12]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[13]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[13]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[14]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[14]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[15]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[15]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[16]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[16]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[17]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[17]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[18]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[18]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[19]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[19]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[1]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[1]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[20]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[20]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[21]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[21]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[22]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[22]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[23]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[23]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[24]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[24]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[25]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[25]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[26]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[26]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[27]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[27]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[28]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[28]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[29]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[29]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[2]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[2]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[30]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[30]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[31]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[31]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[3]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[3]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[4]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[4]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[5]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[5]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[6]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[6]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[7]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[7]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[8]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[8]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \BitCounter[9]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(in10[9]),
        .I2(CurrentState_0[1]),
        .O(\BitCounter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[0] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[0]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[10] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[10]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[11] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[11]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[12] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[12]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[13] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[13]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[14] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[14]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[15] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[15]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[16] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[16]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[17] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[17]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[18] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[18]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[19] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[19]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[1] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[1]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[20] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[20]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[21] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[21]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[22] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[22]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[23] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[23]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[24] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[24]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[25] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[25]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[26] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[26]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[27] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[27]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[28] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[28]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[29] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[29]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[2] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[2]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[30] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[30]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[31] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[31]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[3] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[3]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[4] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[4]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[5] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[5]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[6] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[6]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[7] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[7]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[8] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[8]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[9] 
       (.C(SCLK_Int),
        .CE(aresetn),
        .D(\BitCounter[9]_i_1_n_0 ),
        .Q(\BitCounter_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \Counter[0]_i_1 
       (.I0(aresetn),
        .I1(Counter[0]),
        .O(\Counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \Counter[1]_i_1 
       (.I0(aresetn),
        .I1(Counter[1]),
        .I2(Counter[0]),
        .O(\Counter[1]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[0] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter[0]_i_1_n_0 ),
        .Q(Counter[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[1] 
       (.C(MCLK),
        .CE(1'b1),
        .D(\Counter[1]_i_1_n_0 ),
        .Q(Counter[1]),
        .R(1'b0));
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Data_Int[0]_i_1 
       (.I0(CurrentState_0[1]),
        .I1(CurrentState_0[0]),
        .I2(FIFO[0]),
        .O(Data_Int[0]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[10]_i_1 
       (.I0(FIFO[10]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[9] ),
        .O(Data_Int[10]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[11]_i_1 
       (.I0(FIFO[11]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[10] ),
        .O(Data_Int[11]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[12]_i_1 
       (.I0(FIFO[12]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[11] ),
        .O(Data_Int[12]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[13]_i_1 
       (.I0(FIFO[13]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[12] ),
        .O(Data_Int[13]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[14]_i_1 
       (.I0(FIFO[14]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[13] ),
        .O(Data_Int[14]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[15]_i_1 
       (.I0(FIFO[15]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[14] ),
        .O(Data_Int[15]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[16]_i_1 
       (.I0(FIFO[16]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[15] ),
        .O(Data_Int[16]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[17]_i_1 
       (.I0(FIFO[17]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[16] ),
        .O(Data_Int[17]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[18]_i_1 
       (.I0(FIFO[18]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[17] ),
        .O(Data_Int[18]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[19]_i_1 
       (.I0(FIFO[19]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[18] ),
        .O(Data_Int[19]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[1]_i_1 
       (.I0(FIFO[1]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[0] ),
        .O(Data_Int[1]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[20]_i_1 
       (.I0(FIFO[20]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[19] ),
        .O(Data_Int[20]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[21]_i_1 
       (.I0(FIFO[21]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[20] ),
        .O(Data_Int[21]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[22]_i_1 
       (.I0(FIFO[22]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[21] ),
        .O(Data_Int[22]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[23]_i_1 
       (.I0(FIFO[23]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[22] ),
        .O(Data_Int[23]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[24]_i_1 
       (.I0(FIFO[24]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[23] ),
        .O(Data_Int[24]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[25]_i_1 
       (.I0(FIFO[25]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[24] ),
        .O(Data_Int[25]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[26]_i_1 
       (.I0(FIFO[26]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[25] ),
        .O(Data_Int[26]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[27]_i_1 
       (.I0(FIFO[27]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[26] ),
        .O(Data_Int[27]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[28]_i_1 
       (.I0(FIFO[28]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[27] ),
        .O(Data_Int[28]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[29]_i_1 
       (.I0(FIFO[29]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[28] ),
        .O(Data_Int[29]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[2]_i_1 
       (.I0(FIFO[2]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[1] ),
        .O(Data_Int[2]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[30]_i_1 
       (.I0(FIFO[30]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[29] ),
        .O(Data_Int[30]));
  LUT4 #(
    .INIT(16'h20AA)) 
    \Data_Int[31]_i_1 
       (.I0(aresetn),
        .I1(CurrentState_0[1]),
        .I2(\FSM_sequential_CurrentState_reg[1]_1 ),
        .I3(CurrentState_0[0]),
        .O(\Data_Int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[31]_i_2 
       (.I0(FIFO[31]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[30] ),
        .O(Data_Int[31]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[3]_i_1 
       (.I0(FIFO[3]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[2] ),
        .O(Data_Int[3]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[4]_i_1 
       (.I0(FIFO[4]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[3] ),
        .O(Data_Int[4]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[5]_i_1 
       (.I0(FIFO[5]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[4] ),
        .O(Data_Int[5]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[6]_i_1 
       (.I0(FIFO[6]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[5] ),
        .O(Data_Int[6]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[7]_i_1 
       (.I0(FIFO[7]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[6] ),
        .O(Data_Int[7]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[8]_i_1 
       (.I0(FIFO[8]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[7] ),
        .O(Data_Int[8]));
  LUT4 #(
    .INIT(16'h3808)) 
    \Data_Int[9]_i_1 
       (.I0(FIFO[9]),
        .I1(CurrentState_0[0]),
        .I2(CurrentState_0[1]),
        .I3(\Data_Int_reg_n_0_[8] ),
        .O(Data_Int[9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[0] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[0]),
        .Q(\Data_Int_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[10] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[10]),
        .Q(\Data_Int_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[11] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[11]),
        .Q(\Data_Int_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[12] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[12]),
        .Q(\Data_Int_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[13] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[13]),
        .Q(\Data_Int_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[14] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[14]),
        .Q(\Data_Int_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[15] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[15]),
        .Q(\Data_Int_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[16] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[16]),
        .Q(\Data_Int_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[17] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[17]),
        .Q(\Data_Int_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[18] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[18]),
        .Q(\Data_Int_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[19] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[19]),
        .Q(\Data_Int_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[1] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[1]),
        .Q(\Data_Int_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[20] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[20]),
        .Q(\Data_Int_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[21] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[21]),
        .Q(\Data_Int_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[22] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[22]),
        .Q(\Data_Int_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[23] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[23]),
        .Q(\Data_Int_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[24] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[24]),
        .Q(\Data_Int_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[25] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[25]),
        .Q(\Data_Int_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[26] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[26]),
        .Q(\Data_Int_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[27] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[27]),
        .Q(\Data_Int_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[28] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[28]),
        .Q(\Data_Int_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[29] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[29]),
        .Q(\Data_Int_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[2] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[2]),
        .Q(\Data_Int_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[30] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[30]),
        .Q(\Data_Int_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[31] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[31]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[3] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[3]),
        .Q(\Data_Int_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[4] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[4]),
        .Q(\Data_Int_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[5] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[5]),
        .Q(\Data_Int_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[6] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[6]),
        .Q(\Data_Int_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[7] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[7]),
        .Q(\Data_Int_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[8] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[8]),
        .Q(\Data_Int_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[9] 
       (.C(SCLK_Int),
        .CE(\Data_Int[31]_i_1_n_0 ),
        .D(Data_Int[9]),
        .Q(\Data_Int_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    Enable_i_1
       (.I0(CurrentState_0[0]),
        .I1(aresetn),
        .I2(CurrentState_0[1]),
        .I3(Enable_reg_n_0),
        .O(Enable_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Enable_reg
       (.C(SCLK_Int),
        .CE(1'b1),
        .D(Enable_i_1_n_0),
        .Q(Enable_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h151F0000)) 
    \FSM_sequential_CurrentState[0]_i_1 
       (.I0(CurrentState_0[0]),
        .I1(CurrentState1_carry__2_n_0),
        .I2(CurrentState_0[1]),
        .I3(\FSM_sequential_CurrentState_reg[1]_1 ),
        .I4(aresetn),
        .O(\FSM_sequential_CurrentState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hD9FB0000)) 
    \FSM_sequential_CurrentState[0]_i_1__0 
       (.I0(CurrentState),
        .I1(\FSM_sequential_CurrentState_reg[1]_0 ),
        .I2(TVALID_RXD),
        .I3(TransmitterReady),
        .I4(aresetn),
        .O(\FSM_sequential_CurrentState_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h38080000)) 
    \FSM_sequential_CurrentState[1]_i_1 
       (.I0(CurrentState1_carry__2_n_0),
        .I1(CurrentState_0[1]),
        .I2(CurrentState_0[0]),
        .I3(\FSM_sequential_CurrentState_reg[1]_1 ),
        .I4(aresetn),
        .O(\FSM_sequential_CurrentState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \FSM_sequential_CurrentState[1]_i_1__0 
       (.I0(TransmitterReady),
        .I1(CurrentState),
        .I2(\FSM_sequential_CurrentState_reg[1]_0 ),
        .I3(aresetn),
        .O(Ready_reg_0));
  (* FSM_ENCODED_STATES = "reset:00,idle:01,transmit:10" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(SCLK_Int),
        .CE(1'b1),
        .D(\FSM_sequential_CurrentState[0]_i_1_n_0 ),
        .Q(CurrentState_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:00,idle:01,transmit:10" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(SCLK_Int),
        .CE(1'b1),
        .D(\FSM_sequential_CurrentState[1]_i_1_n_0 ),
        .Q(CurrentState_0[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF37F0040)) 
    LRCLK_i_1
       (.I0(LRCLK1),
        .I1(aresetn),
        .I2(CurrentState_0[1]),
        .I3(CurrentState_0[0]),
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
       (.C(SCLK_Int),
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
  LUT6 #(
    .INIT(64'hFFFF7373000C4040)) 
    Ready_i_1
       (.I0(\FSM_sequential_CurrentState_reg[1]_1 ),
        .I1(aresetn),
        .I2(CurrentState_0[0]),
        .I3(CurrentState1_carry__2_n_0),
        .I4(CurrentState_0[1]),
        .I5(TransmitterReady),
        .O(Ready_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    Ready_reg
       (.C(SCLK_Int),
        .CE(1'b1),
        .D(Ready_i_1_n_0),
        .Q(TransmitterReady),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    SCLK_INST_0
       (.I0(SCLK_Int),
        .I1(Enable_reg_n_0),
        .O(SCLK));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    SCLK_Int_i_1
       (.I0(SCLK_Int),
        .I1(Counter[1]),
        .I2(Counter[0]),
        .I3(aresetn),
        .O(SCLK_Int_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    SCLK_Int_reg
       (.C(MCLK),
        .CE(1'b1),
        .D(SCLK_Int_i_1_n_0),
        .Q(SCLK_Int),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    SD_i_1
       (.I0(p_0_in),
        .I1(CurrentState_0[1]),
        .I2(aresetn),
        .I3(CurrentState_0[0]),
        .I4(SD),
        .O(SD_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    SD_reg
       (.C(SCLK_Int),
        .CE(1'b1),
        .D(SD_i_1_n_0),
        .Q(SD),
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
