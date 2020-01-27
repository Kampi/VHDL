// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  9 15:32:10 2019
// Host        : PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top DataROM_AXI4S_ROM_0_1 -prefix
//               DataROM_AXI4S_ROM_0_1_ DataROM_AXI4S_ROM_0_1_sim_netlist.v
// Design      : DataROM_AXI4S_ROM_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DataROM_AXI4S_ROM_0_1_AXI4S_ROM
   (M_TDATA,
    M_TVALID,
    M_TLAST,
    ACLK,
    ARESETN,
    M_TREADY);
  output [15:0]M_TDATA;
  output M_TVALID;
  output M_TLAST;
  input ACLK;
  input ARESETN;
  input M_TREADY;

  wire ACLK;
  wire ARESETN;
  wire [31:0]Address;
  wire \Address[0]_i_1_n_0 ;
  wire \Address[10]_i_1_n_0 ;
  wire \Address[11]_i_1_n_0 ;
  wire \Address[12]_i_1_n_0 ;
  wire \Address[13]_i_1_n_0 ;
  wire \Address[14]_i_1_n_0 ;
  wire \Address[15]_i_1_n_0 ;
  wire \Address[16]_i_1_n_0 ;
  wire \Address[17]_i_1_n_0 ;
  wire \Address[18]_i_1_n_0 ;
  wire \Address[19]_i_1_n_0 ;
  wire \Address[1]_i_1_n_0 ;
  wire \Address[20]_i_1_n_0 ;
  wire \Address[21]_i_1_n_0 ;
  wire \Address[22]_i_1_n_0 ;
  wire \Address[23]_i_1_n_0 ;
  wire \Address[24]_i_1_n_0 ;
  wire \Address[25]_i_1_n_0 ;
  wire \Address[26]_i_1_n_0 ;
  wire \Address[27]_i_1_n_0 ;
  wire \Address[28]_i_1_n_0 ;
  wire \Address[29]_i_1_n_0 ;
  wire \Address[2]_i_1_n_0 ;
  wire \Address[30]_i_1_n_0 ;
  wire \Address[31]_i_1_n_0 ;
  wire \Address[31]_i_3_n_0 ;
  wire \Address[3]_i_1_n_0 ;
  wire \Address[4]_i_1_n_0 ;
  wire \Address[5]_i_1_n_0 ;
  wire \Address[6]_i_1_n_0 ;
  wire \Address[7]_i_1_n_0 ;
  wire \Address[8]_i_1_n_0 ;
  wire \Address[9]_i_1_n_0 ;
  wire Address_0;
  wire \Address_reg[12]_i_2_n_0 ;
  wire \Address_reg[12]_i_2_n_1 ;
  wire \Address_reg[12]_i_2_n_2 ;
  wire \Address_reg[12]_i_2_n_3 ;
  wire \Address_reg[16]_i_2_n_0 ;
  wire \Address_reg[16]_i_2_n_1 ;
  wire \Address_reg[16]_i_2_n_2 ;
  wire \Address_reg[16]_i_2_n_3 ;
  wire \Address_reg[20]_i_2_n_0 ;
  wire \Address_reg[20]_i_2_n_1 ;
  wire \Address_reg[20]_i_2_n_2 ;
  wire \Address_reg[20]_i_2_n_3 ;
  wire \Address_reg[24]_i_2_n_0 ;
  wire \Address_reg[24]_i_2_n_1 ;
  wire \Address_reg[24]_i_2_n_2 ;
  wire \Address_reg[24]_i_2_n_3 ;
  wire \Address_reg[28]_i_2_n_0 ;
  wire \Address_reg[28]_i_2_n_1 ;
  wire \Address_reg[28]_i_2_n_2 ;
  wire \Address_reg[28]_i_2_n_3 ;
  wire \Address_reg[31]_i_4_n_2 ;
  wire \Address_reg[31]_i_4_n_3 ;
  wire \Address_reg[4]_i_2_n_0 ;
  wire \Address_reg[4]_i_2_n_1 ;
  wire \Address_reg[4]_i_2_n_2 ;
  wire \Address_reg[4]_i_2_n_3 ;
  wire \Address_reg[8]_i_2_n_0 ;
  wire \Address_reg[8]_i_2_n_1 ;
  wire \Address_reg[8]_i_2_n_2 ;
  wire \Address_reg[8]_i_2_n_3 ;
  wire \Address_reg_rep_n_0_[0] ;
  wire \Address_reg_rep_n_0_[1] ;
  wire \Address_reg_rep_n_0_[2] ;
  wire \Address_reg_rep_n_0_[3] ;
  wire \Address_reg_rep_n_0_[4] ;
  wire \Address_reg_rep_n_0_[5] ;
  wire \Address_reg_rep_n_0_[6] ;
  wire \Address_rep[0]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[0]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[1]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[3]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState_reg_n_0_[1] ;
  wire \FSM_onehot_CurrentState_reg_n_0_[3] ;
  wire [15:0]M_TDATA;
  wire M_TLAST;
  wire M_TREADY;
  wire M_TVALID;
  wire TDATA_Int;
  wire TLAST_Int0;
  wire TLAST_Int_i_10_n_0;
  wire TLAST_Int_i_11_n_0;
  wire TLAST_Int_i_12_n_0;
  wire TLAST_Int_i_1_n_0;
  wire TLAST_Int_i_2_n_0;
  wire TLAST_Int_i_3_n_0;
  wire TLAST_Int_i_4_n_0;
  wire TLAST_Int_i_5_n_0;
  wire TLAST_Int_i_6_n_0;
  wire TLAST_Int_i_7_n_0;
  wire TLAST_Int_i_8_n_0;
  wire TLAST_Int_i_9_n_0;
  wire TVALID_Int_i_1_n_0;
  wire [31:1]data0;
  wire [3:2]\NLW_Address_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Address_reg[31]_i_4_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1A)) 
    \Address[0]_i_1 
       (.I0(TDATA_Int),
        .I1(TLAST_Int0),
        .I2(Address[0]),
        .O(\Address[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[10]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[10]),
        .O(\Address[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[11]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[11]),
        .O(\Address[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[12]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[12]),
        .O(\Address[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[13]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[13]),
        .O(\Address[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[14]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[14]),
        .O(\Address[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[15]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[15]),
        .O(\Address[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[16]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[16]),
        .O(\Address[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[17]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[17]),
        .O(\Address[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[18]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[18]),
        .O(\Address[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[19]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[19]),
        .O(\Address[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[1]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[1]),
        .O(\Address[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[20]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[20]),
        .O(\Address[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[21]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[21]),
        .O(\Address[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[22]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[22]),
        .O(\Address[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[23]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[23]),
        .O(\Address[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[24]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[24]),
        .O(\Address[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[25]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[25]),
        .O(\Address[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[26]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[26]),
        .O(\Address[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[27]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[27]),
        .O(\Address[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[28]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[28]),
        .O(\Address[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[29]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[29]),
        .O(\Address[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[2]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[2]),
        .O(\Address[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[30]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[30]),
        .O(\Address[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \Address[31]_i_1 
       (.I0(TLAST_Int0),
        .I1(TDATA_Int),
        .I2(TLAST_Int_i_2_n_0),
        .I3(TLAST_Int_i_3_n_0),
        .O(\Address[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Address[31]_i_2 
       (.I0(TDATA_Int),
        .I1(TLAST_Int0),
        .O(Address_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[31]_i_3 
       (.I0(TDATA_Int),
        .I1(data0[31]),
        .O(\Address[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[3]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[3]),
        .O(\Address[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[4]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[4]),
        .O(\Address[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[5]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[5]),
        .O(\Address[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[6]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[6]),
        .O(\Address[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[7]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[7]),
        .O(\Address[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[8]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[8]),
        .O(\Address[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Address[9]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[9]),
        .O(\Address[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\Address[0]_i_1_n_0 ),
        .Q(Address[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[10] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[10]_i_1_n_0 ),
        .Q(Address[10]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[11] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[11]_i_1_n_0 ),
        .Q(Address[11]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[12] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[12]_i_1_n_0 ),
        .Q(Address[12]),
        .R(\Address[31]_i_1_n_0 ));
  CARRY4 \Address_reg[12]_i_2 
       (.CI(\Address_reg[8]_i_2_n_0 ),
        .CO({\Address_reg[12]_i_2_n_0 ,\Address_reg[12]_i_2_n_1 ,\Address_reg[12]_i_2_n_2 ,\Address_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(Address[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[13] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[13]_i_1_n_0 ),
        .Q(Address[13]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[14] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[14]_i_1_n_0 ),
        .Q(Address[14]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[15] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[15]_i_1_n_0 ),
        .Q(Address[15]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[16] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[16]_i_1_n_0 ),
        .Q(Address[16]),
        .R(\Address[31]_i_1_n_0 ));
  CARRY4 \Address_reg[16]_i_2 
       (.CI(\Address_reg[12]_i_2_n_0 ),
        .CO({\Address_reg[16]_i_2_n_0 ,\Address_reg[16]_i_2_n_1 ,\Address_reg[16]_i_2_n_2 ,\Address_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(Address[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[17] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[17]_i_1_n_0 ),
        .Q(Address[17]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[18] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[18]_i_1_n_0 ),
        .Q(Address[18]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[19] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[19]_i_1_n_0 ),
        .Q(Address[19]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[1] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[1]_i_1_n_0 ),
        .Q(Address[1]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[20] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[20]_i_1_n_0 ),
        .Q(Address[20]),
        .R(\Address[31]_i_1_n_0 ));
  CARRY4 \Address_reg[20]_i_2 
       (.CI(\Address_reg[16]_i_2_n_0 ),
        .CO({\Address_reg[20]_i_2_n_0 ,\Address_reg[20]_i_2_n_1 ,\Address_reg[20]_i_2_n_2 ,\Address_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(Address[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[21] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[21]_i_1_n_0 ),
        .Q(Address[21]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[22] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[22]_i_1_n_0 ),
        .Q(Address[22]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[23] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[23]_i_1_n_0 ),
        .Q(Address[23]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[24] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[24]_i_1_n_0 ),
        .Q(Address[24]),
        .R(\Address[31]_i_1_n_0 ));
  CARRY4 \Address_reg[24]_i_2 
       (.CI(\Address_reg[20]_i_2_n_0 ),
        .CO({\Address_reg[24]_i_2_n_0 ,\Address_reg[24]_i_2_n_1 ,\Address_reg[24]_i_2_n_2 ,\Address_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(Address[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[25] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[25]_i_1_n_0 ),
        .Q(Address[25]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[26] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[26]_i_1_n_0 ),
        .Q(Address[26]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[27] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[27]_i_1_n_0 ),
        .Q(Address[27]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[28] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[28]_i_1_n_0 ),
        .Q(Address[28]),
        .R(\Address[31]_i_1_n_0 ));
  CARRY4 \Address_reg[28]_i_2 
       (.CI(\Address_reg[24]_i_2_n_0 ),
        .CO({\Address_reg[28]_i_2_n_0 ,\Address_reg[28]_i_2_n_1 ,\Address_reg[28]_i_2_n_2 ,\Address_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(Address[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[29] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[29]_i_1_n_0 ),
        .Q(Address[29]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[2] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[2]_i_1_n_0 ),
        .Q(Address[2]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[30] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[30]_i_1_n_0 ),
        .Q(Address[30]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[31] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[31]_i_3_n_0 ),
        .Q(Address[31]),
        .R(\Address[31]_i_1_n_0 ));
  CARRY4 \Address_reg[31]_i_4 
       (.CI(\Address_reg[28]_i_2_n_0 ),
        .CO({\NLW_Address_reg[31]_i_4_CO_UNCONNECTED [3:2],\Address_reg[31]_i_4_n_2 ,\Address_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Address_reg[31]_i_4_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,Address[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[3] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[3]_i_1_n_0 ),
        .Q(Address[3]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[4] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[4]_i_1_n_0 ),
        .Q(Address[4]),
        .R(\Address[31]_i_1_n_0 ));
  CARRY4 \Address_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\Address_reg[4]_i_2_n_0 ,\Address_reg[4]_i_2_n_1 ,\Address_reg[4]_i_2_n_2 ,\Address_reg[4]_i_2_n_3 }),
        .CYINIT(Address[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(Address[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[5] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[5]_i_1_n_0 ),
        .Q(Address[5]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[6] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[6]_i_1_n_0 ),
        .Q(Address[6]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[7] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[7]_i_1_n_0 ),
        .Q(Address[7]),
        .R(\Address[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[8] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[8]_i_1_n_0 ),
        .Q(Address[8]),
        .R(\Address[31]_i_1_n_0 ));
  CARRY4 \Address_reg[8]_i_2 
       (.CI(\Address_reg[4]_i_2_n_0 ),
        .CO({\Address_reg[8]_i_2_n_0 ,\Address_reg[8]_i_2_n_1 ,\Address_reg[8]_i_2_n_2 ,\Address_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(Address[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[9] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[9]_i_1_n_0 ),
        .Q(Address[9]),
        .R(\Address[31]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg_rep[0] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address_rep[0]_i_1_n_0 ),
        .Q(\Address_reg_rep_n_0_[0] ),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg_rep[1] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[1]_i_1_n_0 ),
        .Q(\Address_reg_rep_n_0_[1] ),
        .R(\Address[31]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg_rep[2] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[2]_i_1_n_0 ),
        .Q(\Address_reg_rep_n_0_[2] ),
        .R(\Address[31]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg_rep[3] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[3]_i_1_n_0 ),
        .Q(\Address_reg_rep_n_0_[3] ),
        .R(\Address[31]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg_rep[4] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[4]_i_1_n_0 ),
        .Q(\Address_reg_rep_n_0_[4] ),
        .R(\Address[31]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg_rep[5] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[5]_i_1_n_0 ),
        .Q(\Address_reg_rep_n_0_[5] ),
        .R(\Address[31]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg_rep[6] 
       (.C(ACLK),
        .CE(Address_0),
        .D(\Address[6]_i_1_n_0 ),
        .Q(\Address_reg_rep_n_0_[6] ),
        .R(\Address[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Address_rep[0]_i_1 
       (.I0(TDATA_Int),
        .I1(Address[0]),
        .O(\Address_rep[0]_i_1_n_0 ));
  DataROM_AXI4S_ROM_0_1_ROM DataROM
       (.ACLK(ACLK),
        .ADDRARDADDR({\Address_reg_rep_n_0_[6] ,\Address_reg_rep_n_0_[5] ,\Address_reg_rep_n_0_[4] ,\Address_reg_rep_n_0_[3] ,\Address_reg_rep_n_0_[2] ,\Address_reg_rep_n_0_[1] ,\Address_reg_rep_n_0_[0] }),
        .M_TDATA(M_TDATA),
        .Q(TDATA_Int),
        .TLAST_Int0(TLAST_Int0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_onehot_CurrentState[0]_i_1 
       (.I0(ARESETN),
        .I1(TLAST_Int0),
        .O(\FSM_onehot_CurrentState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_CurrentState[1]_i_1 
       (.I0(ARESETN),
        .I1(TLAST_Int0),
        .O(\FSM_onehot_CurrentState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_CurrentState[2]_i_1 
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I2(M_TREADY),
        .O(\FSM_onehot_CurrentState[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_CurrentState[3]_i_1 
       (.I0(TDATA_Int),
        .I1(M_TREADY),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .O(\FSM_onehot_CurrentState[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "reset:0001,endofreset:0010,waitforready:1000,readdata:0100" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_CurrentState_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[0]_i_1_n_0 ),
        .Q(TLAST_Int0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:0001,endofreset:0010,waitforready:1000,readdata:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[1]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:0001,endofreset:0010,waitforready:1000,readdata:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[2]_i_1_n_0 ),
        .Q(TDATA_Int),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:0001,endofreset:0010,waitforready:1000,readdata:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_CurrentState_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_CurrentState[3]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000F0F0AAEA)) 
    TLAST_Int_i_1
       (.I0(M_TLAST),
        .I1(TLAST_Int_i_2_n_0),
        .I2(TDATA_Int),
        .I3(TLAST_Int_i_3_n_0),
        .I4(TLAST_Int_i_4_n_0),
        .I5(TLAST_Int0),
        .O(TLAST_Int_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    TLAST_Int_i_10
       (.I0(Address[16]),
        .I1(Address[12]),
        .I2(Address[20]),
        .I3(Address[8]),
        .O(TLAST_Int_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    TLAST_Int_i_11
       (.I0(Address[19]),
        .I1(Address[15]),
        .I2(Address[23]),
        .I3(Address[11]),
        .O(TLAST_Int_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    TLAST_Int_i_12
       (.I0(Address[22]),
        .I1(Address[10]),
        .I2(Address[18]),
        .I3(Address[14]),
        .O(TLAST_Int_i_12_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    TLAST_Int_i_2
       (.I0(TLAST_Int_i_5_n_0),
        .I1(TLAST_Int_i_6_n_0),
        .I2(TLAST_Int_i_7_n_0),
        .I3(TLAST_Int_i_8_n_0),
        .O(TLAST_Int_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    TLAST_Int_i_3
       (.I0(TLAST_Int_i_9_n_0),
        .I1(TLAST_Int_i_10_n_0),
        .I2(TLAST_Int_i_11_n_0),
        .I3(TLAST_Int_i_12_n_0),
        .O(TLAST_Int_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    TLAST_Int_i_4
       (.I0(M_TREADY),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .O(TLAST_Int_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    TLAST_Int_i_5
       (.I0(Address[5]),
        .I1(Address[24]),
        .I2(Address[1]),
        .I3(Address[3]),
        .O(TLAST_Int_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    TLAST_Int_i_6
       (.I0(Address[26]),
        .I1(Address[31]),
        .I2(Address[27]),
        .I3(Address[28]),
        .O(TLAST_Int_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    TLAST_Int_i_7
       (.I0(Address[4]),
        .I1(Address[2]),
        .I2(Address[6]),
        .I3(Address[25]),
        .O(TLAST_Int_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    TLAST_Int_i_8
       (.I0(Address[0]),
        .I1(Address[30]),
        .I2(Address[7]),
        .I3(Address[29]),
        .O(TLAST_Int_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    TLAST_Int_i_9
       (.I0(Address[21]),
        .I1(Address[9]),
        .I2(Address[17]),
        .I3(Address[13]),
        .O(TLAST_Int_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TLAST_Int_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(TLAST_Int_i_1_n_0),
        .Q(M_TLAST),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCDDDCCCC)) 
    TVALID_Int_i_1
       (.I0(TLAST_Int0),
        .I1(TDATA_Int),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[3] ),
        .I3(M_TREADY),
        .I4(M_TVALID),
        .O(TVALID_Int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TVALID_Int_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(TVALID_Int_i_1_n_0),
        .Q(M_TVALID),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "DataROM_AXI4S_ROM_0_1,AXI4S_ROM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "AXI4S_ROM,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module DataROM_AXI4S_ROM_0_1
   (ACLK,
    ARESETN,
    M_TDATA,
    M_TID,
    M_TREADY,
    M_TVALID,
    M_TLAST);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_ACLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET ARESETN, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN DataROM_ACLK_0, INSERT_VIP 0" *) input ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN DataROM_ACLK_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]M_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TID" *) output [7:0]M_TID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_TLAST;

  wire \<const0> ;
  wire ACLK;
  wire ARESETN;
  wire [15:0]\^M_TDATA ;
  wire M_TLAST;
  wire M_TREADY;
  wire M_TVALID;

  assign M_TDATA[31] = \<const0> ;
  assign M_TDATA[30] = \<const0> ;
  assign M_TDATA[29] = \<const0> ;
  assign M_TDATA[28] = \<const0> ;
  assign M_TDATA[27] = \<const0> ;
  assign M_TDATA[26] = \<const0> ;
  assign M_TDATA[25] = \<const0> ;
  assign M_TDATA[24] = \<const0> ;
  assign M_TDATA[23] = \<const0> ;
  assign M_TDATA[22] = \<const0> ;
  assign M_TDATA[21] = \<const0> ;
  assign M_TDATA[20] = \<const0> ;
  assign M_TDATA[19] = \<const0> ;
  assign M_TDATA[18] = \<const0> ;
  assign M_TDATA[17] = \<const0> ;
  assign M_TDATA[16] = \<const0> ;
  assign M_TDATA[15:0] = \^M_TDATA [15:0];
  assign M_TID[7] = \<const0> ;
  assign M_TID[6] = \<const0> ;
  assign M_TID[5] = \<const0> ;
  assign M_TID[4] = \<const0> ;
  assign M_TID[3] = \<const0> ;
  assign M_TID[2] = \<const0> ;
  assign M_TID[1] = \<const0> ;
  assign M_TID[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  DataROM_AXI4S_ROM_0_1_AXI4S_ROM U0
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_TDATA(\^M_TDATA ),
        .M_TLAST(M_TLAST),
        .M_TREADY(M_TREADY),
        .M_TVALID(M_TVALID));
endmodule

module DataROM_AXI4S_ROM_0_1_ROM
   (M_TDATA,
    ACLK,
    Q,
    TLAST_Int0,
    ADDRARDADDR);
  output [15:0]M_TDATA;
  input ACLK;
  input [0:0]Q;
  input TLAST_Int0;
  input [6:0]ADDRARDADDR;

  wire ACLK;
  wire [6:0]ADDRARDADDR;
  wire [15:0]M_TDATA;
  wire [0:0]Q;
  wire TLAST_Int0;
  wire [15:0]NLW_DataOut_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_DataOut_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_DataOut_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "U0/DataROM/DataOut" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE78DE2A0DD4ED79FD197CB3CC495BDAAB67FAF1EA78D9FD597FC900A88098000),
    .INIT_01(256'hF702F9BCFBFAFDBBFEFDFFBFFFFFFFBFFEFDFDBBFBFAF9BCF702F3D1F02AEC12),
    .INIT_02(256'h97FC9FD5A78DAF1EB67FBDAAC495CB3CD197D79FDD4EE2A0E78DEC12F02AF3D1),
    .INIT_03(256'h22B128602E6834C33B6A4255498050E15872602A68036FF577F680008809900A),
    .INIT_04(256'h040502440102004000000040010202440405064308FD0C2E0FD513ED18721D5F),
    .INIT_05(256'h587250E1498042553B6A34C32E68286022B11D5F187213ED0FD50C2E08FD0643),
    .INIT_06(256'h00000000000000000000000000000000000000000000000077F66FF56803602A),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    DataOut_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ACLK),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(M_TDATA),
        .DOBDO(NLW_DataOut_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_DataOut_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_DataOut_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(Q),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(TLAST_Int0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
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
