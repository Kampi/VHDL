// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Aug 11 17:13:09 2019
// Host        : PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Dropbox/Git/VHDL/I2S/I2S_Audio.sim/sim_2/synth/timing/xsim/Testbench_time_synth.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* hw_handoff = "ClockGeneration.hwdef" *) 
module ClockGeneration
   (ClockIn,
    ClockOut,
    Locked);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLOCKIN, CLK_DOMAIN ClockGeneration_clk_in1_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input ClockIn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLOCKOUT CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLOCKOUT, CLK_DOMAIN /ClockingWIzard_clk_out1, FREQ_HZ 12288013, INSERT_VIP 0, PHASE 0.0" *) output ClockOut;
  output Locked;

  wire ClockIn;
  wire ClockOut;
  wire Locked;

  (* syn_black_box = "TRUE" *) 
  ClockGeneration_clk_wiz_0_0 ClockingWIzard
       (.clk_in1(ClockIn),
        .clk_out1(ClockOut),
        .locked(Locked));
endmodule

module ClockGeneration_clk_wiz_0_0
   (clk_out1,
    locked,
    clk_in1);
  output clk_out1;
  output locked;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;
  wire locked;

  ClockGeneration_clk_wiz_0_0_ClockGeneration_clk_wiz_0_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked));
endmodule

(* ORIG_REF_NAME = "ClockGeneration_clk_wiz_0_0_clk_wiz" *) 
module ClockGeneration_clk_wiz_0_0_ClockGeneration_clk_wiz_0_0_clk_wiz
   (clk_out1,
    locked,
    clk_in1);
  output clk_out1;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_ClockGeneration_clk_wiz_0_0;
  wire clkfbout_ClockGeneration_clk_wiz_0_0;
  wire clkfbout_buf_ClockGeneration_clk_wiz_0_0;
  wire locked;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_ClockGeneration_clk_wiz_0_0),
        .O(clkfbout_buf_ClockGeneration_clk_wiz_0_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_ClockGeneration_clk_wiz_0_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(42.750000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(62.125000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(7),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_ClockGeneration_clk_wiz_0_0),
        .CLKFBOUT(clkfbout_ClockGeneration_clk_wiz_0_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_ClockGeneration_clk_wiz_0_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* hw_handoff = "DataROM.hwdef" *) 
module DataROM
   (ACLK,
    ARESETN,
    TDATA,
    TID,
    TLAST,
    TREADY,
    TVALID);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET ARESETN, CLK_DOMAIN DataROM_ACLK_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ARESETN;
  output [31:0]TDATA;
  output [7:0]TID;
  output TLAST;
  input TREADY;
  output TVALID;

  wire ACLK;
  wire ARESETN;
  wire [31:0]TDATA;
  wire [7:0]TID;
  wire TLAST;
  wire TREADY;
  wire TVALID;

  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "AXI4S_ROM,Vivado 2018.3" *) 
  DataROM_AXI4S_ROM_0_1 SineROM
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_TDATA(TDATA),
        .M_TID(TID),
        .M_TLAST(TLAST),
        .M_TREADY(TREADY),
        .M_TVALID(TVALID));
endmodule

(* CHECK_LICENSE_TYPE = "DataROM_AXI4S_ROM_0_1,AXI4S_ROM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "AXI4S_ROM,Vivado 2018.3" *) 
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
  DataROM_AXI4S_ROM_0_1__AXI4S_ROM U0
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_TDATA(\^M_TDATA ),
        .M_TLAST(M_TLAST),
        .M_TREADY(M_TREADY),
        .M_TVALID(M_TVALID));
endmodule

(* ORIG_REF_NAME = "AXI4S_ROM" *) 
module DataROM_AXI4S_ROM_0_1__AXI4S_ROM
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
  DataROM_AXI4S_ROM_0_1__ROM DataROM
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

(* ORIG_REF_NAME = "ROM" *) 
module DataROM_AXI4S_ROM_0_1__ROM
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
    .INIT_FILE("NONE"),
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

module I2S
   (LRCLK_OBUF,
    SD_OBUF,
    AudioClock_reg_0,
    TREADY,
    Active_OBUF,
    SCLK_OBUF,
    SD_Int_reg,
    Clock,
    CLK,
    Resetn_IBUF,
    Locked,
    TVALID,
    TDATA);
  output LRCLK_OBUF;
  output SD_OBUF;
  output AudioClock_reg_0;
  output TREADY;
  output Active_OBUF;
  output SCLK_OBUF;
  input SD_Int_reg;
  input Clock;
  input CLK;
  input Resetn_IBUF;
  input Locked;
  input TVALID;
  input [31:0]TDATA;

  wire Active_OBUF;
  wire AudioClock_i_1_n_0;
  wire AudioClock_reg_0;
  wire \AudioData[0]_i_1_n_0 ;
  wire \AudioData[10]_i_1_n_0 ;
  wire \AudioData[11]_i_1_n_0 ;
  wire \AudioData[12]_i_1_n_0 ;
  wire \AudioData[13]_i_1_n_0 ;
  wire \AudioData[14]_i_1_n_0 ;
  wire \AudioData[15]_i_1_n_0 ;
  wire \AudioData[16]_i_1_n_0 ;
  wire \AudioData[17]_i_1_n_0 ;
  wire \AudioData[18]_i_1_n_0 ;
  wire \AudioData[19]_i_1_n_0 ;
  wire \AudioData[1]_i_1_n_0 ;
  wire \AudioData[20]_i_1_n_0 ;
  wire \AudioData[21]_i_1_n_0 ;
  wire \AudioData[22]_i_1_n_0 ;
  wire \AudioData[23]_i_1_n_0 ;
  wire \AudioData[24]_i_1_n_0 ;
  wire \AudioData[25]_i_1_n_0 ;
  wire \AudioData[26]_i_1_n_0 ;
  wire \AudioData[27]_i_1_n_0 ;
  wire \AudioData[28]_i_1_n_0 ;
  wire \AudioData[29]_i_1_n_0 ;
  wire \AudioData[2]_i_1_n_0 ;
  wire \AudioData[30]_i_1_n_0 ;
  wire \AudioData[31]_i_1_n_0 ;
  wire \AudioData[31]_i_2_n_0 ;
  wire \AudioData[31]_i_3_n_0 ;
  wire \AudioData[3]_i_1_n_0 ;
  wire \AudioData[4]_i_1_n_0 ;
  wire \AudioData[5]_i_1_n_0 ;
  wire \AudioData[6]_i_1_n_0 ;
  wire \AudioData[7]_i_1_n_0 ;
  wire \AudioData[8]_i_1_n_0 ;
  wire \AudioData[9]_i_1_n_0 ;
  wire [5:5]BitCounter_Int_reg;
  wire \BytesInFIFO_0[0]_i_1_n_0 ;
  wire \BytesInFIFO_0[31]_i_1_n_0 ;
  wire \BytesInFIFO_0[31]_i_2_n_0 ;
  wire \BytesInFIFO_0_reg[12]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[12]_i_1_n_1 ;
  wire \BytesInFIFO_0_reg[12]_i_1_n_2 ;
  wire \BytesInFIFO_0_reg[12]_i_1_n_3 ;
  wire \BytesInFIFO_0_reg[16]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[16]_i_1_n_1 ;
  wire \BytesInFIFO_0_reg[16]_i_1_n_2 ;
  wire \BytesInFIFO_0_reg[16]_i_1_n_3 ;
  wire \BytesInFIFO_0_reg[20]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[20]_i_1_n_1 ;
  wire \BytesInFIFO_0_reg[20]_i_1_n_2 ;
  wire \BytesInFIFO_0_reg[20]_i_1_n_3 ;
  wire \BytesInFIFO_0_reg[24]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[24]_i_1_n_1 ;
  wire \BytesInFIFO_0_reg[24]_i_1_n_2 ;
  wire \BytesInFIFO_0_reg[24]_i_1_n_3 ;
  wire \BytesInFIFO_0_reg[28]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[28]_i_1_n_1 ;
  wire \BytesInFIFO_0_reg[28]_i_1_n_2 ;
  wire \BytesInFIFO_0_reg[28]_i_1_n_3 ;
  wire \BytesInFIFO_0_reg[31]_i_3_n_2 ;
  wire \BytesInFIFO_0_reg[31]_i_3_n_3 ;
  wire \BytesInFIFO_0_reg[4]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[4]_i_1_n_1 ;
  wire \BytesInFIFO_0_reg[4]_i_1_n_2 ;
  wire \BytesInFIFO_0_reg[4]_i_1_n_3 ;
  wire \BytesInFIFO_0_reg[8]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[8]_i_1_n_1 ;
  wire \BytesInFIFO_0_reg[8]_i_1_n_2 ;
  wire \BytesInFIFO_0_reg[8]_i_1_n_3 ;
  wire \BytesInFIFO_0_reg_n_0_[0] ;
  wire \BytesInFIFO_0_reg_n_0_[10] ;
  wire \BytesInFIFO_0_reg_n_0_[11] ;
  wire \BytesInFIFO_0_reg_n_0_[12] ;
  wire \BytesInFIFO_0_reg_n_0_[13] ;
  wire \BytesInFIFO_0_reg_n_0_[14] ;
  wire \BytesInFIFO_0_reg_n_0_[15] ;
  wire \BytesInFIFO_0_reg_n_0_[16] ;
  wire \BytesInFIFO_0_reg_n_0_[17] ;
  wire \BytesInFIFO_0_reg_n_0_[18] ;
  wire \BytesInFIFO_0_reg_n_0_[19] ;
  wire \BytesInFIFO_0_reg_n_0_[1] ;
  wire \BytesInFIFO_0_reg_n_0_[20] ;
  wire \BytesInFIFO_0_reg_n_0_[21] ;
  wire \BytesInFIFO_0_reg_n_0_[22] ;
  wire \BytesInFIFO_0_reg_n_0_[23] ;
  wire \BytesInFIFO_0_reg_n_0_[24] ;
  wire \BytesInFIFO_0_reg_n_0_[25] ;
  wire \BytesInFIFO_0_reg_n_0_[26] ;
  wire \BytesInFIFO_0_reg_n_0_[27] ;
  wire \BytesInFIFO_0_reg_n_0_[28] ;
  wire \BytesInFIFO_0_reg_n_0_[29] ;
  wire \BytesInFIFO_0_reg_n_0_[2] ;
  wire \BytesInFIFO_0_reg_n_0_[30] ;
  wire \BytesInFIFO_0_reg_n_0_[31] ;
  wire \BytesInFIFO_0_reg_n_0_[3] ;
  wire \BytesInFIFO_0_reg_n_0_[4] ;
  wire \BytesInFIFO_0_reg_n_0_[5] ;
  wire \BytesInFIFO_0_reg_n_0_[6] ;
  wire \BytesInFIFO_0_reg_n_0_[7] ;
  wire \BytesInFIFO_0_reg_n_0_[8] ;
  wire \BytesInFIFO_0_reg_n_0_[9] ;
  wire \BytesInFIFO_1[31]_i_1_n_0 ;
  wire \BytesInFIFO_1[31]_i_2_n_0 ;
  wire \BytesInFIFO_1_reg_n_0_[0] ;
  wire \BytesInFIFO_1_reg_n_0_[10] ;
  wire \BytesInFIFO_1_reg_n_0_[11] ;
  wire \BytesInFIFO_1_reg_n_0_[12] ;
  wire \BytesInFIFO_1_reg_n_0_[13] ;
  wire \BytesInFIFO_1_reg_n_0_[14] ;
  wire \BytesInFIFO_1_reg_n_0_[15] ;
  wire \BytesInFIFO_1_reg_n_0_[16] ;
  wire \BytesInFIFO_1_reg_n_0_[17] ;
  wire \BytesInFIFO_1_reg_n_0_[18] ;
  wire \BytesInFIFO_1_reg_n_0_[19] ;
  wire \BytesInFIFO_1_reg_n_0_[1] ;
  wire \BytesInFIFO_1_reg_n_0_[20] ;
  wire \BytesInFIFO_1_reg_n_0_[21] ;
  wire \BytesInFIFO_1_reg_n_0_[22] ;
  wire \BytesInFIFO_1_reg_n_0_[23] ;
  wire \BytesInFIFO_1_reg_n_0_[24] ;
  wire \BytesInFIFO_1_reg_n_0_[25] ;
  wire \BytesInFIFO_1_reg_n_0_[26] ;
  wire \BytesInFIFO_1_reg_n_0_[27] ;
  wire \BytesInFIFO_1_reg_n_0_[28] ;
  wire \BytesInFIFO_1_reg_n_0_[29] ;
  wire \BytesInFIFO_1_reg_n_0_[2] ;
  wire \BytesInFIFO_1_reg_n_0_[30] ;
  wire \BytesInFIFO_1_reg_n_0_[31] ;
  wire \BytesInFIFO_1_reg_n_0_[3] ;
  wire \BytesInFIFO_1_reg_n_0_[4] ;
  wire \BytesInFIFO_1_reg_n_0_[5] ;
  wire \BytesInFIFO_1_reg_n_0_[6] ;
  wire \BytesInFIFO_1_reg_n_0_[7] ;
  wire \BytesInFIFO_1_reg_n_0_[8] ;
  wire \BytesInFIFO_1_reg_n_0_[9] ;
  wire CLK;
  wire Clock;
  wire [31:0]Data;
  wire [2:0]FIFOState;
  wire \FIFO_0[0][31]_i_1_n_0 ;
  wire \FIFO_0[0][31]_i_2_n_0 ;
  wire \FIFO_0[1]_3 ;
  wire \FIFO_0[2]_2 ;
  wire \FIFO_0[3][31]_i_10_n_0 ;
  wire \FIFO_0[3][31]_i_1_n_0 ;
  wire \FIFO_0[3][31]_i_3_n_0 ;
  wire \FIFO_0[3][31]_i_4_n_0 ;
  wire \FIFO_0[3][31]_i_5_n_0 ;
  wire \FIFO_0[3][31]_i_6_n_0 ;
  wire \FIFO_0[3][31]_i_7_n_0 ;
  wire \FIFO_0[3][31]_i_8_n_0 ;
  wire \FIFO_0[3][31]_i_9_n_0 ;
  wire \FIFO_0[3]_1 ;
  wire FIFO_0_Full1_carry__0_i_1_n_0;
  wire FIFO_0_Full1_carry__0_i_2_n_0;
  wire FIFO_0_Full1_carry__0_i_3_n_0;
  wire FIFO_0_Full1_carry__0_i_4_n_0;
  wire FIFO_0_Full1_carry__0_n_0;
  wire FIFO_0_Full1_carry__0_n_1;
  wire FIFO_0_Full1_carry__0_n_2;
  wire FIFO_0_Full1_carry__0_n_3;
  wire FIFO_0_Full1_carry__1_i_1_n_0;
  wire FIFO_0_Full1_carry__1_i_2_n_0;
  wire FIFO_0_Full1_carry__1_i_3_n_0;
  wire FIFO_0_Full1_carry__1_i_4_n_0;
  wire FIFO_0_Full1_carry__1_n_0;
  wire FIFO_0_Full1_carry__1_n_1;
  wire FIFO_0_Full1_carry__1_n_2;
  wire FIFO_0_Full1_carry__1_n_3;
  wire FIFO_0_Full1_carry__2_i_1_n_0;
  wire FIFO_0_Full1_carry__2_i_2_n_0;
  wire FIFO_0_Full1_carry__2_i_3_n_0;
  wire FIFO_0_Full1_carry__2_i_4_n_0;
  wire FIFO_0_Full1_carry__2_n_0;
  wire FIFO_0_Full1_carry__2_n_1;
  wire FIFO_0_Full1_carry__2_n_2;
  wire FIFO_0_Full1_carry__2_n_3;
  wire FIFO_0_Full1_carry_i_1_n_0;
  wire FIFO_0_Full1_carry_i_2_n_0;
  wire FIFO_0_Full1_carry_i_3_n_0;
  wire FIFO_0_Full1_carry_i_4_n_0;
  wire FIFO_0_Full1_carry_i_5_n_0;
  wire FIFO_0_Full1_carry_n_0;
  wire FIFO_0_Full1_carry_n_1;
  wire FIFO_0_Full1_carry_n_2;
  wire FIFO_0_Full1_carry_n_3;
  wire FIFO_0_Full_i_1_n_0;
  wire FIFO_0_Full_reg_n_0;
  wire [31:0]\FIFO_0_reg[0] ;
  wire [31:0]\FIFO_0_reg[1] ;
  wire [31:0]\FIFO_0_reg[2] ;
  wire [31:0]\FIFO_0_reg[3] ;
  wire FIFO_1_Full1_carry__0_i_1_n_0;
  wire FIFO_1_Full1_carry__0_i_2_n_0;
  wire FIFO_1_Full1_carry__0_i_3_n_0;
  wire FIFO_1_Full1_carry__0_i_4_n_0;
  wire FIFO_1_Full1_carry__0_i_5_n_0;
  wire FIFO_1_Full1_carry__0_i_6_n_0;
  wire FIFO_1_Full1_carry__0_i_7_n_0;
  wire FIFO_1_Full1_carry__0_i_8_n_0;
  wire FIFO_1_Full1_carry__0_n_0;
  wire FIFO_1_Full1_carry__0_n_1;
  wire FIFO_1_Full1_carry__0_n_2;
  wire FIFO_1_Full1_carry__0_n_3;
  wire FIFO_1_Full1_carry__1_i_1_n_0;
  wire FIFO_1_Full1_carry__1_i_2_n_0;
  wire FIFO_1_Full1_carry__1_i_3_n_0;
  wire FIFO_1_Full1_carry__1_i_4_n_0;
  wire FIFO_1_Full1_carry__1_i_5_n_0;
  wire FIFO_1_Full1_carry__1_i_6_n_0;
  wire FIFO_1_Full1_carry__1_i_7_n_0;
  wire FIFO_1_Full1_carry__1_i_8_n_0;
  wire FIFO_1_Full1_carry__1_n_0;
  wire FIFO_1_Full1_carry__1_n_1;
  wire FIFO_1_Full1_carry__1_n_2;
  wire FIFO_1_Full1_carry__1_n_3;
  wire FIFO_1_Full1_carry__2_i_1_n_0;
  wire FIFO_1_Full1_carry__2_i_2_n_0;
  wire FIFO_1_Full1_carry__2_i_3_n_0;
  wire FIFO_1_Full1_carry__2_i_4_n_0;
  wire FIFO_1_Full1_carry__2_i_5_n_0;
  wire FIFO_1_Full1_carry__2_i_6_n_0;
  wire FIFO_1_Full1_carry__2_i_7_n_0;
  wire FIFO_1_Full1_carry__2_i_8_n_0;
  wire FIFO_1_Full1_carry__2_n_1;
  wire FIFO_1_Full1_carry__2_n_2;
  wire FIFO_1_Full1_carry__2_n_3;
  wire FIFO_1_Full1_carry_i_1_n_0;
  wire FIFO_1_Full1_carry_i_2_n_0;
  wire FIFO_1_Full1_carry_i_3_n_0;
  wire FIFO_1_Full1_carry_i_4_n_0;
  wire FIFO_1_Full1_carry_i_5_n_0;
  wire FIFO_1_Full1_carry_i_6_n_0;
  wire FIFO_1_Full1_carry_i_7_n_0;
  wire FIFO_1_Full1_carry_i_8_n_0;
  wire FIFO_1_Full1_carry_n_0;
  wire FIFO_1_Full1_carry_n_1;
  wire FIFO_1_Full1_carry_n_2;
  wire FIFO_1_Full1_carry_n_3;
  wire FIFO_1_Full_i_1_n_0;
  wire FIFO_1_Full_i_2_n_0;
  wire FIFO_1_Full_reg_n_0;
  wire [31:0]\FIFO_1_reg[0] ;
  wire [31:0]\FIFO_1_reg[1] ;
  wire [31:0]\FIFO_1_reg[2] ;
  wire [31:0]\FIFO_1_reg[3] ;
  wire \FSM_sequential_FIFOState[0]_i_1_n_0 ;
  wire \FSM_sequential_FIFOState[0]_i_2_n_0 ;
  wire \FSM_sequential_FIFOState[1]_i_1_n_0 ;
  wire \FSM_sequential_FIFOState[1]_i_2_n_0 ;
  wire \FSM_sequential_FIFOState[2]_i_1_n_0 ;
  wire \FSM_sequential_FIFOState[2]_i_2_n_0 ;
  wire [2:0]I2SState;
  wire I2SState0_carry__0_n_0;
  wire I2SState0_carry__0_n_1;
  wire I2SState0_carry__0_n_2;
  wire I2SState0_carry__0_n_3;
  wire I2SState0_carry__1_n_0;
  wire I2SState0_carry__1_n_1;
  wire I2SState0_carry__1_n_2;
  wire I2SState0_carry__1_n_3;
  wire I2SState0_carry__2_n_0;
  wire I2SState0_carry__2_n_1;
  wire I2SState0_carry__2_n_2;
  wire I2SState0_carry__2_n_3;
  wire I2SState0_carry_n_0;
  wire I2SState0_carry_n_1;
  wire I2SState0_carry_n_2;
  wire I2SState0_carry_n_3;
  wire LRCLK_OBUF;
  wire Locked;
  wire [31:0]MCLK_Cnt;
  wire \MCLK_Cnt[31]_i_10_n_0 ;
  wire \MCLK_Cnt[31]_i_11_n_0 ;
  wire \MCLK_Cnt[31]_i_3_n_0 ;
  wire \MCLK_Cnt[31]_i_4_n_0 ;
  wire \MCLK_Cnt[31]_i_5_n_0 ;
  wire \MCLK_Cnt[31]_i_6_n_0 ;
  wire \MCLK_Cnt[31]_i_7_n_0 ;
  wire \MCLK_Cnt[31]_i_8_n_0 ;
  wire \MCLK_Cnt[31]_i_9_n_0 ;
  wire [31:0]MCLK_Cnt_0;
  wire \MCLK_Cnt_reg[12]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[12]_i_2_n_1 ;
  wire \MCLK_Cnt_reg[12]_i_2_n_2 ;
  wire \MCLK_Cnt_reg[12]_i_2_n_3 ;
  wire \MCLK_Cnt_reg[16]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[16]_i_2_n_1 ;
  wire \MCLK_Cnt_reg[16]_i_2_n_2 ;
  wire \MCLK_Cnt_reg[16]_i_2_n_3 ;
  wire \MCLK_Cnt_reg[20]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[20]_i_2_n_1 ;
  wire \MCLK_Cnt_reg[20]_i_2_n_2 ;
  wire \MCLK_Cnt_reg[20]_i_2_n_3 ;
  wire \MCLK_Cnt_reg[24]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[24]_i_2_n_1 ;
  wire \MCLK_Cnt_reg[24]_i_2_n_2 ;
  wire \MCLK_Cnt_reg[24]_i_2_n_3 ;
  wire \MCLK_Cnt_reg[28]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[28]_i_2_n_1 ;
  wire \MCLK_Cnt_reg[28]_i_2_n_2 ;
  wire \MCLK_Cnt_reg[28]_i_2_n_3 ;
  wire \MCLK_Cnt_reg[31]_i_2_n_2 ;
  wire \MCLK_Cnt_reg[31]_i_2_n_3 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_1 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_2 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_3 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_1 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_2 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_3 ;
  wire ReadCounter;
  wire \ReadCounter[0]_i_3_n_0 ;
  wire \ReadCounter[0]_i_4_n_0 ;
  wire \ReadCounter[0]_i_5_n_0 ;
  wire \ReadCounter[0]_i_6_n_0 ;
  wire \ReadCounter[12]_i_2_n_0 ;
  wire \ReadCounter[12]_i_3_n_0 ;
  wire \ReadCounter[12]_i_4_n_0 ;
  wire \ReadCounter[12]_i_5_n_0 ;
  wire \ReadCounter[16]_i_2_n_0 ;
  wire \ReadCounter[16]_i_3_n_0 ;
  wire \ReadCounter[16]_i_4_n_0 ;
  wire \ReadCounter[16]_i_5_n_0 ;
  wire \ReadCounter[20]_i_2_n_0 ;
  wire \ReadCounter[20]_i_3_n_0 ;
  wire \ReadCounter[20]_i_4_n_0 ;
  wire \ReadCounter[20]_i_5_n_0 ;
  wire \ReadCounter[24]_i_2_n_0 ;
  wire \ReadCounter[24]_i_3_n_0 ;
  wire \ReadCounter[24]_i_4_n_0 ;
  wire \ReadCounter[24]_i_5_n_0 ;
  wire \ReadCounter[28]_i_2_n_0 ;
  wire \ReadCounter[28]_i_3_n_0 ;
  wire \ReadCounter[28]_i_4_n_0 ;
  wire \ReadCounter[28]_i_5_n_0 ;
  wire \ReadCounter[4]_i_2_n_0 ;
  wire \ReadCounter[4]_i_3_n_0 ;
  wire \ReadCounter[4]_i_4_n_0 ;
  wire \ReadCounter[4]_i_5_n_0 ;
  wire \ReadCounter[8]_i_2_n_0 ;
  wire \ReadCounter[8]_i_3_n_0 ;
  wire \ReadCounter[8]_i_4_n_0 ;
  wire \ReadCounter[8]_i_5_n_0 ;
  wire [31:0]ReadCounter_reg;
  wire \ReadCounter_reg[0]_i_2_n_0 ;
  wire \ReadCounter_reg[0]_i_2_n_1 ;
  wire \ReadCounter_reg[0]_i_2_n_2 ;
  wire \ReadCounter_reg[0]_i_2_n_3 ;
  wire \ReadCounter_reg[0]_i_2_n_4 ;
  wire \ReadCounter_reg[0]_i_2_n_5 ;
  wire \ReadCounter_reg[0]_i_2_n_6 ;
  wire \ReadCounter_reg[0]_i_2_n_7 ;
  wire \ReadCounter_reg[12]_i_1_n_0 ;
  wire \ReadCounter_reg[12]_i_1_n_1 ;
  wire \ReadCounter_reg[12]_i_1_n_2 ;
  wire \ReadCounter_reg[12]_i_1_n_3 ;
  wire \ReadCounter_reg[12]_i_1_n_4 ;
  wire \ReadCounter_reg[12]_i_1_n_5 ;
  wire \ReadCounter_reg[12]_i_1_n_6 ;
  wire \ReadCounter_reg[12]_i_1_n_7 ;
  wire \ReadCounter_reg[16]_i_1_n_0 ;
  wire \ReadCounter_reg[16]_i_1_n_1 ;
  wire \ReadCounter_reg[16]_i_1_n_2 ;
  wire \ReadCounter_reg[16]_i_1_n_3 ;
  wire \ReadCounter_reg[16]_i_1_n_4 ;
  wire \ReadCounter_reg[16]_i_1_n_5 ;
  wire \ReadCounter_reg[16]_i_1_n_6 ;
  wire \ReadCounter_reg[16]_i_1_n_7 ;
  wire \ReadCounter_reg[20]_i_1_n_0 ;
  wire \ReadCounter_reg[20]_i_1_n_1 ;
  wire \ReadCounter_reg[20]_i_1_n_2 ;
  wire \ReadCounter_reg[20]_i_1_n_3 ;
  wire \ReadCounter_reg[20]_i_1_n_4 ;
  wire \ReadCounter_reg[20]_i_1_n_5 ;
  wire \ReadCounter_reg[20]_i_1_n_6 ;
  wire \ReadCounter_reg[20]_i_1_n_7 ;
  wire \ReadCounter_reg[24]_i_1_n_0 ;
  wire \ReadCounter_reg[24]_i_1_n_1 ;
  wire \ReadCounter_reg[24]_i_1_n_2 ;
  wire \ReadCounter_reg[24]_i_1_n_3 ;
  wire \ReadCounter_reg[24]_i_1_n_4 ;
  wire \ReadCounter_reg[24]_i_1_n_5 ;
  wire \ReadCounter_reg[24]_i_1_n_6 ;
  wire \ReadCounter_reg[24]_i_1_n_7 ;
  wire \ReadCounter_reg[28]_i_1_n_1 ;
  wire \ReadCounter_reg[28]_i_1_n_2 ;
  wire \ReadCounter_reg[28]_i_1_n_3 ;
  wire \ReadCounter_reg[28]_i_1_n_4 ;
  wire \ReadCounter_reg[28]_i_1_n_5 ;
  wire \ReadCounter_reg[28]_i_1_n_6 ;
  wire \ReadCounter_reg[28]_i_1_n_7 ;
  wire \ReadCounter_reg[4]_i_1_n_0 ;
  wire \ReadCounter_reg[4]_i_1_n_1 ;
  wire \ReadCounter_reg[4]_i_1_n_2 ;
  wire \ReadCounter_reg[4]_i_1_n_3 ;
  wire \ReadCounter_reg[4]_i_1_n_4 ;
  wire \ReadCounter_reg[4]_i_1_n_5 ;
  wire \ReadCounter_reg[4]_i_1_n_6 ;
  wire \ReadCounter_reg[4]_i_1_n_7 ;
  wire \ReadCounter_reg[8]_i_1_n_0 ;
  wire \ReadCounter_reg[8]_i_1_n_1 ;
  wire \ReadCounter_reg[8]_i_1_n_2 ;
  wire \ReadCounter_reg[8]_i_1_n_3 ;
  wire \ReadCounter_reg[8]_i_1_n_4 ;
  wire \ReadCounter_reg[8]_i_1_n_5 ;
  wire \ReadCounter_reg[8]_i_1_n_6 ;
  wire \ReadCounter_reg[8]_i_1_n_7 ;
  wire Resetn_IBUF;
  wire SCLK_OBUF;
  wire SD_Int_reg;
  wire SD_OBUF;
  wire [31:0]TDATA;
  wire TREADY;
  wire TREADY_Int_i_1_n_0;
  wire TVALID;
  wire Transmitter_n_1;
  wire Transmitter_n_10;
  wire Transmitter_n_11;
  wire Transmitter_n_12;
  wire Transmitter_n_13;
  wire Transmitter_n_14;
  wire Transmitter_n_15;
  wire Transmitter_n_16;
  wire Transmitter_n_17;
  wire Transmitter_n_18;
  wire Transmitter_n_19;
  wire Transmitter_n_20;
  wire Transmitter_n_21;
  wire Transmitter_n_22;
  wire Transmitter_n_23;
  wire Transmitter_n_24;
  wire Transmitter_n_25;
  wire Transmitter_n_26;
  wire Transmitter_n_27;
  wire Transmitter_n_28;
  wire Transmitter_n_29;
  wire Transmitter_n_30;
  wire Transmitter_n_31;
  wire Transmitter_n_32;
  wire Transmitter_n_33;
  wire Transmitter_n_34;
  wire Transmitter_n_35;
  wire Transmitter_n_4;
  wire Transmitter_n_5;
  wire Transmitter_n_6;
  wire Transmitter_n_7;
  wire Transmitter_n_8;
  wire Transmitter_n_9;
  wire [31:1]data0;
  wire [31:1]in10;
  wire p_0_in;
  wire [3:2]\NLW_BytesInFIFO_0_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_BytesInFIFO_0_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_FIFO_0_Full1_carry_O_UNCONNECTED;
  wire [3:0]NLW_FIFO_0_Full1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_FIFO_0_Full1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_FIFO_0_Full1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_FIFO_1_Full1_carry_O_UNCONNECTED;
  wire [3:0]NLW_FIFO_1_Full1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_FIFO_1_Full1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_FIFO_1_Full1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_I2SState0_carry_O_UNCONNECTED;
  wire [3:0]NLW_I2SState0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_I2SState0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_I2SState0_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_MCLK_Cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_MCLK_Cnt_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_ReadCounter_reg[28]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    Active_OBUF_inst_i_1
       (.I0(Locked),
        .I1(Resetn_IBUF),
        .O(Active_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    AudioClock_i_1
       (.I0(\MCLK_Cnt[31]_i_3_n_0 ),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .I3(AudioClock_reg_0),
        .O(AudioClock_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioClock_reg
       (.C(CLK),
        .CE(1'b1),
        .D(AudioClock_i_1_n_0),
        .Q(AudioClock_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[0]_i_1 
       (.I0(\FIFO_1_reg[3] [0]),
        .I1(\FIFO_1_reg[2] [0]),
        .I2(\FIFO_1_reg[1] [0]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [0]),
        .O(\AudioData[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[10]_i_1 
       (.I0(\FIFO_1_reg[3] [10]),
        .I1(\FIFO_1_reg[2] [10]),
        .I2(\FIFO_1_reg[1] [10]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [10]),
        .O(\AudioData[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[11]_i_1 
       (.I0(\FIFO_1_reg[3] [11]),
        .I1(\FIFO_1_reg[2] [11]),
        .I2(\FIFO_1_reg[1] [11]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [11]),
        .O(\AudioData[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[12]_i_1 
       (.I0(\FIFO_1_reg[3] [12]),
        .I1(\FIFO_1_reg[2] [12]),
        .I2(\FIFO_1_reg[1] [12]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [12]),
        .O(\AudioData[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[13]_i_1 
       (.I0(\FIFO_1_reg[3] [13]),
        .I1(\FIFO_1_reg[2] [13]),
        .I2(\FIFO_1_reg[1] [13]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [13]),
        .O(\AudioData[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[14]_i_1 
       (.I0(\FIFO_1_reg[3] [14]),
        .I1(\FIFO_1_reg[2] [14]),
        .I2(\FIFO_1_reg[1] [14]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [14]),
        .O(\AudioData[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[15]_i_1 
       (.I0(\FIFO_1_reg[3] [15]),
        .I1(\FIFO_1_reg[2] [15]),
        .I2(\FIFO_1_reg[1] [15]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [15]),
        .O(\AudioData[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[16]_i_1 
       (.I0(\FIFO_1_reg[3] [16]),
        .I1(\FIFO_1_reg[2] [16]),
        .I2(\FIFO_1_reg[1] [16]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [16]),
        .O(\AudioData[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[17]_i_1 
       (.I0(\FIFO_1_reg[3] [17]),
        .I1(\FIFO_1_reg[2] [17]),
        .I2(\FIFO_1_reg[1] [17]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [17]),
        .O(\AudioData[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[18]_i_1 
       (.I0(\FIFO_1_reg[3] [18]),
        .I1(\FIFO_1_reg[2] [18]),
        .I2(\FIFO_1_reg[1] [18]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [18]),
        .O(\AudioData[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[19]_i_1 
       (.I0(\FIFO_1_reg[3] [19]),
        .I1(\FIFO_1_reg[2] [19]),
        .I2(\FIFO_1_reg[1] [19]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [19]),
        .O(\AudioData[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[1]_i_1 
       (.I0(\FIFO_1_reg[3] [1]),
        .I1(\FIFO_1_reg[2] [1]),
        .I2(\FIFO_1_reg[1] [1]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [1]),
        .O(\AudioData[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[20]_i_1 
       (.I0(\FIFO_1_reg[3] [20]),
        .I1(\FIFO_1_reg[2] [20]),
        .I2(\FIFO_1_reg[1] [20]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [20]),
        .O(\AudioData[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[21]_i_1 
       (.I0(\FIFO_1_reg[3] [21]),
        .I1(\FIFO_1_reg[2] [21]),
        .I2(\FIFO_1_reg[1] [21]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [21]),
        .O(\AudioData[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[22]_i_1 
       (.I0(\FIFO_1_reg[3] [22]),
        .I1(\FIFO_1_reg[2] [22]),
        .I2(\FIFO_1_reg[1] [22]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [22]),
        .O(\AudioData[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[23]_i_1 
       (.I0(\FIFO_1_reg[3] [23]),
        .I1(\FIFO_1_reg[2] [23]),
        .I2(\FIFO_1_reg[1] [23]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [23]),
        .O(\AudioData[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[24]_i_1 
       (.I0(\FIFO_1_reg[3] [24]),
        .I1(\FIFO_1_reg[2] [24]),
        .I2(\FIFO_1_reg[1] [24]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [24]),
        .O(\AudioData[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[25]_i_1 
       (.I0(\FIFO_1_reg[3] [25]),
        .I1(\FIFO_1_reg[2] [25]),
        .I2(\FIFO_1_reg[1] [25]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [25]),
        .O(\AudioData[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[26]_i_1 
       (.I0(\FIFO_1_reg[3] [26]),
        .I1(\FIFO_1_reg[2] [26]),
        .I2(\FIFO_1_reg[1] [26]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [26]),
        .O(\AudioData[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[27]_i_1 
       (.I0(\FIFO_1_reg[3] [27]),
        .I1(\FIFO_1_reg[2] [27]),
        .I2(\FIFO_1_reg[1] [27]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [27]),
        .O(\AudioData[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[28]_i_1 
       (.I0(\FIFO_1_reg[3] [28]),
        .I1(\FIFO_1_reg[2] [28]),
        .I2(\FIFO_1_reg[1] [28]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [28]),
        .O(\AudioData[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[29]_i_1 
       (.I0(\FIFO_1_reg[3] [29]),
        .I1(\FIFO_1_reg[2] [29]),
        .I2(\FIFO_1_reg[1] [29]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [29]),
        .O(\AudioData[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[2]_i_1 
       (.I0(\FIFO_1_reg[3] [2]),
        .I1(\FIFO_1_reg[2] [2]),
        .I2(\FIFO_1_reg[1] [2]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [2]),
        .O(\AudioData[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[30]_i_1 
       (.I0(\FIFO_1_reg[3] [30]),
        .I1(\FIFO_1_reg[2] [30]),
        .I2(\FIFO_1_reg[1] [30]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [30]),
        .O(\AudioData[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \AudioData[31]_i_1 
       (.I0(I2SState[0]),
        .I1(I2SState[2]),
        .I2(I2SState[1]),
        .O(\AudioData[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \AudioData[31]_i_2 
       (.I0(I2SState[2]),
        .I1(I2SState[1]),
        .I2(I2SState[0]),
        .O(\AudioData[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[31]_i_3 
       (.I0(\FIFO_1_reg[3] [31]),
        .I1(\FIFO_1_reg[2] [31]),
        .I2(\FIFO_1_reg[1] [31]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [31]),
        .O(\AudioData[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[3]_i_1 
       (.I0(\FIFO_1_reg[3] [3]),
        .I1(\FIFO_1_reg[2] [3]),
        .I2(\FIFO_1_reg[1] [3]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [3]),
        .O(\AudioData[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[4]_i_1 
       (.I0(\FIFO_1_reg[3] [4]),
        .I1(\FIFO_1_reg[2] [4]),
        .I2(\FIFO_1_reg[1] [4]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [4]),
        .O(\AudioData[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[5]_i_1 
       (.I0(\FIFO_1_reg[3] [5]),
        .I1(\FIFO_1_reg[2] [5]),
        .I2(\FIFO_1_reg[1] [5]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [5]),
        .O(\AudioData[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[6]_i_1 
       (.I0(\FIFO_1_reg[3] [6]),
        .I1(\FIFO_1_reg[2] [6]),
        .I2(\FIFO_1_reg[1] [6]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [6]),
        .O(\AudioData[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[7]_i_1 
       (.I0(\FIFO_1_reg[3] [7]),
        .I1(\FIFO_1_reg[2] [7]),
        .I2(\FIFO_1_reg[1] [7]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [7]),
        .O(\AudioData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[8]_i_1 
       (.I0(\FIFO_1_reg[3] [8]),
        .I1(\FIFO_1_reg[2] [8]),
        .I2(\FIFO_1_reg[1] [8]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [8]),
        .O(\AudioData[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AudioData[9]_i_1 
       (.I0(\FIFO_1_reg[3] [9]),
        .I1(\FIFO_1_reg[2] [9]),
        .I2(\FIFO_1_reg[1] [9]),
        .I3(ReadCounter_reg[0]),
        .I4(ReadCounter_reg[1]),
        .I5(\FIFO_1_reg[0] [9]),
        .O(\AudioData[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[0] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[0]_i_1_n_0 ),
        .Q(Data[0]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[10] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[10]_i_1_n_0 ),
        .Q(Data[10]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[11] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[11]_i_1_n_0 ),
        .Q(Data[11]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[12] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[12]_i_1_n_0 ),
        .Q(Data[12]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[13] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[13]_i_1_n_0 ),
        .Q(Data[13]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[14] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[14]_i_1_n_0 ),
        .Q(Data[14]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[15] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[15]_i_1_n_0 ),
        .Q(Data[15]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[16] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[16]_i_1_n_0 ),
        .Q(Data[16]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[17] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[17]_i_1_n_0 ),
        .Q(Data[17]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[18] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[18]_i_1_n_0 ),
        .Q(Data[18]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[19] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[19]_i_1_n_0 ),
        .Q(Data[19]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[1] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[1]_i_1_n_0 ),
        .Q(Data[1]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[20] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[20]_i_1_n_0 ),
        .Q(Data[20]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[21] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[21]_i_1_n_0 ),
        .Q(Data[21]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[22] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[22]_i_1_n_0 ),
        .Q(Data[22]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[23] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[23]_i_1_n_0 ),
        .Q(Data[23]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[24] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[24]_i_1_n_0 ),
        .Q(Data[24]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[25] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[25]_i_1_n_0 ),
        .Q(Data[25]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[26] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[26]_i_1_n_0 ),
        .Q(Data[26]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[27] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[27]_i_1_n_0 ),
        .Q(Data[27]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[28] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[28]_i_1_n_0 ),
        .Q(Data[28]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[29] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[29]_i_1_n_0 ),
        .Q(Data[29]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[2] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[2]_i_1_n_0 ),
        .Q(Data[2]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[30] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[30]_i_1_n_0 ),
        .Q(Data[30]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[31] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[31]_i_3_n_0 ),
        .Q(Data[31]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[3] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[3]_i_1_n_0 ),
        .Q(Data[3]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[4] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[4]_i_1_n_0 ),
        .Q(Data[4]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[5] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[5]_i_1_n_0 ),
        .Q(Data[5]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[6] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[6]_i_1_n_0 ),
        .Q(Data[6]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[7] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[7]_i_1_n_0 ),
        .Q(Data[7]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[8] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[8]_i_1_n_0 ),
        .Q(Data[8]),
        .R(\AudioData[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[9] 
       (.C(Clock),
        .CE(\AudioData[31]_i_2_n_0 ),
        .D(\AudioData[9]_i_1_n_0 ),
        .Q(Data[9]),
        .R(\AudioData[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \BytesInFIFO_0[0]_i_1 
       (.I0(\BytesInFIFO_0_reg_n_0_[0] ),
        .O(\BytesInFIFO_0[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0301)) 
    \BytesInFIFO_0[31]_i_1 
       (.I0(FIFOState[2]),
        .I1(FIFOState[0]),
        .I2(FIFOState[1]),
        .I3(FIFO_1_Full_reg_n_0),
        .O(\BytesInFIFO_0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h002200F3)) 
    \BytesInFIFO_0[31]_i_2 
       (.I0(FIFO_1_Full_reg_n_0),
        .I1(FIFOState[1]),
        .I2(FIFO_0_Full1_carry__2_n_0),
        .I3(FIFOState[0]),
        .I4(FIFOState[2]),
        .O(\BytesInFIFO_0[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[0] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0[0]_i_1_n_0 ),
        .Q(\BytesInFIFO_0_reg_n_0_[0] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[10] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[10]),
        .Q(\BytesInFIFO_0_reg_n_0_[10] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[11] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[11]),
        .Q(\BytesInFIFO_0_reg_n_0_[11] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[12] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[12]),
        .Q(\BytesInFIFO_0_reg_n_0_[12] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  CARRY4 \BytesInFIFO_0_reg[12]_i_1 
       (.CI(\BytesInFIFO_0_reg[8]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[12]_i_1_n_0 ,\BytesInFIFO_0_reg[12]_i_1_n_1 ,\BytesInFIFO_0_reg[12]_i_1_n_2 ,\BytesInFIFO_0_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[12:9]),
        .S({\BytesInFIFO_0_reg_n_0_[12] ,\BytesInFIFO_0_reg_n_0_[11] ,\BytesInFIFO_0_reg_n_0_[10] ,\BytesInFIFO_0_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[13] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[13]),
        .Q(\BytesInFIFO_0_reg_n_0_[13] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[14] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[14]),
        .Q(\BytesInFIFO_0_reg_n_0_[14] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[15] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[15]),
        .Q(\BytesInFIFO_0_reg_n_0_[15] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[16] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[16]),
        .Q(\BytesInFIFO_0_reg_n_0_[16] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  CARRY4 \BytesInFIFO_0_reg[16]_i_1 
       (.CI(\BytesInFIFO_0_reg[12]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[16]_i_1_n_0 ,\BytesInFIFO_0_reg[16]_i_1_n_1 ,\BytesInFIFO_0_reg[16]_i_1_n_2 ,\BytesInFIFO_0_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[16:13]),
        .S({\BytesInFIFO_0_reg_n_0_[16] ,\BytesInFIFO_0_reg_n_0_[15] ,\BytesInFIFO_0_reg_n_0_[14] ,\BytesInFIFO_0_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[17] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[17]),
        .Q(\BytesInFIFO_0_reg_n_0_[17] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[18] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[18]),
        .Q(\BytesInFIFO_0_reg_n_0_[18] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[19] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[19]),
        .Q(\BytesInFIFO_0_reg_n_0_[19] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[1] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[1]),
        .Q(\BytesInFIFO_0_reg_n_0_[1] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[20] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[20]),
        .Q(\BytesInFIFO_0_reg_n_0_[20] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  CARRY4 \BytesInFIFO_0_reg[20]_i_1 
       (.CI(\BytesInFIFO_0_reg[16]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[20]_i_1_n_0 ,\BytesInFIFO_0_reg[20]_i_1_n_1 ,\BytesInFIFO_0_reg[20]_i_1_n_2 ,\BytesInFIFO_0_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[20:17]),
        .S({\BytesInFIFO_0_reg_n_0_[20] ,\BytesInFIFO_0_reg_n_0_[19] ,\BytesInFIFO_0_reg_n_0_[18] ,\BytesInFIFO_0_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[21] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[21]),
        .Q(\BytesInFIFO_0_reg_n_0_[21] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[22] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[22]),
        .Q(\BytesInFIFO_0_reg_n_0_[22] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[23] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[23]),
        .Q(\BytesInFIFO_0_reg_n_0_[23] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[24] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[24]),
        .Q(\BytesInFIFO_0_reg_n_0_[24] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  CARRY4 \BytesInFIFO_0_reg[24]_i_1 
       (.CI(\BytesInFIFO_0_reg[20]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[24]_i_1_n_0 ,\BytesInFIFO_0_reg[24]_i_1_n_1 ,\BytesInFIFO_0_reg[24]_i_1_n_2 ,\BytesInFIFO_0_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[24:21]),
        .S({\BytesInFIFO_0_reg_n_0_[24] ,\BytesInFIFO_0_reg_n_0_[23] ,\BytesInFIFO_0_reg_n_0_[22] ,\BytesInFIFO_0_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[25] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[25]),
        .Q(\BytesInFIFO_0_reg_n_0_[25] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[26] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[26]),
        .Q(\BytesInFIFO_0_reg_n_0_[26] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[27] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[27]),
        .Q(\BytesInFIFO_0_reg_n_0_[27] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[28] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[28]),
        .Q(\BytesInFIFO_0_reg_n_0_[28] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  CARRY4 \BytesInFIFO_0_reg[28]_i_1 
       (.CI(\BytesInFIFO_0_reg[24]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[28]_i_1_n_0 ,\BytesInFIFO_0_reg[28]_i_1_n_1 ,\BytesInFIFO_0_reg[28]_i_1_n_2 ,\BytesInFIFO_0_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[28:25]),
        .S({\BytesInFIFO_0_reg_n_0_[28] ,\BytesInFIFO_0_reg_n_0_[27] ,\BytesInFIFO_0_reg_n_0_[26] ,\BytesInFIFO_0_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[29] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[29]),
        .Q(\BytesInFIFO_0_reg_n_0_[29] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[2] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[2]),
        .Q(\BytesInFIFO_0_reg_n_0_[2] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[30] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[30]),
        .Q(\BytesInFIFO_0_reg_n_0_[30] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[31] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[31]),
        .Q(\BytesInFIFO_0_reg_n_0_[31] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  CARRY4 \BytesInFIFO_0_reg[31]_i_3 
       (.CI(\BytesInFIFO_0_reg[28]_i_1_n_0 ),
        .CO({\NLW_BytesInFIFO_0_reg[31]_i_3_CO_UNCONNECTED [3:2],\BytesInFIFO_0_reg[31]_i_3_n_2 ,\BytesInFIFO_0_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_BytesInFIFO_0_reg[31]_i_3_O_UNCONNECTED [3],in10[31:29]}),
        .S({1'b0,\BytesInFIFO_0_reg_n_0_[31] ,\BytesInFIFO_0_reg_n_0_[30] ,\BytesInFIFO_0_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[3] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[3]),
        .Q(\BytesInFIFO_0_reg_n_0_[3] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[4] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[4]),
        .Q(\BytesInFIFO_0_reg_n_0_[4] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  CARRY4 \BytesInFIFO_0_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\BytesInFIFO_0_reg[4]_i_1_n_0 ,\BytesInFIFO_0_reg[4]_i_1_n_1 ,\BytesInFIFO_0_reg[4]_i_1_n_2 ,\BytesInFIFO_0_reg[4]_i_1_n_3 }),
        .CYINIT(\BytesInFIFO_0_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[4:1]),
        .S({\BytesInFIFO_0_reg_n_0_[4] ,\BytesInFIFO_0_reg_n_0_[3] ,\BytesInFIFO_0_reg_n_0_[2] ,\BytesInFIFO_0_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[5] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[5]),
        .Q(\BytesInFIFO_0_reg_n_0_[5] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[6] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[6]),
        .Q(\BytesInFIFO_0_reg_n_0_[6] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[7] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[7]),
        .Q(\BytesInFIFO_0_reg_n_0_[7] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[8] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[8]),
        .Q(\BytesInFIFO_0_reg_n_0_[8] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  CARRY4 \BytesInFIFO_0_reg[8]_i_1 
       (.CI(\BytesInFIFO_0_reg[4]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[8]_i_1_n_0 ,\BytesInFIFO_0_reg[8]_i_1_n_1 ,\BytesInFIFO_0_reg[8]_i_1_n_2 ,\BytesInFIFO_0_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:5]),
        .S({\BytesInFIFO_0_reg_n_0_[8] ,\BytesInFIFO_0_reg_n_0_[7] ,\BytesInFIFO_0_reg_n_0_[6] ,\BytesInFIFO_0_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_0_reg[9] 
       (.C(Clock),
        .CE(\BytesInFIFO_0[31]_i_2_n_0 ),
        .D(in10[9]),
        .Q(\BytesInFIFO_0_reg_n_0_[9] ),
        .R(\BytesInFIFO_0[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \BytesInFIFO_1[31]_i_1 
       (.I0(I2SState[0]),
        .I1(I2SState[2]),
        .I2(\BytesInFIFO_1[31]_i_2_n_0 ),
        .O(\BytesInFIFO_1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000D)) 
    \BytesInFIFO_1[31]_i_2 
       (.I0(I2SState[0]),
        .I1(FIFO_0_Full_reg_n_0),
        .I2(I2SState[2]),
        .I3(I2SState[1]),
        .O(\BytesInFIFO_1[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[0] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[0] ),
        .Q(\BytesInFIFO_1_reg_n_0_[0] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[10] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[10] ),
        .Q(\BytesInFIFO_1_reg_n_0_[10] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[11] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[11] ),
        .Q(\BytesInFIFO_1_reg_n_0_[11] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[12] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[12] ),
        .Q(\BytesInFIFO_1_reg_n_0_[12] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[13] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[13] ),
        .Q(\BytesInFIFO_1_reg_n_0_[13] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[14] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[14] ),
        .Q(\BytesInFIFO_1_reg_n_0_[14] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[15] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[15] ),
        .Q(\BytesInFIFO_1_reg_n_0_[15] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[16] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[16] ),
        .Q(\BytesInFIFO_1_reg_n_0_[16] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[17] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[17] ),
        .Q(\BytesInFIFO_1_reg_n_0_[17] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[18] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[18] ),
        .Q(\BytesInFIFO_1_reg_n_0_[18] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[19] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[19] ),
        .Q(\BytesInFIFO_1_reg_n_0_[19] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[1] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[1] ),
        .Q(\BytesInFIFO_1_reg_n_0_[1] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[20] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[20] ),
        .Q(\BytesInFIFO_1_reg_n_0_[20] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[21] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[21] ),
        .Q(\BytesInFIFO_1_reg_n_0_[21] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[22] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[22] ),
        .Q(\BytesInFIFO_1_reg_n_0_[22] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[23] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[23] ),
        .Q(\BytesInFIFO_1_reg_n_0_[23] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[24] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[24] ),
        .Q(\BytesInFIFO_1_reg_n_0_[24] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[25] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[25] ),
        .Q(\BytesInFIFO_1_reg_n_0_[25] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[26] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[26] ),
        .Q(\BytesInFIFO_1_reg_n_0_[26] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[27] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[27] ),
        .Q(\BytesInFIFO_1_reg_n_0_[27] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[28] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[28] ),
        .Q(\BytesInFIFO_1_reg_n_0_[28] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[29] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[29] ),
        .Q(\BytesInFIFO_1_reg_n_0_[29] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[2] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[2] ),
        .Q(\BytesInFIFO_1_reg_n_0_[2] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[30] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[30] ),
        .Q(\BytesInFIFO_1_reg_n_0_[30] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[31] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[31] ),
        .Q(\BytesInFIFO_1_reg_n_0_[31] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[3] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[3] ),
        .Q(\BytesInFIFO_1_reg_n_0_[3] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[4] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[4] ),
        .Q(\BytesInFIFO_1_reg_n_0_[4] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[5] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[5] ),
        .Q(\BytesInFIFO_1_reg_n_0_[5] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[6] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[6] ),
        .Q(\BytesInFIFO_1_reg_n_0_[6] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[7] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[7] ),
        .Q(\BytesInFIFO_1_reg_n_0_[7] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[8] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[8] ),
        .Q(\BytesInFIFO_1_reg_n_0_[8] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BytesInFIFO_1_reg[9] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\BytesInFIFO_0_reg_n_0_[9] ),
        .Q(\BytesInFIFO_1_reg_n_0_[9] ),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FIFO_0[0][31]_i_1 
       (.I0(FIFOState[0]),
        .I1(FIFOState[2]),
        .I2(FIFOState[1]),
        .O(\FIFO_0[0][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000555D)) 
    \FIFO_0[0][31]_i_2 
       (.I0(FIFOState[1]),
        .I1(\FIFO_0[3][31]_i_3_n_0 ),
        .I2(\BytesInFIFO_0_reg_n_0_[1] ),
        .I3(\BytesInFIFO_0_reg_n_0_[0] ),
        .I4(FIFOState[2]),
        .I5(FIFOState[0]),
        .O(\FIFO_0[0][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100011111111)) 
    \FIFO_0[1][31]_i_1 
       (.I0(FIFOState[2]),
        .I1(FIFOState[0]),
        .I2(\FIFO_0[3][31]_i_3_n_0 ),
        .I3(\BytesInFIFO_0_reg_n_0_[0] ),
        .I4(\BytesInFIFO_0_reg_n_0_[1] ),
        .I5(FIFOState[1]),
        .O(\FIFO_0[1]_3 ));
  LUT6 #(
    .INIT(64'h0000100011111111)) 
    \FIFO_0[2][31]_i_1 
       (.I0(FIFOState[2]),
        .I1(FIFOState[0]),
        .I2(\FIFO_0[3][31]_i_3_n_0 ),
        .I3(\BytesInFIFO_0_reg_n_0_[1] ),
        .I4(\BytesInFIFO_0_reg_n_0_[0] ),
        .I5(FIFOState[1]),
        .O(\FIFO_0[2]_2 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FIFO_0[3][31]_i_1 
       (.I0(FIFOState[1]),
        .I1(FIFOState[0]),
        .I2(FIFOState[2]),
        .O(\FIFO_0[3][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FIFO_0[3][31]_i_10 
       (.I0(\BytesInFIFO_0_reg_n_0_[3] ),
        .I1(\BytesInFIFO_0_reg_n_0_[2] ),
        .I2(\BytesInFIFO_0_reg_n_0_[25] ),
        .I3(\BytesInFIFO_0_reg_n_0_[24] ),
        .O(\FIFO_0[3][31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1000000011111111)) 
    \FIFO_0[3][31]_i_2 
       (.I0(FIFOState[2]),
        .I1(FIFOState[0]),
        .I2(\BytesInFIFO_0_reg_n_0_[1] ),
        .I3(\BytesInFIFO_0_reg_n_0_[0] ),
        .I4(\FIFO_0[3][31]_i_3_n_0 ),
        .I5(FIFOState[1]),
        .O(\FIFO_0[3]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FIFO_0[3][31]_i_3 
       (.I0(\FIFO_0[3][31]_i_4_n_0 ),
        .I1(\FIFO_0[3][31]_i_5_n_0 ),
        .I2(\BytesInFIFO_0_reg_n_0_[10] ),
        .I3(\BytesInFIFO_0_reg_n_0_[11] ),
        .I4(\FIFO_0[3][31]_i_6_n_0 ),
        .I5(\FIFO_0[3][31]_i_7_n_0 ),
        .O(\FIFO_0[3][31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FIFO_0[3][31]_i_4 
       (.I0(\BytesInFIFO_0_reg_n_0_[8] ),
        .I1(\BytesInFIFO_0_reg_n_0_[9] ),
        .I2(\BytesInFIFO_0_reg_n_0_[4] ),
        .I3(\BytesInFIFO_0_reg_n_0_[5] ),
        .I4(\FIFO_0[3][31]_i_8_n_0 ),
        .O(\FIFO_0[3][31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FIFO_0[3][31]_i_5 
       (.I0(\BytesInFIFO_0_reg_n_0_[22] ),
        .I1(\BytesInFIFO_0_reg_n_0_[23] ),
        .O(\FIFO_0[3][31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FIFO_0[3][31]_i_6 
       (.I0(\BytesInFIFO_0_reg_n_0_[13] ),
        .I1(\BytesInFIFO_0_reg_n_0_[12] ),
        .I2(\BytesInFIFO_0_reg_n_0_[17] ),
        .I3(\BytesInFIFO_0_reg_n_0_[16] ),
        .O(\FIFO_0[3][31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FIFO_0[3][31]_i_7 
       (.I0(\FIFO_0[3][31]_i_9_n_0 ),
        .I1(\FIFO_0[3][31]_i_10_n_0 ),
        .I2(\BytesInFIFO_0_reg_n_0_[15] ),
        .I3(\BytesInFIFO_0_reg_n_0_[14] ),
        .I4(\BytesInFIFO_0_reg_n_0_[21] ),
        .I5(\BytesInFIFO_0_reg_n_0_[20] ),
        .O(\FIFO_0[3][31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FIFO_0[3][31]_i_8 
       (.I0(\BytesInFIFO_0_reg_n_0_[29] ),
        .I1(\BytesInFIFO_0_reg_n_0_[28] ),
        .I2(\BytesInFIFO_0_reg_n_0_[27] ),
        .I3(\BytesInFIFO_0_reg_n_0_[26] ),
        .O(\FIFO_0[3][31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FIFO_0[3][31]_i_9 
       (.I0(\BytesInFIFO_0_reg_n_0_[19] ),
        .I1(\BytesInFIFO_0_reg_n_0_[18] ),
        .I2(\BytesInFIFO_0_reg_n_0_[30] ),
        .I3(\BytesInFIFO_0_reg_n_0_[31] ),
        .I4(\BytesInFIFO_0_reg_n_0_[6] ),
        .I5(\BytesInFIFO_0_reg_n_0_[7] ),
        .O(\FIFO_0[3][31]_i_9_n_0 ));
  CARRY4 FIFO_0_Full1_carry
       (.CI(1'b0),
        .CO({FIFO_0_Full1_carry_n_0,FIFO_0_Full1_carry_n_1,FIFO_0_Full1_carry_n_2,FIFO_0_Full1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,FIFO_0_Full1_carry_i_1_n_0}),
        .O(NLW_FIFO_0_Full1_carry_O_UNCONNECTED[3:0]),
        .S({FIFO_0_Full1_carry_i_2_n_0,FIFO_0_Full1_carry_i_3_n_0,FIFO_0_Full1_carry_i_4_n_0,FIFO_0_Full1_carry_i_5_n_0}));
  CARRY4 FIFO_0_Full1_carry__0
       (.CI(FIFO_0_Full1_carry_n_0),
        .CO({FIFO_0_Full1_carry__0_n_0,FIFO_0_Full1_carry__0_n_1,FIFO_0_Full1_carry__0_n_2,FIFO_0_Full1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_FIFO_0_Full1_carry__0_O_UNCONNECTED[3:0]),
        .S({FIFO_0_Full1_carry__0_i_1_n_0,FIFO_0_Full1_carry__0_i_2_n_0,FIFO_0_Full1_carry__0_i_3_n_0,FIFO_0_Full1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__0_i_1
       (.I0(\BytesInFIFO_0_reg_n_0_[15] ),
        .I1(\BytesInFIFO_0_reg_n_0_[14] ),
        .O(FIFO_0_Full1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__0_i_2
       (.I0(\BytesInFIFO_0_reg_n_0_[13] ),
        .I1(\BytesInFIFO_0_reg_n_0_[12] ),
        .O(FIFO_0_Full1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__0_i_3
       (.I0(\BytesInFIFO_0_reg_n_0_[10] ),
        .I1(\BytesInFIFO_0_reg_n_0_[11] ),
        .O(FIFO_0_Full1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__0_i_4
       (.I0(\BytesInFIFO_0_reg_n_0_[9] ),
        .I1(\BytesInFIFO_0_reg_n_0_[8] ),
        .O(FIFO_0_Full1_carry__0_i_4_n_0));
  CARRY4 FIFO_0_Full1_carry__1
       (.CI(FIFO_0_Full1_carry__0_n_0),
        .CO({FIFO_0_Full1_carry__1_n_0,FIFO_0_Full1_carry__1_n_1,FIFO_0_Full1_carry__1_n_2,FIFO_0_Full1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_FIFO_0_Full1_carry__1_O_UNCONNECTED[3:0]),
        .S({FIFO_0_Full1_carry__1_i_1_n_0,FIFO_0_Full1_carry__1_i_2_n_0,FIFO_0_Full1_carry__1_i_3_n_0,FIFO_0_Full1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__1_i_1
       (.I0(\BytesInFIFO_0_reg_n_0_[23] ),
        .I1(\BytesInFIFO_0_reg_n_0_[22] ),
        .O(FIFO_0_Full1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__1_i_2
       (.I0(\BytesInFIFO_0_reg_n_0_[21] ),
        .I1(\BytesInFIFO_0_reg_n_0_[20] ),
        .O(FIFO_0_Full1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__1_i_3
       (.I0(\BytesInFIFO_0_reg_n_0_[19] ),
        .I1(\BytesInFIFO_0_reg_n_0_[18] ),
        .O(FIFO_0_Full1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__1_i_4
       (.I0(\BytesInFIFO_0_reg_n_0_[17] ),
        .I1(\BytesInFIFO_0_reg_n_0_[16] ),
        .O(FIFO_0_Full1_carry__1_i_4_n_0));
  CARRY4 FIFO_0_Full1_carry__2
       (.CI(FIFO_0_Full1_carry__1_n_0),
        .CO({FIFO_0_Full1_carry__2_n_0,FIFO_0_Full1_carry__2_n_1,FIFO_0_Full1_carry__2_n_2,FIFO_0_Full1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\BytesInFIFO_0_reg_n_0_[31] ,1'b0,1'b0,1'b0}),
        .O(NLW_FIFO_0_Full1_carry__2_O_UNCONNECTED[3:0]),
        .S({FIFO_0_Full1_carry__2_i_1_n_0,FIFO_0_Full1_carry__2_i_2_n_0,FIFO_0_Full1_carry__2_i_3_n_0,FIFO_0_Full1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__2_i_1
       (.I0(\BytesInFIFO_0_reg_n_0_[31] ),
        .I1(\BytesInFIFO_0_reg_n_0_[30] ),
        .O(FIFO_0_Full1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__2_i_2
       (.I0(\BytesInFIFO_0_reg_n_0_[29] ),
        .I1(\BytesInFIFO_0_reg_n_0_[28] ),
        .O(FIFO_0_Full1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__2_i_3
       (.I0(\BytesInFIFO_0_reg_n_0_[27] ),
        .I1(\BytesInFIFO_0_reg_n_0_[26] ),
        .O(FIFO_0_Full1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__2_i_4
       (.I0(\BytesInFIFO_0_reg_n_0_[25] ),
        .I1(\BytesInFIFO_0_reg_n_0_[24] ),
        .O(FIFO_0_Full1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    FIFO_0_Full1_carry_i_1
       (.I0(\BytesInFIFO_0_reg_n_0_[1] ),
        .I1(\BytesInFIFO_0_reg_n_0_[0] ),
        .O(FIFO_0_Full1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry_i_2
       (.I0(\BytesInFIFO_0_reg_n_0_[7] ),
        .I1(\BytesInFIFO_0_reg_n_0_[6] ),
        .O(FIFO_0_Full1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry_i_3
       (.I0(\BytesInFIFO_0_reg_n_0_[5] ),
        .I1(\BytesInFIFO_0_reg_n_0_[4] ),
        .O(FIFO_0_Full1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry_i_4
       (.I0(\BytesInFIFO_0_reg_n_0_[3] ),
        .I1(\BytesInFIFO_0_reg_n_0_[2] ),
        .O(FIFO_0_Full1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    FIFO_0_Full1_carry_i_5
       (.I0(\BytesInFIFO_0_reg_n_0_[0] ),
        .I1(\BytesInFIFO_0_reg_n_0_[1] ),
        .O(FIFO_0_Full1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFAA0002)) 
    FIFO_0_Full_i_1
       (.I0(FIFOState[1]),
        .I1(FIFO_0_Full1_carry__2_n_0),
        .I2(FIFOState[0]),
        .I3(FIFOState[2]),
        .I4(FIFO_0_Full_reg_n_0),
        .O(FIFO_0_Full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    FIFO_0_Full_reg
       (.C(Clock),
        .CE(1'b1),
        .D(FIFO_0_Full_i_1_n_0),
        .Q(FIFO_0_Full_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][0] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[0]),
        .Q(\FIFO_0_reg[0] [0]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][10] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[10]),
        .Q(\FIFO_0_reg[0] [10]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][11] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[11]),
        .Q(\FIFO_0_reg[0] [11]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][12] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[12]),
        .Q(\FIFO_0_reg[0] [12]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][13] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[13]),
        .Q(\FIFO_0_reg[0] [13]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][14] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[14]),
        .Q(\FIFO_0_reg[0] [14]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][15] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[15]),
        .Q(\FIFO_0_reg[0] [15]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][16] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[16]),
        .Q(\FIFO_0_reg[0] [16]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][17] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[17]),
        .Q(\FIFO_0_reg[0] [17]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][18] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[18]),
        .Q(\FIFO_0_reg[0] [18]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][19] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[19]),
        .Q(\FIFO_0_reg[0] [19]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][1] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[1]),
        .Q(\FIFO_0_reg[0] [1]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][20] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[20]),
        .Q(\FIFO_0_reg[0] [20]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][21] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[21]),
        .Q(\FIFO_0_reg[0] [21]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][22] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[22]),
        .Q(\FIFO_0_reg[0] [22]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][23] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[23]),
        .Q(\FIFO_0_reg[0] [23]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][24] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[24]),
        .Q(\FIFO_0_reg[0] [24]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][25] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[25]),
        .Q(\FIFO_0_reg[0] [25]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][26] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[26]),
        .Q(\FIFO_0_reg[0] [26]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][27] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[27]),
        .Q(\FIFO_0_reg[0] [27]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][28] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[28]),
        .Q(\FIFO_0_reg[0] [28]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][29] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[29]),
        .Q(\FIFO_0_reg[0] [29]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][2] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[2]),
        .Q(\FIFO_0_reg[0] [2]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][30] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[30]),
        .Q(\FIFO_0_reg[0] [30]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][31] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[31]),
        .Q(\FIFO_0_reg[0] [31]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][3] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[3]),
        .Q(\FIFO_0_reg[0] [3]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][4] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[4]),
        .Q(\FIFO_0_reg[0] [4]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][5] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[5]),
        .Q(\FIFO_0_reg[0] [5]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][6] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[6]),
        .Q(\FIFO_0_reg[0] [6]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][7] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[7]),
        .Q(\FIFO_0_reg[0] [7]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][8] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[8]),
        .Q(\FIFO_0_reg[0] [8]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[0][9] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[9]),
        .Q(\FIFO_0_reg[0] [9]),
        .R(\FIFO_0[0][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][0] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[0]),
        .Q(\FIFO_0_reg[1] [0]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][10] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[10]),
        .Q(\FIFO_0_reg[1] [10]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][11] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[11]),
        .Q(\FIFO_0_reg[1] [11]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][12] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[12]),
        .Q(\FIFO_0_reg[1] [12]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][13] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[13]),
        .Q(\FIFO_0_reg[1] [13]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][14] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[14]),
        .Q(\FIFO_0_reg[1] [14]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][15] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[15]),
        .Q(\FIFO_0_reg[1] [15]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][16] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[16]),
        .Q(\FIFO_0_reg[1] [16]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][17] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[17]),
        .Q(\FIFO_0_reg[1] [17]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][18] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[18]),
        .Q(\FIFO_0_reg[1] [18]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][19] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[19]),
        .Q(\FIFO_0_reg[1] [19]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][1] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[1]),
        .Q(\FIFO_0_reg[1] [1]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][20] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[20]),
        .Q(\FIFO_0_reg[1] [20]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][21] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[21]),
        .Q(\FIFO_0_reg[1] [21]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][22] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[22]),
        .Q(\FIFO_0_reg[1] [22]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][23] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[23]),
        .Q(\FIFO_0_reg[1] [23]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][24] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[24]),
        .Q(\FIFO_0_reg[1] [24]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][25] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[25]),
        .Q(\FIFO_0_reg[1] [25]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][26] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[26]),
        .Q(\FIFO_0_reg[1] [26]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][27] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[27]),
        .Q(\FIFO_0_reg[1] [27]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][28] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[28]),
        .Q(\FIFO_0_reg[1] [28]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][29] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[29]),
        .Q(\FIFO_0_reg[1] [29]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][2] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[2]),
        .Q(\FIFO_0_reg[1] [2]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][30] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[30]),
        .Q(\FIFO_0_reg[1] [30]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][31] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[31]),
        .Q(\FIFO_0_reg[1] [31]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][3] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[3]),
        .Q(\FIFO_0_reg[1] [3]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][4] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[4]),
        .Q(\FIFO_0_reg[1] [4]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][5] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[5]),
        .Q(\FIFO_0_reg[1] [5]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][6] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[6]),
        .Q(\FIFO_0_reg[1] [6]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][7] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[7]),
        .Q(\FIFO_0_reg[1] [7]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][8] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[8]),
        .Q(\FIFO_0_reg[1] [8]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][9] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[9]),
        .Q(\FIFO_0_reg[1] [9]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][0] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[0]),
        .Q(\FIFO_0_reg[2] [0]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][10] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[10]),
        .Q(\FIFO_0_reg[2] [10]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][11] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[11]),
        .Q(\FIFO_0_reg[2] [11]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][12] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[12]),
        .Q(\FIFO_0_reg[2] [12]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][13] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[13]),
        .Q(\FIFO_0_reg[2] [13]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][14] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[14]),
        .Q(\FIFO_0_reg[2] [14]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][15] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[15]),
        .Q(\FIFO_0_reg[2] [15]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][16] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[16]),
        .Q(\FIFO_0_reg[2] [16]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][17] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[17]),
        .Q(\FIFO_0_reg[2] [17]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][18] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[18]),
        .Q(\FIFO_0_reg[2] [18]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][19] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[19]),
        .Q(\FIFO_0_reg[2] [19]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][1] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[1]),
        .Q(\FIFO_0_reg[2] [1]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][20] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[20]),
        .Q(\FIFO_0_reg[2] [20]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][21] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[21]),
        .Q(\FIFO_0_reg[2] [21]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][22] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[22]),
        .Q(\FIFO_0_reg[2] [22]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][23] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[23]),
        .Q(\FIFO_0_reg[2] [23]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][24] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[24]),
        .Q(\FIFO_0_reg[2] [24]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][25] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[25]),
        .Q(\FIFO_0_reg[2] [25]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][26] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[26]),
        .Q(\FIFO_0_reg[2] [26]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][27] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[27]),
        .Q(\FIFO_0_reg[2] [27]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][28] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[28]),
        .Q(\FIFO_0_reg[2] [28]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][29] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[29]),
        .Q(\FIFO_0_reg[2] [29]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][2] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[2]),
        .Q(\FIFO_0_reg[2] [2]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][30] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[30]),
        .Q(\FIFO_0_reg[2] [30]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][31] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[31]),
        .Q(\FIFO_0_reg[2] [31]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][3] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[3]),
        .Q(\FIFO_0_reg[2] [3]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][4] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[4]),
        .Q(\FIFO_0_reg[2] [4]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][5] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[5]),
        .Q(\FIFO_0_reg[2] [5]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][6] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[6]),
        .Q(\FIFO_0_reg[2] [6]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][7] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[7]),
        .Q(\FIFO_0_reg[2] [7]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][8] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[8]),
        .Q(\FIFO_0_reg[2] [8]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][9] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[9]),
        .Q(\FIFO_0_reg[2] [9]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][0] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[0]),
        .Q(\FIFO_0_reg[3] [0]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][10] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[10]),
        .Q(\FIFO_0_reg[3] [10]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][11] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[11]),
        .Q(\FIFO_0_reg[3] [11]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][12] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[12]),
        .Q(\FIFO_0_reg[3] [12]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][13] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[13]),
        .Q(\FIFO_0_reg[3] [13]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][14] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[14]),
        .Q(\FIFO_0_reg[3] [14]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][15] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[15]),
        .Q(\FIFO_0_reg[3] [15]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][16] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[16]),
        .Q(\FIFO_0_reg[3] [16]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][17] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[17]),
        .Q(\FIFO_0_reg[3] [17]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][18] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[18]),
        .Q(\FIFO_0_reg[3] [18]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][19] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[19]),
        .Q(\FIFO_0_reg[3] [19]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][1] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[1]),
        .Q(\FIFO_0_reg[3] [1]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][20] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[20]),
        .Q(\FIFO_0_reg[3] [20]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][21] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[21]),
        .Q(\FIFO_0_reg[3] [21]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][22] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[22]),
        .Q(\FIFO_0_reg[3] [22]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][23] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[23]),
        .Q(\FIFO_0_reg[3] [23]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][24] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[24]),
        .Q(\FIFO_0_reg[3] [24]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][25] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[25]),
        .Q(\FIFO_0_reg[3] [25]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][26] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[26]),
        .Q(\FIFO_0_reg[3] [26]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][27] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[27]),
        .Q(\FIFO_0_reg[3] [27]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][28] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[28]),
        .Q(\FIFO_0_reg[3] [28]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][29] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[29]),
        .Q(\FIFO_0_reg[3] [29]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][2] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[2]),
        .Q(\FIFO_0_reg[3] [2]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][30] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[30]),
        .Q(\FIFO_0_reg[3] [30]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][31] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[31]),
        .Q(\FIFO_0_reg[3] [31]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][3] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[3]),
        .Q(\FIFO_0_reg[3] [3]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][4] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[4]),
        .Q(\FIFO_0_reg[3] [4]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][5] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[5]),
        .Q(\FIFO_0_reg[3] [5]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][6] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[6]),
        .Q(\FIFO_0_reg[3] [6]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][7] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[7]),
        .Q(\FIFO_0_reg[3] [7]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][8] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[8]),
        .Q(\FIFO_0_reg[3] [8]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[3][9] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[9]),
        .Q(\FIFO_0_reg[3] [9]),
        .R(\FIFO_0[3][31]_i_1_n_0 ));
  CARRY4 FIFO_1_Full1_carry
       (.CI(1'b0),
        .CO({FIFO_1_Full1_carry_n_0,FIFO_1_Full1_carry_n_1,FIFO_1_Full1_carry_n_2,FIFO_1_Full1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({FIFO_1_Full1_carry_i_1_n_0,FIFO_1_Full1_carry_i_2_n_0,FIFO_1_Full1_carry_i_3_n_0,FIFO_1_Full1_carry_i_4_n_0}),
        .O(NLW_FIFO_1_Full1_carry_O_UNCONNECTED[3:0]),
        .S({FIFO_1_Full1_carry_i_5_n_0,FIFO_1_Full1_carry_i_6_n_0,FIFO_1_Full1_carry_i_7_n_0,FIFO_1_Full1_carry_i_8_n_0}));
  CARRY4 FIFO_1_Full1_carry__0
       (.CI(FIFO_1_Full1_carry_n_0),
        .CO({FIFO_1_Full1_carry__0_n_0,FIFO_1_Full1_carry__0_n_1,FIFO_1_Full1_carry__0_n_2,FIFO_1_Full1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({FIFO_1_Full1_carry__0_i_1_n_0,FIFO_1_Full1_carry__0_i_2_n_0,FIFO_1_Full1_carry__0_i_3_n_0,FIFO_1_Full1_carry__0_i_4_n_0}),
        .O(NLW_FIFO_1_Full1_carry__0_O_UNCONNECTED[3:0]),
        .S({FIFO_1_Full1_carry__0_i_5_n_0,FIFO_1_Full1_carry__0_i_6_n_0,FIFO_1_Full1_carry__0_i_7_n_0,FIFO_1_Full1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__0_i_1
       (.I0(ReadCounter_reg[15]),
        .I1(\BytesInFIFO_1_reg_n_0_[15] ),
        .I2(\BytesInFIFO_1_reg_n_0_[14] ),
        .I3(ReadCounter_reg[14]),
        .O(FIFO_1_Full1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__0_i_2
       (.I0(ReadCounter_reg[13]),
        .I1(\BytesInFIFO_1_reg_n_0_[13] ),
        .I2(\BytesInFIFO_1_reg_n_0_[12] ),
        .I3(ReadCounter_reg[12]),
        .O(FIFO_1_Full1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__0_i_3
       (.I0(ReadCounter_reg[11]),
        .I1(\BytesInFIFO_1_reg_n_0_[11] ),
        .I2(\BytesInFIFO_1_reg_n_0_[10] ),
        .I3(ReadCounter_reg[10]),
        .O(FIFO_1_Full1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__0_i_4
       (.I0(ReadCounter_reg[9]),
        .I1(\BytesInFIFO_1_reg_n_0_[9] ),
        .I2(\BytesInFIFO_1_reg_n_0_[8] ),
        .I3(ReadCounter_reg[8]),
        .O(FIFO_1_Full1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__0_i_5
       (.I0(\BytesInFIFO_1_reg_n_0_[15] ),
        .I1(ReadCounter_reg[15]),
        .I2(\BytesInFIFO_1_reg_n_0_[14] ),
        .I3(ReadCounter_reg[14]),
        .O(FIFO_1_Full1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__0_i_6
       (.I0(\BytesInFIFO_1_reg_n_0_[13] ),
        .I1(ReadCounter_reg[13]),
        .I2(\BytesInFIFO_1_reg_n_0_[12] ),
        .I3(ReadCounter_reg[12]),
        .O(FIFO_1_Full1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__0_i_7
       (.I0(\BytesInFIFO_1_reg_n_0_[11] ),
        .I1(ReadCounter_reg[11]),
        .I2(\BytesInFIFO_1_reg_n_0_[10] ),
        .I3(ReadCounter_reg[10]),
        .O(FIFO_1_Full1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__0_i_8
       (.I0(\BytesInFIFO_1_reg_n_0_[9] ),
        .I1(ReadCounter_reg[9]),
        .I2(\BytesInFIFO_1_reg_n_0_[8] ),
        .I3(ReadCounter_reg[8]),
        .O(FIFO_1_Full1_carry__0_i_8_n_0));
  CARRY4 FIFO_1_Full1_carry__1
       (.CI(FIFO_1_Full1_carry__0_n_0),
        .CO({FIFO_1_Full1_carry__1_n_0,FIFO_1_Full1_carry__1_n_1,FIFO_1_Full1_carry__1_n_2,FIFO_1_Full1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({FIFO_1_Full1_carry__1_i_1_n_0,FIFO_1_Full1_carry__1_i_2_n_0,FIFO_1_Full1_carry__1_i_3_n_0,FIFO_1_Full1_carry__1_i_4_n_0}),
        .O(NLW_FIFO_1_Full1_carry__1_O_UNCONNECTED[3:0]),
        .S({FIFO_1_Full1_carry__1_i_5_n_0,FIFO_1_Full1_carry__1_i_6_n_0,FIFO_1_Full1_carry__1_i_7_n_0,FIFO_1_Full1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__1_i_1
       (.I0(ReadCounter_reg[23]),
        .I1(\BytesInFIFO_1_reg_n_0_[23] ),
        .I2(\BytesInFIFO_1_reg_n_0_[22] ),
        .I3(ReadCounter_reg[22]),
        .O(FIFO_1_Full1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__1_i_2
       (.I0(ReadCounter_reg[21]),
        .I1(\BytesInFIFO_1_reg_n_0_[21] ),
        .I2(\BytesInFIFO_1_reg_n_0_[20] ),
        .I3(ReadCounter_reg[20]),
        .O(FIFO_1_Full1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__1_i_3
       (.I0(ReadCounter_reg[19]),
        .I1(\BytesInFIFO_1_reg_n_0_[19] ),
        .I2(\BytesInFIFO_1_reg_n_0_[18] ),
        .I3(ReadCounter_reg[18]),
        .O(FIFO_1_Full1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__1_i_4
       (.I0(ReadCounter_reg[17]),
        .I1(\BytesInFIFO_1_reg_n_0_[17] ),
        .I2(\BytesInFIFO_1_reg_n_0_[16] ),
        .I3(ReadCounter_reg[16]),
        .O(FIFO_1_Full1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__1_i_5
       (.I0(\BytesInFIFO_1_reg_n_0_[23] ),
        .I1(ReadCounter_reg[23]),
        .I2(\BytesInFIFO_1_reg_n_0_[22] ),
        .I3(ReadCounter_reg[22]),
        .O(FIFO_1_Full1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__1_i_6
       (.I0(\BytesInFIFO_1_reg_n_0_[21] ),
        .I1(ReadCounter_reg[21]),
        .I2(\BytesInFIFO_1_reg_n_0_[20] ),
        .I3(ReadCounter_reg[20]),
        .O(FIFO_1_Full1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__1_i_7
       (.I0(\BytesInFIFO_1_reg_n_0_[19] ),
        .I1(ReadCounter_reg[19]),
        .I2(\BytesInFIFO_1_reg_n_0_[18] ),
        .I3(ReadCounter_reg[18]),
        .O(FIFO_1_Full1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__1_i_8
       (.I0(\BytesInFIFO_1_reg_n_0_[17] ),
        .I1(ReadCounter_reg[17]),
        .I2(\BytesInFIFO_1_reg_n_0_[16] ),
        .I3(ReadCounter_reg[16]),
        .O(FIFO_1_Full1_carry__1_i_8_n_0));
  CARRY4 FIFO_1_Full1_carry__2
       (.CI(FIFO_1_Full1_carry__1_n_0),
        .CO({p_0_in,FIFO_1_Full1_carry__2_n_1,FIFO_1_Full1_carry__2_n_2,FIFO_1_Full1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({FIFO_1_Full1_carry__2_i_1_n_0,FIFO_1_Full1_carry__2_i_2_n_0,FIFO_1_Full1_carry__2_i_3_n_0,FIFO_1_Full1_carry__2_i_4_n_0}),
        .O(NLW_FIFO_1_Full1_carry__2_O_UNCONNECTED[3:0]),
        .S({FIFO_1_Full1_carry__2_i_5_n_0,FIFO_1_Full1_carry__2_i_6_n_0,FIFO_1_Full1_carry__2_i_7_n_0,FIFO_1_Full1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__2_i_1
       (.I0(\BytesInFIFO_1_reg_n_0_[31] ),
        .I1(ReadCounter_reg[31]),
        .I2(\BytesInFIFO_1_reg_n_0_[30] ),
        .I3(ReadCounter_reg[30]),
        .O(FIFO_1_Full1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__2_i_2
       (.I0(ReadCounter_reg[29]),
        .I1(\BytesInFIFO_1_reg_n_0_[29] ),
        .I2(\BytesInFIFO_1_reg_n_0_[28] ),
        .I3(ReadCounter_reg[28]),
        .O(FIFO_1_Full1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__2_i_3
       (.I0(ReadCounter_reg[27]),
        .I1(\BytesInFIFO_1_reg_n_0_[27] ),
        .I2(\BytesInFIFO_1_reg_n_0_[26] ),
        .I3(ReadCounter_reg[26]),
        .O(FIFO_1_Full1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry__2_i_4
       (.I0(ReadCounter_reg[25]),
        .I1(\BytesInFIFO_1_reg_n_0_[25] ),
        .I2(\BytesInFIFO_1_reg_n_0_[24] ),
        .I3(ReadCounter_reg[24]),
        .O(FIFO_1_Full1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__2_i_5
       (.I0(ReadCounter_reg[31]),
        .I1(\BytesInFIFO_1_reg_n_0_[31] ),
        .I2(\BytesInFIFO_1_reg_n_0_[30] ),
        .I3(ReadCounter_reg[30]),
        .O(FIFO_1_Full1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__2_i_6
       (.I0(\BytesInFIFO_1_reg_n_0_[29] ),
        .I1(ReadCounter_reg[29]),
        .I2(\BytesInFIFO_1_reg_n_0_[28] ),
        .I3(ReadCounter_reg[28]),
        .O(FIFO_1_Full1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__2_i_7
       (.I0(\BytesInFIFO_1_reg_n_0_[27] ),
        .I1(ReadCounter_reg[27]),
        .I2(\BytesInFIFO_1_reg_n_0_[26] ),
        .I3(ReadCounter_reg[26]),
        .O(FIFO_1_Full1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry__2_i_8
       (.I0(\BytesInFIFO_1_reg_n_0_[25] ),
        .I1(ReadCounter_reg[25]),
        .I2(\BytesInFIFO_1_reg_n_0_[24] ),
        .I3(ReadCounter_reg[24]),
        .O(FIFO_1_Full1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry_i_1
       (.I0(ReadCounter_reg[7]),
        .I1(\BytesInFIFO_1_reg_n_0_[7] ),
        .I2(\BytesInFIFO_1_reg_n_0_[6] ),
        .I3(ReadCounter_reg[6]),
        .O(FIFO_1_Full1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry_i_2
       (.I0(ReadCounter_reg[5]),
        .I1(\BytesInFIFO_1_reg_n_0_[5] ),
        .I2(\BytesInFIFO_1_reg_n_0_[4] ),
        .I3(ReadCounter_reg[4]),
        .O(FIFO_1_Full1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry_i_3
       (.I0(ReadCounter_reg[3]),
        .I1(\BytesInFIFO_1_reg_n_0_[3] ),
        .I2(\BytesInFIFO_1_reg_n_0_[2] ),
        .I3(ReadCounter_reg[2]),
        .O(FIFO_1_Full1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    FIFO_1_Full1_carry_i_4
       (.I0(ReadCounter_reg[1]),
        .I1(\BytesInFIFO_1_reg_n_0_[1] ),
        .I2(\BytesInFIFO_1_reg_n_0_[0] ),
        .I3(ReadCounter_reg[0]),
        .O(FIFO_1_Full1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry_i_5
       (.I0(\BytesInFIFO_1_reg_n_0_[7] ),
        .I1(ReadCounter_reg[7]),
        .I2(\BytesInFIFO_1_reg_n_0_[6] ),
        .I3(ReadCounter_reg[6]),
        .O(FIFO_1_Full1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry_i_6
       (.I0(\BytesInFIFO_1_reg_n_0_[5] ),
        .I1(ReadCounter_reg[5]),
        .I2(\BytesInFIFO_1_reg_n_0_[4] ),
        .I3(ReadCounter_reg[4]),
        .O(FIFO_1_Full1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry_i_7
       (.I0(\BytesInFIFO_1_reg_n_0_[3] ),
        .I1(ReadCounter_reg[3]),
        .I2(\BytesInFIFO_1_reg_n_0_[2] ),
        .I3(ReadCounter_reg[2]),
        .O(FIFO_1_Full1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    FIFO_1_Full1_carry_i_8
       (.I0(\BytesInFIFO_1_reg_n_0_[1] ),
        .I1(ReadCounter_reg[1]),
        .I2(\BytesInFIFO_1_reg_n_0_[0] ),
        .I3(ReadCounter_reg[0]),
        .O(FIFO_1_Full1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h333B303B00080008)) 
    FIFO_1_Full_i_1
       (.I0(FIFO_0_Full_reg_n_0),
        .I1(\BytesInFIFO_1[31]_i_2_n_0 ),
        .I2(FIFO_1_Full_i_2_n_0),
        .I3(I2SState[1]),
        .I4(p_0_in),
        .I5(FIFO_1_Full_reg_n_0),
        .O(FIFO_1_Full_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    FIFO_1_Full_i_2
       (.I0(I2SState[2]),
        .I1(I2SState[0]),
        .O(FIFO_1_Full_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    FIFO_1_Full_reg
       (.C(Clock),
        .CE(1'b1),
        .D(FIFO_1_Full_i_1_n_0),
        .Q(FIFO_1_Full_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][0] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [0]),
        .Q(\FIFO_1_reg[0] [0]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][10] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [10]),
        .Q(\FIFO_1_reg[0] [10]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][11] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [11]),
        .Q(\FIFO_1_reg[0] [11]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][12] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [12]),
        .Q(\FIFO_1_reg[0] [12]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][13] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [13]),
        .Q(\FIFO_1_reg[0] [13]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][14] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [14]),
        .Q(\FIFO_1_reg[0] [14]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][15] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [15]),
        .Q(\FIFO_1_reg[0] [15]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][16] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [16]),
        .Q(\FIFO_1_reg[0] [16]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][17] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [17]),
        .Q(\FIFO_1_reg[0] [17]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][18] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [18]),
        .Q(\FIFO_1_reg[0] [18]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][19] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [19]),
        .Q(\FIFO_1_reg[0] [19]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][1] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [1]),
        .Q(\FIFO_1_reg[0] [1]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][20] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [20]),
        .Q(\FIFO_1_reg[0] [20]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][21] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [21]),
        .Q(\FIFO_1_reg[0] [21]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][22] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [22]),
        .Q(\FIFO_1_reg[0] [22]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][23] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [23]),
        .Q(\FIFO_1_reg[0] [23]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][24] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [24]),
        .Q(\FIFO_1_reg[0] [24]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][25] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [25]),
        .Q(\FIFO_1_reg[0] [25]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][26] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [26]),
        .Q(\FIFO_1_reg[0] [26]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][27] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [27]),
        .Q(\FIFO_1_reg[0] [27]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][28] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [28]),
        .Q(\FIFO_1_reg[0] [28]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][29] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [29]),
        .Q(\FIFO_1_reg[0] [29]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][2] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [2]),
        .Q(\FIFO_1_reg[0] [2]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][30] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [30]),
        .Q(\FIFO_1_reg[0] [30]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][31] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [31]),
        .Q(\FIFO_1_reg[0] [31]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][3] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [3]),
        .Q(\FIFO_1_reg[0] [3]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][4] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [4]),
        .Q(\FIFO_1_reg[0] [4]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][5] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [5]),
        .Q(\FIFO_1_reg[0] [5]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][6] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [6]),
        .Q(\FIFO_1_reg[0] [6]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][7] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [7]),
        .Q(\FIFO_1_reg[0] [7]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][8] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [8]),
        .Q(\FIFO_1_reg[0] [8]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[0][9] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [9]),
        .Q(\FIFO_1_reg[0] [9]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][0] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [0]),
        .Q(\FIFO_1_reg[1] [0]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][10] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [10]),
        .Q(\FIFO_1_reg[1] [10]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][11] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [11]),
        .Q(\FIFO_1_reg[1] [11]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][12] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [12]),
        .Q(\FIFO_1_reg[1] [12]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][13] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [13]),
        .Q(\FIFO_1_reg[1] [13]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][14] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [14]),
        .Q(\FIFO_1_reg[1] [14]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][15] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [15]),
        .Q(\FIFO_1_reg[1] [15]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][16] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [16]),
        .Q(\FIFO_1_reg[1] [16]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][17] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [17]),
        .Q(\FIFO_1_reg[1] [17]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][18] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [18]),
        .Q(\FIFO_1_reg[1] [18]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][19] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [19]),
        .Q(\FIFO_1_reg[1] [19]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][1] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [1]),
        .Q(\FIFO_1_reg[1] [1]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][20] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [20]),
        .Q(\FIFO_1_reg[1] [20]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][21] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [21]),
        .Q(\FIFO_1_reg[1] [21]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][22] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [22]),
        .Q(\FIFO_1_reg[1] [22]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][23] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [23]),
        .Q(\FIFO_1_reg[1] [23]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][24] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [24]),
        .Q(\FIFO_1_reg[1] [24]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][25] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [25]),
        .Q(\FIFO_1_reg[1] [25]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][26] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [26]),
        .Q(\FIFO_1_reg[1] [26]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][27] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [27]),
        .Q(\FIFO_1_reg[1] [27]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][28] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [28]),
        .Q(\FIFO_1_reg[1] [28]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][29] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [29]),
        .Q(\FIFO_1_reg[1] [29]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][2] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [2]),
        .Q(\FIFO_1_reg[1] [2]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][30] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [30]),
        .Q(\FIFO_1_reg[1] [30]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][31] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [31]),
        .Q(\FIFO_1_reg[1] [31]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][3] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [3]),
        .Q(\FIFO_1_reg[1] [3]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][4] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [4]),
        .Q(\FIFO_1_reg[1] [4]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][5] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [5]),
        .Q(\FIFO_1_reg[1] [5]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][6] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [6]),
        .Q(\FIFO_1_reg[1] [6]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][7] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [7]),
        .Q(\FIFO_1_reg[1] [7]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][8] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [8]),
        .Q(\FIFO_1_reg[1] [8]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[1][9] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [9]),
        .Q(\FIFO_1_reg[1] [9]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][0] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [0]),
        .Q(\FIFO_1_reg[2] [0]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][10] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [10]),
        .Q(\FIFO_1_reg[2] [10]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][11] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [11]),
        .Q(\FIFO_1_reg[2] [11]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][12] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [12]),
        .Q(\FIFO_1_reg[2] [12]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][13] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [13]),
        .Q(\FIFO_1_reg[2] [13]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][14] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [14]),
        .Q(\FIFO_1_reg[2] [14]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][15] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [15]),
        .Q(\FIFO_1_reg[2] [15]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][16] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [16]),
        .Q(\FIFO_1_reg[2] [16]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][17] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [17]),
        .Q(\FIFO_1_reg[2] [17]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][18] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [18]),
        .Q(\FIFO_1_reg[2] [18]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][19] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [19]),
        .Q(\FIFO_1_reg[2] [19]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][1] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [1]),
        .Q(\FIFO_1_reg[2] [1]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][20] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [20]),
        .Q(\FIFO_1_reg[2] [20]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][21] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [21]),
        .Q(\FIFO_1_reg[2] [21]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][22] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [22]),
        .Q(\FIFO_1_reg[2] [22]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][23] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [23]),
        .Q(\FIFO_1_reg[2] [23]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][24] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [24]),
        .Q(\FIFO_1_reg[2] [24]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][25] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [25]),
        .Q(\FIFO_1_reg[2] [25]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][26] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [26]),
        .Q(\FIFO_1_reg[2] [26]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][27] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [27]),
        .Q(\FIFO_1_reg[2] [27]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][28] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [28]),
        .Q(\FIFO_1_reg[2] [28]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][29] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [29]),
        .Q(\FIFO_1_reg[2] [29]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][2] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [2]),
        .Q(\FIFO_1_reg[2] [2]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][30] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [30]),
        .Q(\FIFO_1_reg[2] [30]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][31] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [31]),
        .Q(\FIFO_1_reg[2] [31]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][3] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [3]),
        .Q(\FIFO_1_reg[2] [3]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][4] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [4]),
        .Q(\FIFO_1_reg[2] [4]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][5] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [5]),
        .Q(\FIFO_1_reg[2] [5]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][6] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [6]),
        .Q(\FIFO_1_reg[2] [6]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][7] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [7]),
        .Q(\FIFO_1_reg[2] [7]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][8] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [8]),
        .Q(\FIFO_1_reg[2] [8]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[2][9] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [9]),
        .Q(\FIFO_1_reg[2] [9]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][0] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [0]),
        .Q(\FIFO_1_reg[3] [0]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][10] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [10]),
        .Q(\FIFO_1_reg[3] [10]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][11] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [11]),
        .Q(\FIFO_1_reg[3] [11]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][12] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [12]),
        .Q(\FIFO_1_reg[3] [12]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][13] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [13]),
        .Q(\FIFO_1_reg[3] [13]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][14] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [14]),
        .Q(\FIFO_1_reg[3] [14]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][15] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [15]),
        .Q(\FIFO_1_reg[3] [15]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][16] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [16]),
        .Q(\FIFO_1_reg[3] [16]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][17] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [17]),
        .Q(\FIFO_1_reg[3] [17]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][18] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [18]),
        .Q(\FIFO_1_reg[3] [18]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][19] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [19]),
        .Q(\FIFO_1_reg[3] [19]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][1] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [1]),
        .Q(\FIFO_1_reg[3] [1]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][20] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [20]),
        .Q(\FIFO_1_reg[3] [20]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][21] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [21]),
        .Q(\FIFO_1_reg[3] [21]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][22] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [22]),
        .Q(\FIFO_1_reg[3] [22]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][23] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [23]),
        .Q(\FIFO_1_reg[3] [23]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][24] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [24]),
        .Q(\FIFO_1_reg[3] [24]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][25] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [25]),
        .Q(\FIFO_1_reg[3] [25]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][26] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [26]),
        .Q(\FIFO_1_reg[3] [26]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][27] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [27]),
        .Q(\FIFO_1_reg[3] [27]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][28] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [28]),
        .Q(\FIFO_1_reg[3] [28]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][29] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [29]),
        .Q(\FIFO_1_reg[3] [29]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][2] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [2]),
        .Q(\FIFO_1_reg[3] [2]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][30] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [30]),
        .Q(\FIFO_1_reg[3] [30]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][31] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [31]),
        .Q(\FIFO_1_reg[3] [31]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][3] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [3]),
        .Q(\FIFO_1_reg[3] [3]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][4] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [4]),
        .Q(\FIFO_1_reg[3] [4]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][5] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [5]),
        .Q(\FIFO_1_reg[3] [5]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][6] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [6]),
        .Q(\FIFO_1_reg[3] [6]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][7] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [7]),
        .Q(\FIFO_1_reg[3] [7]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][8] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [8]),
        .Q(\FIFO_1_reg[3] [8]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_1_reg[3][9] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [9]),
        .Q(\FIFO_1_reg[3] [9]),
        .R(\BytesInFIFO_1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4500FFFF77330000)) 
    \FSM_sequential_FIFOState[0]_i_1 
       (.I0(FIFOState[2]),
        .I1(FIFOState[1]),
        .I2(TVALID),
        .I3(\FSM_sequential_FIFOState[0]_i_2_n_0 ),
        .I4(\FSM_sequential_FIFOState[2]_i_2_n_0 ),
        .I5(FIFOState[0]),
        .O(\FSM_sequential_FIFOState[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \FSM_sequential_FIFOState[0]_i_2 
       (.I0(FIFOState[0]),
        .I1(FIFO_0_Full1_carry__2_n_0),
        .I2(FIFOState[1]),
        .I3(FIFO_1_Full_reg_n_0),
        .O(\FSM_sequential_FIFOState[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_FIFOState[1]_i_1 
       (.I0(\FSM_sequential_FIFOState[1]_i_2_n_0 ),
        .I1(\FSM_sequential_FIFOState[2]_i_2_n_0 ),
        .I2(FIFOState[1]),
        .O(\FSM_sequential_FIFOState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F300A0A0)) 
    \FSM_sequential_FIFOState[1]_i_2 
       (.I0(TVALID),
        .I1(FIFO_0_Full1_carry__2_n_0),
        .I2(FIFOState[0]),
        .I3(FIFO_1_Full_reg_n_0),
        .I4(FIFOState[1]),
        .I5(FIFOState[2]),
        .O(\FSM_sequential_FIFOState[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF44040000)) 
    \FSM_sequential_FIFOState[2]_i_1 
       (.I0(FIFO_1_Full_reg_n_0),
        .I1(FIFOState[1]),
        .I2(FIFO_0_Full1_carry__2_n_0),
        .I3(FIFOState[0]),
        .I4(\FSM_sequential_FIFOState[2]_i_2_n_0 ),
        .I5(FIFOState[2]),
        .O(\FSM_sequential_FIFOState[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555055555555E4E4)) 
    \FSM_sequential_FIFOState[2]_i_2 
       (.I0(FIFOState[2]),
        .I1(Active_OBUF),
        .I2(FIFO_1_Full_reg_n_0),
        .I3(FIFO_0_Full_reg_n_0),
        .I4(FIFOState[0]),
        .I5(FIFOState[1]),
        .O(\FSM_sequential_FIFOState[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "reset:000,ackdata:010,waitforvalid:001,full_fifo_0:100,full_fifo_1:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_FIFOState_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\FSM_sequential_FIFOState[0]_i_1_n_0 ),
        .Q(FIFOState[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:000,ackdata:010,waitforvalid:001,full_fifo_0:100,full_fifo_1:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_FIFOState_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(\FSM_sequential_FIFOState[1]_i_1_n_0 ),
        .Q(FIFOState[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:000,ackdata:010,waitforvalid:001,full_fifo_0:100,full_fifo_1:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_FIFOState_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(\FSM_sequential_FIFOState[2]_i_1_n_0 ),
        .Q(FIFOState[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:000,loaddata:011,starttransmission:100,waitforfifo:001,waitforsync:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_I2SState_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(Transmitter_n_35),
        .Q(I2SState[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:000,loaddata:011,starttransmission:100,waitforfifo:001,waitforsync:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_I2SState_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(Transmitter_n_34),
        .Q(I2SState[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:000,loaddata:011,starttransmission:100,waitforfifo:001,waitforsync:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_I2SState_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(Transmitter_n_33),
        .Q(I2SState[2]),
        .R(1'b0));
  CARRY4 I2SState0_carry
       (.CI(1'b0),
        .CO({I2SState0_carry_n_0,I2SState0_carry_n_1,I2SState0_carry_n_2,I2SState0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({Transmitter_n_32,BitCounter_Int_reg,1'b0,1'b0}),
        .O(NLW_I2SState0_carry_O_UNCONNECTED[3:0]),
        .S({Transmitter_n_4,Transmitter_n_5,Transmitter_n_6,Transmitter_n_7}));
  CARRY4 I2SState0_carry__0
       (.CI(I2SState0_carry_n_0),
        .CO({I2SState0_carry__0_n_0,I2SState0_carry__0_n_1,I2SState0_carry__0_n_2,I2SState0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Transmitter_n_12,Transmitter_n_13,Transmitter_n_14,Transmitter_n_15}),
        .O(NLW_I2SState0_carry__0_O_UNCONNECTED[3:0]),
        .S({Transmitter_n_8,Transmitter_n_9,Transmitter_n_10,Transmitter_n_11}));
  CARRY4 I2SState0_carry__1
       (.CI(I2SState0_carry__0_n_0),
        .CO({I2SState0_carry__1_n_0,I2SState0_carry__1_n_1,I2SState0_carry__1_n_2,I2SState0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Transmitter_n_20,Transmitter_n_21,Transmitter_n_22,Transmitter_n_23}),
        .O(NLW_I2SState0_carry__1_O_UNCONNECTED[3:0]),
        .S({Transmitter_n_16,Transmitter_n_17,Transmitter_n_18,Transmitter_n_19}));
  CARRY4 I2SState0_carry__2
       (.CI(I2SState0_carry__1_n_0),
        .CO({I2SState0_carry__2_n_0,I2SState0_carry__2_n_1,I2SState0_carry__2_n_2,I2SState0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({Transmitter_n_24,Transmitter_n_25,Transmitter_n_26,Transmitter_n_27}),
        .O(NLW_I2SState0_carry__2_O_UNCONNECTED[3:0]),
        .S({Transmitter_n_28,Transmitter_n_29,Transmitter_n_30,Transmitter_n_31}));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \MCLK_Cnt[0]_i_1 
       (.I0(MCLK_Cnt[0]),
        .O(MCLK_Cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[10]_i_1 
       (.I0(data0[10]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[11]_i_1 
       (.I0(data0[11]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[12]_i_1 
       (.I0(data0[12]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[13]_i_1 
       (.I0(data0[13]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[14]_i_1 
       (.I0(data0[14]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[15]_i_1 
       (.I0(data0[15]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[16]_i_1 
       (.I0(data0[16]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[17]_i_1 
       (.I0(data0[17]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[18]_i_1 
       (.I0(data0[18]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[19]_i_1 
       (.I0(data0[19]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[1]_i_1 
       (.I0(data0[1]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[20]_i_1 
       (.I0(data0[20]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[21]_i_1 
       (.I0(data0[21]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[22]_i_1 
       (.I0(data0[22]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[23]_i_1 
       (.I0(data0[23]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[24]_i_1 
       (.I0(data0[24]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[25]_i_1 
       (.I0(data0[25]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[26]_i_1 
       (.I0(data0[26]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[27]_i_1 
       (.I0(data0[27]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[28]_i_1 
       (.I0(data0[28]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[29]_i_1 
       (.I0(data0[29]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[2]_i_1 
       (.I0(data0[2]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[30]_i_1 
       (.I0(data0[30]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[31]_i_1 
       (.I0(data0[31]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \MCLK_Cnt[31]_i_10 
       (.I0(MCLK_Cnt[4]),
        .I1(MCLK_Cnt[16]),
        .I2(MCLK_Cnt[11]),
        .I3(MCLK_Cnt[23]),
        .O(\MCLK_Cnt[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \MCLK_Cnt[31]_i_11 
       (.I0(MCLK_Cnt[20]),
        .I1(MCLK_Cnt[27]),
        .I2(MCLK_Cnt[0]),
        .I3(MCLK_Cnt[15]),
        .O(\MCLK_Cnt[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \MCLK_Cnt[31]_i_3 
       (.I0(\MCLK_Cnt[31]_i_4_n_0 ),
        .I1(\MCLK_Cnt[31]_i_5_n_0 ),
        .I2(\MCLK_Cnt[31]_i_6_n_0 ),
        .I3(\MCLK_Cnt[31]_i_7_n_0 ),
        .O(\MCLK_Cnt[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \MCLK_Cnt[31]_i_4 
       (.I0(MCLK_Cnt[7]),
        .I1(MCLK_Cnt[17]),
        .I2(MCLK_Cnt[28]),
        .I3(MCLK_Cnt[8]),
        .I4(\MCLK_Cnt[31]_i_8_n_0 ),
        .O(\MCLK_Cnt[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \MCLK_Cnt[31]_i_5 
       (.I0(MCLK_Cnt[21]),
        .I1(MCLK_Cnt[9]),
        .I2(MCLK_Cnt[6]),
        .I3(MCLK_Cnt[22]),
        .I4(\MCLK_Cnt[31]_i_9_n_0 ),
        .O(\MCLK_Cnt[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \MCLK_Cnt[31]_i_6 
       (.I0(MCLK_Cnt[29]),
        .I1(MCLK_Cnt[19]),
        .I2(MCLK_Cnt[26]),
        .I3(MCLK_Cnt[5]),
        .I4(\MCLK_Cnt[31]_i_10_n_0 ),
        .O(\MCLK_Cnt[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \MCLK_Cnt[31]_i_7 
       (.I0(MCLK_Cnt[2]),
        .I1(MCLK_Cnt[3]),
        .I2(MCLK_Cnt[30]),
        .I3(MCLK_Cnt[25]),
        .I4(\MCLK_Cnt[31]_i_11_n_0 ),
        .O(\MCLK_Cnt[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \MCLK_Cnt[31]_i_8 
       (.I0(MCLK_Cnt[1]),
        .I1(MCLK_Cnt[13]),
        .I2(MCLK_Cnt[24]),
        .I3(MCLK_Cnt[10]),
        .O(\MCLK_Cnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \MCLK_Cnt[31]_i_9 
       (.I0(MCLK_Cnt[12]),
        .I1(MCLK_Cnt[14]),
        .I2(MCLK_Cnt[31]),
        .I3(MCLK_Cnt[18]),
        .O(\MCLK_Cnt[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[3]_i_1 
       (.I0(data0[3]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[4]_i_1 
       (.I0(data0[4]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[5]_i_1 
       (.I0(data0[5]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[6]_i_1 
       (.I0(data0[6]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[7]_i_1 
       (.I0(data0[7]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[8]_i_1 
       (.I0(data0[8]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[9]_i_1 
       (.I0(data0[9]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[0]),
        .Q(MCLK_Cnt[0]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[10]),
        .Q(MCLK_Cnt[10]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[11]),
        .Q(MCLK_Cnt[11]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[12]),
        .Q(MCLK_Cnt[12]),
        .R(Transmitter_n_1));
  CARRY4 \MCLK_Cnt_reg[12]_i_2 
       (.CI(\MCLK_Cnt_reg[8]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[12]_i_2_n_0 ,\MCLK_Cnt_reg[12]_i_2_n_1 ,\MCLK_Cnt_reg[12]_i_2_n_2 ,\MCLK_Cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(MCLK_Cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[13]),
        .Q(MCLK_Cnt[13]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[14]),
        .Q(MCLK_Cnt[14]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[15]),
        .Q(MCLK_Cnt[15]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[16]),
        .Q(MCLK_Cnt[16]),
        .R(Transmitter_n_1));
  CARRY4 \MCLK_Cnt_reg[16]_i_2 
       (.CI(\MCLK_Cnt_reg[12]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[16]_i_2_n_0 ,\MCLK_Cnt_reg[16]_i_2_n_1 ,\MCLK_Cnt_reg[16]_i_2_n_2 ,\MCLK_Cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(MCLK_Cnt[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[17]),
        .Q(MCLK_Cnt[17]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[18]),
        .Q(MCLK_Cnt[18]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[19]),
        .Q(MCLK_Cnt[19]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[1]),
        .Q(MCLK_Cnt[1]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[20]),
        .Q(MCLK_Cnt[20]),
        .R(Transmitter_n_1));
  CARRY4 \MCLK_Cnt_reg[20]_i_2 
       (.CI(\MCLK_Cnt_reg[16]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[20]_i_2_n_0 ,\MCLK_Cnt_reg[20]_i_2_n_1 ,\MCLK_Cnt_reg[20]_i_2_n_2 ,\MCLK_Cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(MCLK_Cnt[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[21]),
        .Q(MCLK_Cnt[21]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[22]),
        .Q(MCLK_Cnt[22]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[23]),
        .Q(MCLK_Cnt[23]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[24]),
        .Q(MCLK_Cnt[24]),
        .R(Transmitter_n_1));
  CARRY4 \MCLK_Cnt_reg[24]_i_2 
       (.CI(\MCLK_Cnt_reg[20]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[24]_i_2_n_0 ,\MCLK_Cnt_reg[24]_i_2_n_1 ,\MCLK_Cnt_reg[24]_i_2_n_2 ,\MCLK_Cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(MCLK_Cnt[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[25]),
        .Q(MCLK_Cnt[25]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[26]),
        .Q(MCLK_Cnt[26]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[27]),
        .Q(MCLK_Cnt[27]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[28]),
        .Q(MCLK_Cnt[28]),
        .R(Transmitter_n_1));
  CARRY4 \MCLK_Cnt_reg[28]_i_2 
       (.CI(\MCLK_Cnt_reg[24]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[28]_i_2_n_0 ,\MCLK_Cnt_reg[28]_i_2_n_1 ,\MCLK_Cnt_reg[28]_i_2_n_2 ,\MCLK_Cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(MCLK_Cnt[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[29]),
        .Q(MCLK_Cnt[29]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[2]),
        .Q(MCLK_Cnt[2]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[30]),
        .Q(MCLK_Cnt[30]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[31]),
        .Q(MCLK_Cnt[31]),
        .R(Transmitter_n_1));
  CARRY4 \MCLK_Cnt_reg[31]_i_2 
       (.CI(\MCLK_Cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_MCLK_Cnt_reg[31]_i_2_CO_UNCONNECTED [3:2],\MCLK_Cnt_reg[31]_i_2_n_2 ,\MCLK_Cnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_MCLK_Cnt_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,MCLK_Cnt[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[3]),
        .Q(MCLK_Cnt[3]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[4]),
        .Q(MCLK_Cnt[4]),
        .R(Transmitter_n_1));
  CARRY4 \MCLK_Cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\MCLK_Cnt_reg[4]_i_2_n_0 ,\MCLK_Cnt_reg[4]_i_2_n_1 ,\MCLK_Cnt_reg[4]_i_2_n_2 ,\MCLK_Cnt_reg[4]_i_2_n_3 }),
        .CYINIT(MCLK_Cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(MCLK_Cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[5]),
        .Q(MCLK_Cnt[5]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[6]),
        .Q(MCLK_Cnt[6]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[7]),
        .Q(MCLK_Cnt[7]),
        .R(Transmitter_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[8]),
        .Q(MCLK_Cnt[8]),
        .R(Transmitter_n_1));
  CARRY4 \MCLK_Cnt_reg[8]_i_2 
       (.CI(\MCLK_Cnt_reg[4]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[8]_i_2_n_0 ,\MCLK_Cnt_reg[8]_i_2_n_1 ,\MCLK_Cnt_reg[8]_i_2_n_2 ,\MCLK_Cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(MCLK_Cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(MCLK_Cnt_0[9]),
        .Q(MCLK_Cnt[9]),
        .R(Transmitter_n_1));
  LUT3 #(
    .INIT(8'h20)) 
    \ReadCounter[0]_i_1 
       (.I0(I2SState[1]),
        .I1(I2SState[2]),
        .I2(I2SState[0]),
        .O(ReadCounter));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[0]_i_3 
       (.I0(ReadCounter_reg[3]),
        .I1(p_0_in),
        .O(\ReadCounter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[0]_i_4 
       (.I0(ReadCounter_reg[2]),
        .I1(p_0_in),
        .O(\ReadCounter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[0]_i_5 
       (.I0(ReadCounter_reg[1]),
        .I1(p_0_in),
        .O(\ReadCounter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \ReadCounter[0]_i_6 
       (.I0(ReadCounter_reg[0]),
        .I1(p_0_in),
        .O(\ReadCounter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[12]_i_2 
       (.I0(ReadCounter_reg[15]),
        .I1(p_0_in),
        .O(\ReadCounter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[12]_i_3 
       (.I0(ReadCounter_reg[14]),
        .I1(p_0_in),
        .O(\ReadCounter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[12]_i_4 
       (.I0(ReadCounter_reg[13]),
        .I1(p_0_in),
        .O(\ReadCounter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[12]_i_5 
       (.I0(ReadCounter_reg[12]),
        .I1(p_0_in),
        .O(\ReadCounter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[16]_i_2 
       (.I0(ReadCounter_reg[19]),
        .I1(p_0_in),
        .O(\ReadCounter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[16]_i_3 
       (.I0(ReadCounter_reg[18]),
        .I1(p_0_in),
        .O(\ReadCounter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[16]_i_4 
       (.I0(ReadCounter_reg[17]),
        .I1(p_0_in),
        .O(\ReadCounter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[16]_i_5 
       (.I0(ReadCounter_reg[16]),
        .I1(p_0_in),
        .O(\ReadCounter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[20]_i_2 
       (.I0(ReadCounter_reg[23]),
        .I1(p_0_in),
        .O(\ReadCounter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[20]_i_3 
       (.I0(ReadCounter_reg[22]),
        .I1(p_0_in),
        .O(\ReadCounter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[20]_i_4 
       (.I0(ReadCounter_reg[21]),
        .I1(p_0_in),
        .O(\ReadCounter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[20]_i_5 
       (.I0(ReadCounter_reg[20]),
        .I1(p_0_in),
        .O(\ReadCounter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[24]_i_2 
       (.I0(ReadCounter_reg[27]),
        .I1(p_0_in),
        .O(\ReadCounter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[24]_i_3 
       (.I0(ReadCounter_reg[26]),
        .I1(p_0_in),
        .O(\ReadCounter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[24]_i_4 
       (.I0(ReadCounter_reg[25]),
        .I1(p_0_in),
        .O(\ReadCounter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[24]_i_5 
       (.I0(ReadCounter_reg[24]),
        .I1(p_0_in),
        .O(\ReadCounter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[28]_i_2 
       (.I0(ReadCounter_reg[31]),
        .I1(p_0_in),
        .O(\ReadCounter[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[28]_i_3 
       (.I0(ReadCounter_reg[30]),
        .I1(p_0_in),
        .O(\ReadCounter[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[28]_i_4 
       (.I0(ReadCounter_reg[29]),
        .I1(p_0_in),
        .O(\ReadCounter[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[28]_i_5 
       (.I0(ReadCounter_reg[28]),
        .I1(p_0_in),
        .O(\ReadCounter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[4]_i_2 
       (.I0(ReadCounter_reg[7]),
        .I1(p_0_in),
        .O(\ReadCounter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[4]_i_3 
       (.I0(ReadCounter_reg[6]),
        .I1(p_0_in),
        .O(\ReadCounter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[4]_i_4 
       (.I0(ReadCounter_reg[5]),
        .I1(p_0_in),
        .O(\ReadCounter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[4]_i_5 
       (.I0(ReadCounter_reg[4]),
        .I1(p_0_in),
        .O(\ReadCounter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[8]_i_2 
       (.I0(ReadCounter_reg[11]),
        .I1(p_0_in),
        .O(\ReadCounter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[8]_i_3 
       (.I0(ReadCounter_reg[10]),
        .I1(p_0_in),
        .O(\ReadCounter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[8]_i_4 
       (.I0(ReadCounter_reg[9]),
        .I1(p_0_in),
        .O(\ReadCounter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ReadCounter[8]_i_5 
       (.I0(ReadCounter_reg[8]),
        .I1(p_0_in),
        .O(\ReadCounter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[0] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[0]_i_2_n_7 ),
        .Q(ReadCounter_reg[0]),
        .R(1'b0));
  CARRY4 \ReadCounter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\ReadCounter_reg[0]_i_2_n_0 ,\ReadCounter_reg[0]_i_2_n_1 ,\ReadCounter_reg[0]_i_2_n_2 ,\ReadCounter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in}),
        .O({\ReadCounter_reg[0]_i_2_n_4 ,\ReadCounter_reg[0]_i_2_n_5 ,\ReadCounter_reg[0]_i_2_n_6 ,\ReadCounter_reg[0]_i_2_n_7 }),
        .S({\ReadCounter[0]_i_3_n_0 ,\ReadCounter[0]_i_4_n_0 ,\ReadCounter[0]_i_5_n_0 ,\ReadCounter[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[10] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[8]_i_1_n_5 ),
        .Q(ReadCounter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[11] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[8]_i_1_n_4 ),
        .Q(ReadCounter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[12] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[12]_i_1_n_7 ),
        .Q(ReadCounter_reg[12]),
        .R(1'b0));
  CARRY4 \ReadCounter_reg[12]_i_1 
       (.CI(\ReadCounter_reg[8]_i_1_n_0 ),
        .CO({\ReadCounter_reg[12]_i_1_n_0 ,\ReadCounter_reg[12]_i_1_n_1 ,\ReadCounter_reg[12]_i_1_n_2 ,\ReadCounter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ReadCounter_reg[12]_i_1_n_4 ,\ReadCounter_reg[12]_i_1_n_5 ,\ReadCounter_reg[12]_i_1_n_6 ,\ReadCounter_reg[12]_i_1_n_7 }),
        .S({\ReadCounter[12]_i_2_n_0 ,\ReadCounter[12]_i_3_n_0 ,\ReadCounter[12]_i_4_n_0 ,\ReadCounter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[13] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[12]_i_1_n_6 ),
        .Q(ReadCounter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[14] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[12]_i_1_n_5 ),
        .Q(ReadCounter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[15] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[12]_i_1_n_4 ),
        .Q(ReadCounter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[16] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[16]_i_1_n_7 ),
        .Q(ReadCounter_reg[16]),
        .R(1'b0));
  CARRY4 \ReadCounter_reg[16]_i_1 
       (.CI(\ReadCounter_reg[12]_i_1_n_0 ),
        .CO({\ReadCounter_reg[16]_i_1_n_0 ,\ReadCounter_reg[16]_i_1_n_1 ,\ReadCounter_reg[16]_i_1_n_2 ,\ReadCounter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ReadCounter_reg[16]_i_1_n_4 ,\ReadCounter_reg[16]_i_1_n_5 ,\ReadCounter_reg[16]_i_1_n_6 ,\ReadCounter_reg[16]_i_1_n_7 }),
        .S({\ReadCounter[16]_i_2_n_0 ,\ReadCounter[16]_i_3_n_0 ,\ReadCounter[16]_i_4_n_0 ,\ReadCounter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[17] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[16]_i_1_n_6 ),
        .Q(ReadCounter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[18] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[16]_i_1_n_5 ),
        .Q(ReadCounter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[19] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[16]_i_1_n_4 ),
        .Q(ReadCounter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[1] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[0]_i_2_n_6 ),
        .Q(ReadCounter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[20] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[20]_i_1_n_7 ),
        .Q(ReadCounter_reg[20]),
        .R(1'b0));
  CARRY4 \ReadCounter_reg[20]_i_1 
       (.CI(\ReadCounter_reg[16]_i_1_n_0 ),
        .CO({\ReadCounter_reg[20]_i_1_n_0 ,\ReadCounter_reg[20]_i_1_n_1 ,\ReadCounter_reg[20]_i_1_n_2 ,\ReadCounter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ReadCounter_reg[20]_i_1_n_4 ,\ReadCounter_reg[20]_i_1_n_5 ,\ReadCounter_reg[20]_i_1_n_6 ,\ReadCounter_reg[20]_i_1_n_7 }),
        .S({\ReadCounter[20]_i_2_n_0 ,\ReadCounter[20]_i_3_n_0 ,\ReadCounter[20]_i_4_n_0 ,\ReadCounter[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[21] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[20]_i_1_n_6 ),
        .Q(ReadCounter_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[22] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[20]_i_1_n_5 ),
        .Q(ReadCounter_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[23] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[20]_i_1_n_4 ),
        .Q(ReadCounter_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[24] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[24]_i_1_n_7 ),
        .Q(ReadCounter_reg[24]),
        .R(1'b0));
  CARRY4 \ReadCounter_reg[24]_i_1 
       (.CI(\ReadCounter_reg[20]_i_1_n_0 ),
        .CO({\ReadCounter_reg[24]_i_1_n_0 ,\ReadCounter_reg[24]_i_1_n_1 ,\ReadCounter_reg[24]_i_1_n_2 ,\ReadCounter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ReadCounter_reg[24]_i_1_n_4 ,\ReadCounter_reg[24]_i_1_n_5 ,\ReadCounter_reg[24]_i_1_n_6 ,\ReadCounter_reg[24]_i_1_n_7 }),
        .S({\ReadCounter[24]_i_2_n_0 ,\ReadCounter[24]_i_3_n_0 ,\ReadCounter[24]_i_4_n_0 ,\ReadCounter[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[25] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[24]_i_1_n_6 ),
        .Q(ReadCounter_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[26] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[24]_i_1_n_5 ),
        .Q(ReadCounter_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[27] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[24]_i_1_n_4 ),
        .Q(ReadCounter_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[28] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[28]_i_1_n_7 ),
        .Q(ReadCounter_reg[28]),
        .R(1'b0));
  CARRY4 \ReadCounter_reg[28]_i_1 
       (.CI(\ReadCounter_reg[24]_i_1_n_0 ),
        .CO({\NLW_ReadCounter_reg[28]_i_1_CO_UNCONNECTED [3],\ReadCounter_reg[28]_i_1_n_1 ,\ReadCounter_reg[28]_i_1_n_2 ,\ReadCounter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ReadCounter_reg[28]_i_1_n_4 ,\ReadCounter_reg[28]_i_1_n_5 ,\ReadCounter_reg[28]_i_1_n_6 ,\ReadCounter_reg[28]_i_1_n_7 }),
        .S({\ReadCounter[28]_i_2_n_0 ,\ReadCounter[28]_i_3_n_0 ,\ReadCounter[28]_i_4_n_0 ,\ReadCounter[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[29] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[28]_i_1_n_6 ),
        .Q(ReadCounter_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[2] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[0]_i_2_n_5 ),
        .Q(ReadCounter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[30] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[28]_i_1_n_5 ),
        .Q(ReadCounter_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[31] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[28]_i_1_n_4 ),
        .Q(ReadCounter_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[3] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[0]_i_2_n_4 ),
        .Q(ReadCounter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[4] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[4]_i_1_n_7 ),
        .Q(ReadCounter_reg[4]),
        .R(1'b0));
  CARRY4 \ReadCounter_reg[4]_i_1 
       (.CI(\ReadCounter_reg[0]_i_2_n_0 ),
        .CO({\ReadCounter_reg[4]_i_1_n_0 ,\ReadCounter_reg[4]_i_1_n_1 ,\ReadCounter_reg[4]_i_1_n_2 ,\ReadCounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ReadCounter_reg[4]_i_1_n_4 ,\ReadCounter_reg[4]_i_1_n_5 ,\ReadCounter_reg[4]_i_1_n_6 ,\ReadCounter_reg[4]_i_1_n_7 }),
        .S({\ReadCounter[4]_i_2_n_0 ,\ReadCounter[4]_i_3_n_0 ,\ReadCounter[4]_i_4_n_0 ,\ReadCounter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[5] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[4]_i_1_n_6 ),
        .Q(ReadCounter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[6] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[4]_i_1_n_5 ),
        .Q(ReadCounter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[7] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[4]_i_1_n_4 ),
        .Q(ReadCounter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[8] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[8]_i_1_n_7 ),
        .Q(ReadCounter_reg[8]),
        .R(1'b0));
  CARRY4 \ReadCounter_reg[8]_i_1 
       (.CI(\ReadCounter_reg[4]_i_1_n_0 ),
        .CO({\ReadCounter_reg[8]_i_1_n_0 ,\ReadCounter_reg[8]_i_1_n_1 ,\ReadCounter_reg[8]_i_1_n_2 ,\ReadCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ReadCounter_reg[8]_i_1_n_4 ,\ReadCounter_reg[8]_i_1_n_5 ,\ReadCounter_reg[8]_i_1_n_6 ,\ReadCounter_reg[8]_i_1_n_7 }),
        .S({\ReadCounter[8]_i_2_n_0 ,\ReadCounter[8]_i_3_n_0 ,\ReadCounter[8]_i_4_n_0 ,\ReadCounter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ReadCounter_reg[9] 
       (.C(Clock),
        .CE(ReadCounter),
        .D(\ReadCounter_reg[8]_i_1_n_6 ),
        .Q(ReadCounter_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    SCLK_OBUF_inst_i_1
       (.I0(AudioClock_reg_0),
        .I1(Resetn_IBUF),
        .I2(Locked),
        .O(SCLK_OBUF));
  LUT5 #(
    .INIT(32'hFCF80008)) 
    TREADY_Int_i_1
       (.I0(TVALID),
        .I1(FIFOState[0]),
        .I2(FIFOState[2]),
        .I3(FIFOState[1]),
        .I4(TREADY),
        .O(TREADY_Int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TREADY_Int_reg
       (.C(Clock),
        .CE(1'b1),
        .D(TREADY_Int_i_1_n_0),
        .Q(TREADY),
        .R(1'b0));
  I2S_Transmitter Transmitter
       (.Active_OBUF(Active_OBUF),
        .\BitCounter_Int_reg[14]_0 ({Transmitter_n_8,Transmitter_n_9,Transmitter_n_10,Transmitter_n_11}),
        .\BitCounter_Int_reg[22]_0 ({Transmitter_n_16,Transmitter_n_17,Transmitter_n_18,Transmitter_n_19}),
        .\BitCounter_Int_reg[23]_0 ({Transmitter_n_20,Transmitter_n_21,Transmitter_n_22,Transmitter_n_23}),
        .\BitCounter_Int_reg[30]_0 ({Transmitter_n_24,Transmitter_n_25,Transmitter_n_26,Transmitter_n_27}),
        .\BitCounter_Int_reg[30]_1 ({Transmitter_n_28,Transmitter_n_29,Transmitter_n_30,Transmitter_n_31}),
        .\BitCounter_Int_reg[7]_0 (Transmitter_n_32),
        .CO(I2SState0_carry__2_n_0),
        .DI({Transmitter_n_12,Transmitter_n_13,Transmitter_n_14,Transmitter_n_15}),
        .Data(Data),
        .\FSM_sequential_I2SState_reg[0] (FIFO_0_Full_reg_n_0),
        .\FSM_sequential_I2SState_reg[1] (Transmitter_n_33),
        .\FSM_sequential_I2SState_reg[1]_0 (FIFO_1_Full_reg_n_0),
        .\FSM_sequential_I2SState_reg[2] (Transmitter_n_34),
        .\FSM_sequential_I2SState_reg[2]_0 (Transmitter_n_35),
        .I2SState(I2SState),
        .LRCLK_OBUF(LRCLK_OBUF),
        .Locked(Locked),
        .Resetn_IBUF(Resetn_IBUF),
        .S({Transmitter_n_4,Transmitter_n_5,Transmitter_n_6,Transmitter_n_7}),
        .SD_Int_reg_0(SD_Int_reg),
        .SD_OBUF(SD_OBUF),
        .SR(Transmitter_n_1),
        .out(BitCounter_Int_reg));
endmodule

module I2S_Transmitter
   (LRCLK_OBUF,
    SR,
    SD_OBUF,
    out,
    S,
    \BitCounter_Int_reg[14]_0 ,
    DI,
    \BitCounter_Int_reg[22]_0 ,
    \BitCounter_Int_reg[23]_0 ,
    \BitCounter_Int_reg[30]_0 ,
    \BitCounter_Int_reg[30]_1 ,
    \BitCounter_Int_reg[7]_0 ,
    \FSM_sequential_I2SState_reg[1] ,
    \FSM_sequential_I2SState_reg[2] ,
    \FSM_sequential_I2SState_reg[2]_0 ,
    SD_Int_reg_0,
    Resetn_IBUF,
    Locked,
    Active_OBUF,
    I2SState,
    CO,
    \FSM_sequential_I2SState_reg[0] ,
    Data,
    \FSM_sequential_I2SState_reg[1]_0 );
  output LRCLK_OBUF;
  output [0:0]SR;
  output SD_OBUF;
  output [0:0]out;
  output [3:0]S;
  output [3:0]\BitCounter_Int_reg[14]_0 ;
  output [3:0]DI;
  output [3:0]\BitCounter_Int_reg[22]_0 ;
  output [3:0]\BitCounter_Int_reg[23]_0 ;
  output [3:0]\BitCounter_Int_reg[30]_0 ;
  output [3:0]\BitCounter_Int_reg[30]_1 ;
  output [0:0]\BitCounter_Int_reg[7]_0 ;
  output \FSM_sequential_I2SState_reg[1] ;
  output \FSM_sequential_I2SState_reg[2] ;
  output \FSM_sequential_I2SState_reg[2]_0 ;
  input SD_Int_reg_0;
  input Resetn_IBUF;
  input Locked;
  input Active_OBUF;
  input [2:0]I2SState;
  input [0:0]CO;
  input \FSM_sequential_I2SState_reg[0] ;
  input [31:0]Data;
  input \FSM_sequential_I2SState_reg[1]_0 ;

  wire Active_OBUF;
  wire BitCounter_Int1;
  wire BitCounter_Int1_carry__0_i_1_n_0;
  wire BitCounter_Int1_carry__0_i_2_n_0;
  wire BitCounter_Int1_carry__0_i_3_n_0;
  wire BitCounter_Int1_carry__0_i_4_n_0;
  wire BitCounter_Int1_carry__0_n_0;
  wire BitCounter_Int1_carry__0_n_1;
  wire BitCounter_Int1_carry__0_n_2;
  wire BitCounter_Int1_carry__0_n_3;
  wire BitCounter_Int1_carry__1_i_1_n_0;
  wire BitCounter_Int1_carry__1_i_2_n_0;
  wire BitCounter_Int1_carry__1_i_3_n_0;
  wire BitCounter_Int1_carry__1_i_4_n_0;
  wire BitCounter_Int1_carry__1_n_0;
  wire BitCounter_Int1_carry__1_n_1;
  wire BitCounter_Int1_carry__1_n_2;
  wire BitCounter_Int1_carry__1_n_3;
  wire BitCounter_Int1_carry__2_i_1_n_0;
  wire BitCounter_Int1_carry__2_i_2_n_0;
  wire BitCounter_Int1_carry__2_i_3_n_0;
  wire BitCounter_Int1_carry__2_i_4_n_0;
  wire BitCounter_Int1_carry__2_n_1;
  wire BitCounter_Int1_carry__2_n_2;
  wire BitCounter_Int1_carry__2_n_3;
  wire BitCounter_Int1_carry_i_1_n_0;
  wire BitCounter_Int1_carry_i_2_n_0;
  wire BitCounter_Int1_carry_i_3_n_0;
  wire BitCounter_Int1_carry_i_4_n_0;
  wire BitCounter_Int1_carry_i_5_n_0;
  wire BitCounter_Int1_carry_i_6_n_0;
  wire BitCounter_Int1_carry_i_7_n_0;
  wire BitCounter_Int1_carry_n_0;
  wire BitCounter_Int1_carry_n_1;
  wire BitCounter_Int1_carry_n_2;
  wire BitCounter_Int1_carry_n_3;
  wire \BitCounter_Int[0]_i_1_n_0 ;
  wire \BitCounter_Int[0]_i_3_n_0 ;
  wire [31:0]BitCounter_Int_reg;
  wire \BitCounter_Int_reg[0]_i_2_n_0 ;
  wire \BitCounter_Int_reg[0]_i_2_n_1 ;
  wire \BitCounter_Int_reg[0]_i_2_n_2 ;
  wire \BitCounter_Int_reg[0]_i_2_n_3 ;
  wire \BitCounter_Int_reg[0]_i_2_n_4 ;
  wire \BitCounter_Int_reg[0]_i_2_n_5 ;
  wire \BitCounter_Int_reg[0]_i_2_n_6 ;
  wire \BitCounter_Int_reg[0]_i_2_n_7 ;
  wire \BitCounter_Int_reg[12]_i_1_n_0 ;
  wire \BitCounter_Int_reg[12]_i_1_n_1 ;
  wire \BitCounter_Int_reg[12]_i_1_n_2 ;
  wire \BitCounter_Int_reg[12]_i_1_n_3 ;
  wire \BitCounter_Int_reg[12]_i_1_n_4 ;
  wire \BitCounter_Int_reg[12]_i_1_n_5 ;
  wire \BitCounter_Int_reg[12]_i_1_n_6 ;
  wire \BitCounter_Int_reg[12]_i_1_n_7 ;
  wire [3:0]\BitCounter_Int_reg[14]_0 ;
  wire \BitCounter_Int_reg[16]_i_1_n_0 ;
  wire \BitCounter_Int_reg[16]_i_1_n_1 ;
  wire \BitCounter_Int_reg[16]_i_1_n_2 ;
  wire \BitCounter_Int_reg[16]_i_1_n_3 ;
  wire \BitCounter_Int_reg[16]_i_1_n_4 ;
  wire \BitCounter_Int_reg[16]_i_1_n_5 ;
  wire \BitCounter_Int_reg[16]_i_1_n_6 ;
  wire \BitCounter_Int_reg[16]_i_1_n_7 ;
  wire \BitCounter_Int_reg[20]_i_1_n_0 ;
  wire \BitCounter_Int_reg[20]_i_1_n_1 ;
  wire \BitCounter_Int_reg[20]_i_1_n_2 ;
  wire \BitCounter_Int_reg[20]_i_1_n_3 ;
  wire \BitCounter_Int_reg[20]_i_1_n_4 ;
  wire \BitCounter_Int_reg[20]_i_1_n_5 ;
  wire \BitCounter_Int_reg[20]_i_1_n_6 ;
  wire \BitCounter_Int_reg[20]_i_1_n_7 ;
  wire [3:0]\BitCounter_Int_reg[22]_0 ;
  wire [3:0]\BitCounter_Int_reg[23]_0 ;
  wire \BitCounter_Int_reg[24]_i_1_n_0 ;
  wire \BitCounter_Int_reg[24]_i_1_n_1 ;
  wire \BitCounter_Int_reg[24]_i_1_n_2 ;
  wire \BitCounter_Int_reg[24]_i_1_n_3 ;
  wire \BitCounter_Int_reg[24]_i_1_n_4 ;
  wire \BitCounter_Int_reg[24]_i_1_n_5 ;
  wire \BitCounter_Int_reg[24]_i_1_n_6 ;
  wire \BitCounter_Int_reg[24]_i_1_n_7 ;
  wire \BitCounter_Int_reg[28]_i_1_n_1 ;
  wire \BitCounter_Int_reg[28]_i_1_n_2 ;
  wire \BitCounter_Int_reg[28]_i_1_n_3 ;
  wire \BitCounter_Int_reg[28]_i_1_n_4 ;
  wire \BitCounter_Int_reg[28]_i_1_n_5 ;
  wire \BitCounter_Int_reg[28]_i_1_n_6 ;
  wire \BitCounter_Int_reg[28]_i_1_n_7 ;
  wire [3:0]\BitCounter_Int_reg[30]_0 ;
  wire [3:0]\BitCounter_Int_reg[30]_1 ;
  wire \BitCounter_Int_reg[4]_i_1_n_0 ;
  wire \BitCounter_Int_reg[4]_i_1_n_1 ;
  wire \BitCounter_Int_reg[4]_i_1_n_2 ;
  wire \BitCounter_Int_reg[4]_i_1_n_3 ;
  wire \BitCounter_Int_reg[4]_i_1_n_4 ;
  wire \BitCounter_Int_reg[4]_i_1_n_5 ;
  wire \BitCounter_Int_reg[4]_i_1_n_6 ;
  wire \BitCounter_Int_reg[4]_i_1_n_7 ;
  wire [0:0]\BitCounter_Int_reg[7]_0 ;
  wire \BitCounter_Int_reg[8]_i_1_n_0 ;
  wire \BitCounter_Int_reg[8]_i_1_n_1 ;
  wire \BitCounter_Int_reg[8]_i_1_n_2 ;
  wire \BitCounter_Int_reg[8]_i_1_n_3 ;
  wire \BitCounter_Int_reg[8]_i_1_n_4 ;
  wire \BitCounter_Int_reg[8]_i_1_n_5 ;
  wire \BitCounter_Int_reg[8]_i_1_n_6 ;
  wire \BitCounter_Int_reg[8]_i_1_n_7 ;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [31:0]Data;
  wire \FSM_sequential_I2SState[2]_i_2_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_3_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_4_n_0 ;
  wire \FSM_sequential_I2SState_reg[0] ;
  wire \FSM_sequential_I2SState_reg[1] ;
  wire \FSM_sequential_I2SState_reg[1]_0 ;
  wire \FSM_sequential_I2SState_reg[2] ;
  wire \FSM_sequential_I2SState_reg[2]_0 ;
  wire [2:0]I2SState;
  wire LRCLK_Int1;
  wire LRCLK_Int_i_10_n_0;
  wire LRCLK_Int_i_11_n_0;
  wire LRCLK_Int_i_13_n_0;
  wire LRCLK_Int_i_14_n_0;
  wire LRCLK_Int_i_15_n_0;
  wire LRCLK_Int_i_16_n_0;
  wire LRCLK_Int_i_17_n_0;
  wire LRCLK_Int_i_18_n_0;
  wire LRCLK_Int_i_19_n_0;
  wire LRCLK_Int_i_20_n_0;
  wire LRCLK_Int_i_21_n_0;
  wire LRCLK_Int_i_5_n_0;
  wire LRCLK_Int_i_6_n_0;
  wire LRCLK_Int_i_8_n_0;
  wire LRCLK_Int_i_9_n_0;
  wire LRCLK_Int_reg_i_12_n_0;
  wire LRCLK_Int_reg_i_12_n_1;
  wire LRCLK_Int_reg_i_12_n_2;
  wire LRCLK_Int_reg_i_12_n_3;
  wire LRCLK_Int_reg_i_2_n_3;
  wire LRCLK_Int_reg_i_2_n_5;
  wire LRCLK_Int_reg_i_4_n_0;
  wire LRCLK_Int_reg_i_4_n_1;
  wire LRCLK_Int_reg_i_4_n_2;
  wire LRCLK_Int_reg_i_4_n_3;
  wire LRCLK_Int_reg_i_7_n_0;
  wire LRCLK_Int_reg_i_7_n_1;
  wire LRCLK_Int_reg_i_7_n_2;
  wire LRCLK_Int_reg_i_7_n_3;
  wire LRCLK_OBUF;
  wire Locked;
  wire Resetn_IBUF;
  wire [3:0]S;
  wire SD_Int_reg_0;
  wire SD_OBUF;
  wire [0:0]SR;
  wire [31:0]ShiftReg;
  wire \ShiftReg[0]_i_10_n_0 ;
  wire \ShiftReg[0]_i_11_n_0 ;
  wire \ShiftReg[0]_i_12_n_0 ;
  wire \ShiftReg[0]_i_13_n_0 ;
  wire \ShiftReg[0]_i_2_n_0 ;
  wire \ShiftReg[0]_i_3_n_0 ;
  wire \ShiftReg[0]_i_4_n_0 ;
  wire \ShiftReg[0]_i_5_n_0 ;
  wire \ShiftReg[0]_i_6_n_0 ;
  wire \ShiftReg[0]_i_7_n_0 ;
  wire \ShiftReg[0]_i_8_n_0 ;
  wire \ShiftReg[0]_i_9_n_0 ;
  wire [31:1]data1;
  wire [0:0]out;
  wire p_1_in;
  wire [3:0]NLW_BitCounter_Int1_carry_O_UNCONNECTED;
  wire [3:0]NLW_BitCounter_Int1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_BitCounter_Int1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_BitCounter_Int1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_BitCounter_Int_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_LRCLK_Int_reg_i_12_O_UNCONNECTED;
  wire [3:2]NLW_LRCLK_Int_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Int_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Int_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Int_reg_i_7_O_UNCONNECTED;

  CARRY4 BitCounter_Int1_carry
       (.CI(1'b0),
        .CO({BitCounter_Int1_carry_n_0,BitCounter_Int1_carry_n_1,BitCounter_Int1_carry_n_2,BitCounter_Int1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,BitCounter_Int1_carry_i_1_n_0,BitCounter_Int1_carry_i_2_n_0,BitCounter_Int1_carry_i_3_n_0}),
        .O(NLW_BitCounter_Int1_carry_O_UNCONNECTED[3:0]),
        .S({BitCounter_Int1_carry_i_4_n_0,BitCounter_Int1_carry_i_5_n_0,BitCounter_Int1_carry_i_6_n_0,BitCounter_Int1_carry_i_7_n_0}));
  CARRY4 BitCounter_Int1_carry__0
       (.CI(BitCounter_Int1_carry_n_0),
        .CO({BitCounter_Int1_carry__0_n_0,BitCounter_Int1_carry__0_n_1,BitCounter_Int1_carry__0_n_2,BitCounter_Int1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_BitCounter_Int1_carry__0_O_UNCONNECTED[3:0]),
        .S({BitCounter_Int1_carry__0_i_1_n_0,BitCounter_Int1_carry__0_i_2_n_0,BitCounter_Int1_carry__0_i_3_n_0,BitCounter_Int1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__0_i_1
       (.I0(BitCounter_Int_reg[14]),
        .I1(BitCounter_Int_reg[15]),
        .O(BitCounter_Int1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__0_i_2
       (.I0(BitCounter_Int_reg[12]),
        .I1(BitCounter_Int_reg[13]),
        .O(BitCounter_Int1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__0_i_3
       (.I0(BitCounter_Int_reg[10]),
        .I1(BitCounter_Int_reg[11]),
        .O(BitCounter_Int1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__0_i_4
       (.I0(BitCounter_Int_reg[8]),
        .I1(BitCounter_Int_reg[9]),
        .O(BitCounter_Int1_carry__0_i_4_n_0));
  CARRY4 BitCounter_Int1_carry__1
       (.CI(BitCounter_Int1_carry__0_n_0),
        .CO({BitCounter_Int1_carry__1_n_0,BitCounter_Int1_carry__1_n_1,BitCounter_Int1_carry__1_n_2,BitCounter_Int1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_BitCounter_Int1_carry__1_O_UNCONNECTED[3:0]),
        .S({BitCounter_Int1_carry__1_i_1_n_0,BitCounter_Int1_carry__1_i_2_n_0,BitCounter_Int1_carry__1_i_3_n_0,BitCounter_Int1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__1_i_1
       (.I0(BitCounter_Int_reg[22]),
        .I1(BitCounter_Int_reg[23]),
        .O(BitCounter_Int1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__1_i_2
       (.I0(BitCounter_Int_reg[20]),
        .I1(BitCounter_Int_reg[21]),
        .O(BitCounter_Int1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__1_i_3
       (.I0(BitCounter_Int_reg[18]),
        .I1(BitCounter_Int_reg[19]),
        .O(BitCounter_Int1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__1_i_4
       (.I0(BitCounter_Int_reg[16]),
        .I1(BitCounter_Int_reg[17]),
        .O(BitCounter_Int1_carry__1_i_4_n_0));
  CARRY4 BitCounter_Int1_carry__2
       (.CI(BitCounter_Int1_carry__1_n_0),
        .CO({BitCounter_Int1,BitCounter_Int1_carry__2_n_1,BitCounter_Int1_carry__2_n_2,BitCounter_Int1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({BitCounter_Int_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_BitCounter_Int1_carry__2_O_UNCONNECTED[3:0]),
        .S({BitCounter_Int1_carry__2_i_1_n_0,BitCounter_Int1_carry__2_i_2_n_0,BitCounter_Int1_carry__2_i_3_n_0,BitCounter_Int1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__2_i_1
       (.I0(BitCounter_Int_reg[30]),
        .I1(BitCounter_Int_reg[31]),
        .O(BitCounter_Int1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__2_i_2
       (.I0(BitCounter_Int_reg[29]),
        .I1(BitCounter_Int_reg[28]),
        .O(BitCounter_Int1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__2_i_3
       (.I0(BitCounter_Int_reg[26]),
        .I1(BitCounter_Int_reg[27]),
        .O(BitCounter_Int1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__2_i_4
       (.I0(BitCounter_Int_reg[24]),
        .I1(BitCounter_Int_reg[25]),
        .O(BitCounter_Int1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry_i_1
       (.I0(BitCounter_Int_reg[4]),
        .I1(out),
        .O(BitCounter_Int1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    BitCounter_Int1_carry_i_2
       (.I0(BitCounter_Int_reg[2]),
        .I1(BitCounter_Int_reg[3]),
        .O(BitCounter_Int1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    BitCounter_Int1_carry_i_3
       (.I0(BitCounter_Int_reg[1]),
        .I1(BitCounter_Int_reg[0]),
        .O(BitCounter_Int1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry_i_4
       (.I0(BitCounter_Int_reg[6]),
        .I1(BitCounter_Int_reg[7]),
        .O(BitCounter_Int1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    BitCounter_Int1_carry_i_5
       (.I0(BitCounter_Int_reg[4]),
        .I1(out),
        .O(BitCounter_Int1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    BitCounter_Int1_carry_i_6
       (.I0(BitCounter_Int_reg[3]),
        .I1(BitCounter_Int_reg[2]),
        .O(BitCounter_Int1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    BitCounter_Int1_carry_i_7
       (.I0(BitCounter_Int_reg[0]),
        .I1(BitCounter_Int_reg[1]),
        .O(BitCounter_Int1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    \BitCounter_Int[0]_i_1 
       (.I0(BitCounter_Int1),
        .I1(Resetn_IBUF),
        .I2(Locked),
        .O(\BitCounter_Int[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \BitCounter_Int[0]_i_3 
       (.I0(BitCounter_Int_reg[0]),
        .O(\BitCounter_Int[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[0] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_7 ),
        .Q(BitCounter_Int_reg[0]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  CARRY4 \BitCounter_Int_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\BitCounter_Int_reg[0]_i_2_n_0 ,\BitCounter_Int_reg[0]_i_2_n_1 ,\BitCounter_Int_reg[0]_i_2_n_2 ,\BitCounter_Int_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\BitCounter_Int_reg[0]_i_2_n_4 ,\BitCounter_Int_reg[0]_i_2_n_5 ,\BitCounter_Int_reg[0]_i_2_n_6 ,\BitCounter_Int_reg[0]_i_2_n_7 }),
        .S({BitCounter_Int_reg[3:1],\BitCounter_Int[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[10] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[10]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[11] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[11]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[12] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[12]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  CARRY4 \BitCounter_Int_reg[12]_i_1 
       (.CI(\BitCounter_Int_reg[8]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[12]_i_1_n_0 ,\BitCounter_Int_reg[12]_i_1_n_1 ,\BitCounter_Int_reg[12]_i_1_n_2 ,\BitCounter_Int_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[12]_i_1_n_4 ,\BitCounter_Int_reg[12]_i_1_n_5 ,\BitCounter_Int_reg[12]_i_1_n_6 ,\BitCounter_Int_reg[12]_i_1_n_7 }),
        .S(BitCounter_Int_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[13] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[13]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[14] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[14]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[15] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[15]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[16] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[16]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  CARRY4 \BitCounter_Int_reg[16]_i_1 
       (.CI(\BitCounter_Int_reg[12]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[16]_i_1_n_0 ,\BitCounter_Int_reg[16]_i_1_n_1 ,\BitCounter_Int_reg[16]_i_1_n_2 ,\BitCounter_Int_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[16]_i_1_n_4 ,\BitCounter_Int_reg[16]_i_1_n_5 ,\BitCounter_Int_reg[16]_i_1_n_6 ,\BitCounter_Int_reg[16]_i_1_n_7 }),
        .S(BitCounter_Int_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[17] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[17]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[18] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[18]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[19] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[19]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[1] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_6 ),
        .Q(BitCounter_Int_reg[1]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[20] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[20]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  CARRY4 \BitCounter_Int_reg[20]_i_1 
       (.CI(\BitCounter_Int_reg[16]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[20]_i_1_n_0 ,\BitCounter_Int_reg[20]_i_1_n_1 ,\BitCounter_Int_reg[20]_i_1_n_2 ,\BitCounter_Int_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[20]_i_1_n_4 ,\BitCounter_Int_reg[20]_i_1_n_5 ,\BitCounter_Int_reg[20]_i_1_n_6 ,\BitCounter_Int_reg[20]_i_1_n_7 }),
        .S(BitCounter_Int_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[21] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[21]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[22] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[22]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[23] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[23]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[24] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[24]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  CARRY4 \BitCounter_Int_reg[24]_i_1 
       (.CI(\BitCounter_Int_reg[20]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[24]_i_1_n_0 ,\BitCounter_Int_reg[24]_i_1_n_1 ,\BitCounter_Int_reg[24]_i_1_n_2 ,\BitCounter_Int_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[24]_i_1_n_4 ,\BitCounter_Int_reg[24]_i_1_n_5 ,\BitCounter_Int_reg[24]_i_1_n_6 ,\BitCounter_Int_reg[24]_i_1_n_7 }),
        .S(BitCounter_Int_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[25] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[25]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[26] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[26]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[27] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[27]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[28] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[28]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  CARRY4 \BitCounter_Int_reg[28]_i_1 
       (.CI(\BitCounter_Int_reg[24]_i_1_n_0 ),
        .CO({\NLW_BitCounter_Int_reg[28]_i_1_CO_UNCONNECTED [3],\BitCounter_Int_reg[28]_i_1_n_1 ,\BitCounter_Int_reg[28]_i_1_n_2 ,\BitCounter_Int_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[28]_i_1_n_4 ,\BitCounter_Int_reg[28]_i_1_n_5 ,\BitCounter_Int_reg[28]_i_1_n_6 ,\BitCounter_Int_reg[28]_i_1_n_7 }),
        .S(BitCounter_Int_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[29] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[29]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[2] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_5 ),
        .Q(BitCounter_Int_reg[2]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[30] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[30]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[31] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[31]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[3] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_4 ),
        .Q(BitCounter_Int_reg[3]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[4] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[4]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  CARRY4 \BitCounter_Int_reg[4]_i_1 
       (.CI(\BitCounter_Int_reg[0]_i_2_n_0 ),
        .CO({\BitCounter_Int_reg[4]_i_1_n_0 ,\BitCounter_Int_reg[4]_i_1_n_1 ,\BitCounter_Int_reg[4]_i_1_n_2 ,\BitCounter_Int_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[4]_i_1_n_4 ,\BitCounter_Int_reg[4]_i_1_n_5 ,\BitCounter_Int_reg[4]_i_1_n_6 ,\BitCounter_Int_reg[4]_i_1_n_7 }),
        .S({BitCounter_Int_reg[7:6],out,BitCounter_Int_reg[4]}));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[5] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_6 ),
        .Q(out),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[6] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[6]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[7] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[7]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[8] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[8]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  CARRY4 \BitCounter_Int_reg[8]_i_1 
       (.CI(\BitCounter_Int_reg[4]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[8]_i_1_n_0 ,\BitCounter_Int_reg[8]_i_1_n_1 ,\BitCounter_Int_reg[8]_i_1_n_2 ,\BitCounter_Int_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[8]_i_1_n_4 ,\BitCounter_Int_reg[8]_i_1_n_5 ,\BitCounter_Int_reg[8]_i_1_n_6 ,\BitCounter_Int_reg[8]_i_1_n_7 }),
        .S(BitCounter_Int_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[9] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[9]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF55570000)) 
    \FSM_sequential_I2SState[0]_i_1 
       (.I0(I2SState[2]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(\FSM_sequential_I2SState_reg[1]_0 ),
        .I3(I2SState[1]),
        .I4(\FSM_sequential_I2SState[2]_i_3_n_0 ),
        .I5(I2SState[0]),
        .O(\FSM_sequential_I2SState_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h1111FFFF44640000)) 
    \FSM_sequential_I2SState[1]_i_1 
       (.I0(I2SState[2]),
        .I1(I2SState[0]),
        .I2(\FSM_sequential_I2SState_reg[1]_0 ),
        .I3(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I4(\FSM_sequential_I2SState[2]_i_3_n_0 ),
        .I5(I2SState[1]),
        .O(\FSM_sequential_I2SState_reg[2] ));
  LUT5 #(
    .INIT(32'h02FFC000)) 
    \FSM_sequential_I2SState[2]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(I2SState[1]),
        .I2(I2SState[0]),
        .I3(\FSM_sequential_I2SState[2]_i_3_n_0 ),
        .I4(I2SState[2]),
        .O(\FSM_sequential_I2SState_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \FSM_sequential_I2SState[2]_i_2 
       (.I0(\ShiftReg[0]_i_4_n_0 ),
        .I1(\ShiftReg[0]_i_2_n_0 ),
        .I2(BitCounter_Int_reg[31]),
        .I3(BitCounter_Int_reg[30]),
        .I4(\FSM_sequential_I2SState[2]_i_4_n_0 ),
        .I5(\ShiftReg[0]_i_5_n_0 ),
        .O(\FSM_sequential_I2SState[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33333E0E30303E0E)) 
    \FSM_sequential_I2SState[2]_i_3 
       (.I0(Active_OBUF),
        .I1(I2SState[2]),
        .I2(I2SState[1]),
        .I3(CO),
        .I4(I2SState[0]),
        .I5(\FSM_sequential_I2SState_reg[0] ),
        .O(\FSM_sequential_I2SState[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_I2SState[2]_i_4 
       (.I0(BitCounter_Int_reg[29]),
        .I1(BitCounter_Int_reg[28]),
        .O(\FSM_sequential_I2SState[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__0_i_1
       (.I0(BitCounter_Int_reg[15]),
        .I1(BitCounter_Int_reg[14]),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__0_i_2
       (.I0(BitCounter_Int_reg[13]),
        .I1(BitCounter_Int_reg[12]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__0_i_3
       (.I0(BitCounter_Int_reg[11]),
        .I1(BitCounter_Int_reg[10]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__0_i_4
       (.I0(BitCounter_Int_reg[9]),
        .I1(BitCounter_Int_reg[8]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__0_i_5
       (.I0(BitCounter_Int_reg[14]),
        .I1(BitCounter_Int_reg[15]),
        .O(\BitCounter_Int_reg[14]_0 [3]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__0_i_6
       (.I0(BitCounter_Int_reg[12]),
        .I1(BitCounter_Int_reg[13]),
        .O(\BitCounter_Int_reg[14]_0 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__0_i_7
       (.I0(BitCounter_Int_reg[10]),
        .I1(BitCounter_Int_reg[11]),
        .O(\BitCounter_Int_reg[14]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__0_i_8
       (.I0(BitCounter_Int_reg[8]),
        .I1(BitCounter_Int_reg[9]),
        .O(\BitCounter_Int_reg[14]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__1_i_1
       (.I0(BitCounter_Int_reg[23]),
        .I1(BitCounter_Int_reg[22]),
        .O(\BitCounter_Int_reg[23]_0 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__1_i_2
       (.I0(BitCounter_Int_reg[21]),
        .I1(BitCounter_Int_reg[20]),
        .O(\BitCounter_Int_reg[23]_0 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__1_i_3
       (.I0(BitCounter_Int_reg[19]),
        .I1(BitCounter_Int_reg[18]),
        .O(\BitCounter_Int_reg[23]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__1_i_4
       (.I0(BitCounter_Int_reg[17]),
        .I1(BitCounter_Int_reg[16]),
        .O(\BitCounter_Int_reg[23]_0 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__1_i_5
       (.I0(BitCounter_Int_reg[22]),
        .I1(BitCounter_Int_reg[23]),
        .O(\BitCounter_Int_reg[22]_0 [3]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__1_i_6
       (.I0(BitCounter_Int_reg[20]),
        .I1(BitCounter_Int_reg[21]),
        .O(\BitCounter_Int_reg[22]_0 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__1_i_7
       (.I0(BitCounter_Int_reg[18]),
        .I1(BitCounter_Int_reg[19]),
        .O(\BitCounter_Int_reg[22]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__1_i_8
       (.I0(BitCounter_Int_reg[16]),
        .I1(BitCounter_Int_reg[17]),
        .O(\BitCounter_Int_reg[22]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    I2SState0_carry__2_i_1
       (.I0(BitCounter_Int_reg[30]),
        .I1(BitCounter_Int_reg[31]),
        .O(\BitCounter_Int_reg[30]_0 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__2_i_2
       (.I0(BitCounter_Int_reg[28]),
        .I1(BitCounter_Int_reg[29]),
        .O(\BitCounter_Int_reg[30]_0 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__2_i_3
       (.I0(BitCounter_Int_reg[27]),
        .I1(BitCounter_Int_reg[26]),
        .O(\BitCounter_Int_reg[30]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry__2_i_4
       (.I0(BitCounter_Int_reg[25]),
        .I1(BitCounter_Int_reg[24]),
        .O(\BitCounter_Int_reg[30]_0 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__2_i_5
       (.I0(BitCounter_Int_reg[30]),
        .I1(BitCounter_Int_reg[31]),
        .O(\BitCounter_Int_reg[30]_1 [3]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__2_i_6
       (.I0(BitCounter_Int_reg[29]),
        .I1(BitCounter_Int_reg[28]),
        .O(\BitCounter_Int_reg[30]_1 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__2_i_7
       (.I0(BitCounter_Int_reg[26]),
        .I1(BitCounter_Int_reg[27]),
        .O(\BitCounter_Int_reg[30]_1 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry__2_i_8
       (.I0(BitCounter_Int_reg[24]),
        .I1(BitCounter_Int_reg[25]),
        .O(\BitCounter_Int_reg[30]_1 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    I2SState0_carry_i_1
       (.I0(BitCounter_Int_reg[7]),
        .I1(BitCounter_Int_reg[6]),
        .O(\BitCounter_Int_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    I2SState0_carry_i_2
       (.I0(BitCounter_Int_reg[6]),
        .I1(BitCounter_Int_reg[7]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h2)) 
    I2SState0_carry_i_3
       (.I0(BitCounter_Int_reg[4]),
        .I1(out),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h8)) 
    I2SState0_carry_i_4
       (.I0(BitCounter_Int_reg[3]),
        .I1(BitCounter_Int_reg[2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    I2SState0_carry_i_5
       (.I0(BitCounter_Int_reg[0]),
        .I1(BitCounter_Int_reg[1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h7)) 
    LRCLK_Int_i_1
       (.I0(Resetn_IBUF),
        .I1(Locked),
        .O(SR));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_10
       (.I0(BitCounter_Int_reg[22]),
        .I1(BitCounter_Int_reg[23]),
        .O(LRCLK_Int_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_11
       (.I0(BitCounter_Int_reg[20]),
        .I1(BitCounter_Int_reg[21]),
        .O(LRCLK_Int_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_13
       (.I0(BitCounter_Int_reg[18]),
        .I1(BitCounter_Int_reg[19]),
        .O(LRCLK_Int_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_14
       (.I0(BitCounter_Int_reg[16]),
        .I1(BitCounter_Int_reg[17]),
        .O(LRCLK_Int_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_15
       (.I0(BitCounter_Int_reg[14]),
        .I1(BitCounter_Int_reg[15]),
        .O(LRCLK_Int_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_16
       (.I0(BitCounter_Int_reg[12]),
        .I1(BitCounter_Int_reg[13]),
        .O(LRCLK_Int_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_17
       (.I0(BitCounter_Int_reg[4]),
        .I1(out),
        .O(LRCLK_Int_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_18
       (.I0(BitCounter_Int_reg[10]),
        .I1(BitCounter_Int_reg[11]),
        .O(LRCLK_Int_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_19
       (.I0(BitCounter_Int_reg[8]),
        .I1(BitCounter_Int_reg[9]),
        .O(LRCLK_Int_i_19_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_20
       (.I0(BitCounter_Int_reg[6]),
        .I1(BitCounter_Int_reg[7]),
        .O(LRCLK_Int_i_20_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LRCLK_Int_i_21
       (.I0(BitCounter_Int_reg[4]),
        .I1(out),
        .O(LRCLK_Int_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_5
       (.I0(BitCounter_Int_reg[30]),
        .I1(BitCounter_Int_reg[31]),
        .O(LRCLK_Int_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_6
       (.I0(BitCounter_Int_reg[29]),
        .I1(BitCounter_Int_reg[28]),
        .O(LRCLK_Int_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_8
       (.I0(BitCounter_Int_reg[26]),
        .I1(BitCounter_Int_reg[27]),
        .O(LRCLK_Int_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_9
       (.I0(BitCounter_Int_reg[24]),
        .I1(BitCounter_Int_reg[25]),
        .O(LRCLK_Int_i_9_n_0));
  FDSE #(
    .INIT(1'b1)) 
    LRCLK_Int_reg
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(LRCLK_Int_reg_i_2_n_5),
        .Q(LRCLK_OBUF),
        .S(SR));
  CARRY4 LRCLK_Int_reg_i_12
       (.CI(1'b0),
        .CO({LRCLK_Int_reg_i_12_n_0,LRCLK_Int_reg_i_12_n_1,LRCLK_Int_reg_i_12_n_2,LRCLK_Int_reg_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,LRCLK_Int_i_17_n_0}),
        .O(NLW_LRCLK_Int_reg_i_12_O_UNCONNECTED[3:0]),
        .S({LRCLK_Int_i_18_n_0,LRCLK_Int_i_19_n_0,LRCLK_Int_i_20_n_0,LRCLK_Int_i_21_n_0}));
  CARRY4 LRCLK_Int_reg_i_2
       (.CI(LRCLK_Int_reg_i_4_n_0),
        .CO({NLW_LRCLK_Int_reg_i_2_CO_UNCONNECTED[3:2],LRCLK_Int1,LRCLK_Int_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,BitCounter_Int_reg[31],1'b0}),
        .O({NLW_LRCLK_Int_reg_i_2_O_UNCONNECTED[3],LRCLK_Int_reg_i_2_n_5,NLW_LRCLK_Int_reg_i_2_O_UNCONNECTED[1:0]}),
        .S({1'b0,1'b1,LRCLK_Int_i_5_n_0,LRCLK_Int_i_6_n_0}));
  CARRY4 LRCLK_Int_reg_i_4
       (.CI(LRCLK_Int_reg_i_7_n_0),
        .CO({LRCLK_Int_reg_i_4_n_0,LRCLK_Int_reg_i_4_n_1,LRCLK_Int_reg_i_4_n_2,LRCLK_Int_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_Int_reg_i_4_O_UNCONNECTED[3:0]),
        .S({LRCLK_Int_i_8_n_0,LRCLK_Int_i_9_n_0,LRCLK_Int_i_10_n_0,LRCLK_Int_i_11_n_0}));
  CARRY4 LRCLK_Int_reg_i_7
       (.CI(LRCLK_Int_reg_i_12_n_0),
        .CO({LRCLK_Int_reg_i_7_n_0,LRCLK_Int_reg_i_7_n_1,LRCLK_Int_reg_i_7_n_2,LRCLK_Int_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_Int_reg_i_7_O_UNCONNECTED[3:0]),
        .S({LRCLK_Int_i_13_n_0,LRCLK_Int_i_14_n_0,LRCLK_Int_i_15_n_0,LRCLK_Int_i_16_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    SD_Int_reg
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(p_1_in),
        .Q(SD_OBUF),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000040)) 
    \ShiftReg[0]_i_1 
       (.I0(\ShiftReg[0]_i_2_n_0 ),
        .I1(Data[0]),
        .I2(\ShiftReg[0]_i_3_n_0 ),
        .I3(\ShiftReg[0]_i_4_n_0 ),
        .I4(\ShiftReg[0]_i_5_n_0 ),
        .O(ShiftReg[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \ShiftReg[0]_i_10 
       (.I0(BitCounter_Int_reg[23]),
        .I1(BitCounter_Int_reg[22]),
        .O(\ShiftReg[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ShiftReg[0]_i_11 
       (.I0(BitCounter_Int_reg[4]),
        .I1(out),
        .I2(BitCounter_Int_reg[18]),
        .I3(BitCounter_Int_reg[19]),
        .O(\ShiftReg[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ShiftReg[0]_i_12 
       (.I0(BitCounter_Int_reg[17]),
        .I1(BitCounter_Int_reg[16]),
        .O(\ShiftReg[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ShiftReg[0]_i_13 
       (.I0(BitCounter_Int_reg[21]),
        .I1(BitCounter_Int_reg[20]),
        .O(\ShiftReg[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ShiftReg[0]_i_2 
       (.I0(BitCounter_Int_reg[10]),
        .I1(BitCounter_Int_reg[11]),
        .I2(BitCounter_Int_reg[3]),
        .I3(BitCounter_Int_reg[0]),
        .O(\ShiftReg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ShiftReg[0]_i_3 
       (.I0(BitCounter_Int_reg[28]),
        .I1(BitCounter_Int_reg[29]),
        .I2(BitCounter_Int_reg[30]),
        .I3(BitCounter_Int_reg[31]),
        .O(\ShiftReg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ShiftReg[0]_i_4 
       (.I0(\ShiftReg[0]_i_6_n_0 ),
        .I1(\ShiftReg[0]_i_7_n_0 ),
        .I2(\ShiftReg[0]_i_8_n_0 ),
        .I3(\ShiftReg[0]_i_9_n_0 ),
        .I4(\ShiftReg[0]_i_10_n_0 ),
        .I5(\ShiftReg[0]_i_11_n_0 ),
        .O(\ShiftReg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ShiftReg[0]_i_5 
       (.I0(BitCounter_Int_reg[25]),
        .I1(BitCounter_Int_reg[24]),
        .I2(BitCounter_Int_reg[9]),
        .I3(BitCounter_Int_reg[8]),
        .I4(\ShiftReg[0]_i_12_n_0 ),
        .I5(\ShiftReg[0]_i_13_n_0 ),
        .O(\ShiftReg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ShiftReg[0]_i_6 
       (.I0(BitCounter_Int_reg[7]),
        .I1(BitCounter_Int_reg[6]),
        .O(\ShiftReg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ShiftReg[0]_i_7 
       (.I0(BitCounter_Int_reg[27]),
        .I1(BitCounter_Int_reg[26]),
        .O(\ShiftReg[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ShiftReg[0]_i_8 
       (.I0(BitCounter_Int_reg[12]),
        .I1(BitCounter_Int_reg[13]),
        .I2(BitCounter_Int_reg[2]),
        .I3(BitCounter_Int_reg[1]),
        .O(\ShiftReg[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ShiftReg[0]_i_9 
       (.I0(BitCounter_Int_reg[15]),
        .I1(BitCounter_Int_reg[14]),
        .O(\ShiftReg[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[10]_i_1 
       (.I0(data1[10]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[10]),
        .O(ShiftReg[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[11]_i_1 
       (.I0(data1[11]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[11]),
        .O(ShiftReg[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[12]_i_1 
       (.I0(data1[12]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[12]),
        .O(ShiftReg[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[13]_i_1 
       (.I0(data1[13]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[13]),
        .O(ShiftReg[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[14]_i_1 
       (.I0(data1[14]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[14]),
        .O(ShiftReg[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[15]_i_1 
       (.I0(data1[15]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[15]),
        .O(ShiftReg[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[16]_i_1 
       (.I0(data1[16]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[16]),
        .O(ShiftReg[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[17]_i_1 
       (.I0(data1[17]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[17]),
        .O(ShiftReg[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[18]_i_1 
       (.I0(data1[18]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[18]),
        .O(ShiftReg[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[19]_i_1 
       (.I0(data1[19]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[19]),
        .O(ShiftReg[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[1]_i_1 
       (.I0(data1[1]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[1]),
        .O(ShiftReg[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[20]_i_1 
       (.I0(data1[20]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[20]),
        .O(ShiftReg[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[21]_i_1 
       (.I0(data1[21]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[21]),
        .O(ShiftReg[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[22]_i_1 
       (.I0(data1[22]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[22]),
        .O(ShiftReg[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[23]_i_1 
       (.I0(data1[23]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[23]),
        .O(ShiftReg[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[24]_i_1 
       (.I0(data1[24]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[24]),
        .O(ShiftReg[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[25]_i_1 
       (.I0(data1[25]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[25]),
        .O(ShiftReg[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[26]_i_1 
       (.I0(data1[26]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[26]),
        .O(ShiftReg[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[27]_i_1 
       (.I0(data1[27]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[27]),
        .O(ShiftReg[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[28]_i_1 
       (.I0(data1[28]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[28]),
        .O(ShiftReg[28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[29]_i_1 
       (.I0(data1[29]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[29]),
        .O(ShiftReg[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[2]_i_1 
       (.I0(data1[2]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[2]),
        .O(ShiftReg[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[30]_i_1 
       (.I0(data1[30]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[30]),
        .O(ShiftReg[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[31]_i_1 
       (.I0(data1[31]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[31]),
        .O(ShiftReg[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[3]_i_1 
       (.I0(data1[3]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[3]),
        .O(ShiftReg[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[4]_i_1 
       (.I0(data1[4]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[4]),
        .O(ShiftReg[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[5]_i_1 
       (.I0(data1[5]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[5]),
        .O(ShiftReg[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[6]_i_1 
       (.I0(data1[6]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[6]),
        .O(ShiftReg[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[7]_i_1 
       (.I0(data1[7]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[7]),
        .O(ShiftReg[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[8]_i_1 
       (.I0(data1[8]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[8]),
        .O(ShiftReg[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[9]_i_1 
       (.I0(data1[9]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(Data[9]),
        .O(ShiftReg[9]));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[0] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[0]),
        .Q(data1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[10] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[10]),
        .Q(data1[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[11] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[11]),
        .Q(data1[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[12] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[12]),
        .Q(data1[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[13] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[13]),
        .Q(data1[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[14] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[14]),
        .Q(data1[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[15] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[15]),
        .Q(data1[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[16] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[16]),
        .Q(data1[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[17] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[17]),
        .Q(data1[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[18] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[18]),
        .Q(data1[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[19] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[19]),
        .Q(data1[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[1] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[1]),
        .Q(data1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[20] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[20]),
        .Q(data1[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[21] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[21]),
        .Q(data1[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[22] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[22]),
        .Q(data1[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[23] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[23]),
        .Q(data1[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[24] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[24]),
        .Q(data1[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[25] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[25]),
        .Q(data1[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[26] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[26]),
        .Q(data1[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[27] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[27]),
        .Q(data1[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[28] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[28]),
        .Q(data1[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[29] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[29]),
        .Q(data1[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[2] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[2]),
        .Q(data1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[30] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[30]),
        .Q(data1[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[31] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[31]),
        .Q(p_1_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[3] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[3]),
        .Q(data1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[4] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[4]),
        .Q(data1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[5] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[5]),
        .Q(data1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[6] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[6]),
        .Q(data1[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[7] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[7]),
        .Q(data1[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[8] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[8]),
        .Q(data1[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[9] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(ShiftReg[9]),
        .Q(data1[10]),
        .R(SR));
endmodule

(* WIDTH = "16" *) 
(* NotValidForBitStream *)
module Top
   (Clock,
    Resetn,
    Active,
    Last,
    MCLK,
    LRCLK,
    SCLK,
    SD);
  input Clock;
  input Resetn;
  output Active;
  output Last;
  output MCLK;
  output LRCLK;
  output SCLK;
  output SD;

  wire Active;
  wire Active_OBUF;
  wire Clock;
  wire ClockOut;
  wire Clock_IBUF;
  wire I2S_Transmitter_n_2;
  wire LRCLK;
  wire LRCLK_Int_reg_i_3_n_0;
  wire LRCLK_OBUF;
  wire Last;
  wire Last_OBUF;
  wire Locked;
  wire MCLK;
  wire MCLK_OBUF;
  wire MCLK_OBUF_BUFG;
  wire Resetn;
  wire Resetn_IBUF;
  wire SCLK;
  wire SCLK_OBUF;
  wire SD;
  wire SD_OBUF;
  wire [31:0]TDATA;
  wire TREADY;
  wire TVALID;
  wire [7:0]NLW_AudioData_TID_UNCONNECTED;

initial begin
 $sdf_annotate("Testbench_time_synth.sdf",,,,"tool_control");
end
  OBUF Active_OBUF_inst
       (.I(Active_OBUF),
        .O(Active));
  (* hw_handoff = "DataROM.hwdef" *) 
  DataROM AudioData
       (.ACLK(Clock_IBUF),
        .ARESETN(Active_OBUF),
        .TDATA(TDATA),
        .TID(NLW_AudioData_TID_UNCONNECTED[7:0]),
        .TLAST(Last_OBUF),
        .TREADY(TREADY),
        .TVALID(TVALID));
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO " *) 
  IBUF Clock_IBUF_inst
       (.I(Clock),
        .O(Clock_IBUF));
  I2S I2S_Transmitter
       (.Active_OBUF(Active_OBUF),
        .AudioClock_reg_0(I2S_Transmitter_n_2),
        .CLK(MCLK_OBUF_BUFG),
        .Clock(Clock_IBUF),
        .LRCLK_OBUF(LRCLK_OBUF),
        .Locked(Locked),
        .Resetn_IBUF(Resetn_IBUF),
        .SCLK_OBUF(SCLK_OBUF),
        .SD_Int_reg(LRCLK_Int_reg_i_3_n_0),
        .SD_OBUF(SD_OBUF),
        .TDATA(TDATA),
        .TREADY(TREADY),
        .TVALID(TVALID));
  (* hw_handoff = "ClockGeneration.hwdef" *) 
  ClockGeneration InputClock
       (.ClockIn(Clock_IBUF),
        .ClockOut(ClockOut),
        .Locked(Locked));
  BUFG LRCLK_Int_reg_i_3
       (.I(I2S_Transmitter_n_2),
        .O(LRCLK_Int_reg_i_3_n_0));
  OBUF LRCLK_OBUF_inst
       (.I(LRCLK_OBUF),
        .O(LRCLK));
  OBUF Last_OBUF_inst
       (.I(Last_OBUF),
        .O(Last));
  BUFG MCLK_OBUF_BUFG_inst
       (.I(MCLK_OBUF),
        .O(MCLK_OBUF_BUFG));
  LUT2 #(
    .INIT(4'h8)) 
    MCLK_OBUF_BUFG_inst_i_1
       (.I0(Locked),
        .I1(ClockOut),
        .O(MCLK_OBUF));
  OBUF MCLK_OBUF_inst
       (.I(MCLK_OBUF_BUFG),
        .O(MCLK));
  IBUF Resetn_IBUF_inst
       (.I(Resetn),
        .O(Resetn_IBUF));
  OBUF SCLK_OBUF_inst
       (.I(SCLK_OBUF),
        .O(SCLK));
  OBUF SD_OBUF_inst
       (.I(SD_OBUF),
        .O(SD));
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
