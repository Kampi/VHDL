// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Aug 11 20:03:07 2019
// Host        : PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Dropbox/Git/VHDL/I2S/I2S_Audio.sim/sim_2/impl/timing/xsim/Testbench_time_impl.v
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
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  BUFG clkout1_buf
       (.I(clk_out1_ClockGeneration_clk_wiz_0_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO BUFG_OPT " *) 
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
    .COMPENSATION("BUF_IN"),
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
  wire TLAST;
  wire TREADY;
  wire TVALID;
  wire [31:16]NLW_SineROM_M_TDATA_UNCONNECTED;
  wire [7:0]NLW_SineROM_M_TID_UNCONNECTED;

  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "AXI4S_ROM,Vivado 2018.3" *) 
  DataROM_AXI4S_ROM_0_1 SineROM
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_TDATA({NLW_SineROM_M_TDATA_UNCONNECTED[31:16],TDATA[15:0]}),
        .M_TID(NLW_SineROM_M_TID_UNCONNECTED[7:0]),
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

  wire ACLK;
  wire ARESETN;
  wire [31:0]M_TDATA;
  wire M_TLAST;
  wire M_TREADY;
  wire M_TVALID;

  DataROM_AXI4S_ROM_0_1__AXI4S_ROM U0
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_TDATA(M_TDATA[15:0]),
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
  wire \Address_reg[16]_i_2_n_0 ;
  wire \Address_reg[20]_i_2_n_0 ;
  wire \Address_reg[24]_i_2_n_0 ;
  wire \Address_reg[28]_i_2_n_0 ;
  wire \Address_reg[4]_i_2_n_0 ;
  wire \Address_reg[8]_i_2_n_0 ;
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
  wire [2:0]\NLW_Address_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[24]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Address_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Address_reg[31]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[8]_i_2_CO_UNCONNECTED ;

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
  LUT2 #(
    .INIT(4'h8)) 
    \Address[1]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[1]),
        .O(\Address[1]_i_1_n_0 ));
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
  LUT2 #(
    .INIT(4'h8)) 
    \Address[31]_i_3 
       (.I0(TDATA_Int),
        .I1(data0[31]),
        .O(\Address[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Address[3]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[3]),
        .O(\Address[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Address[4]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[4]),
        .O(\Address[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Address[5]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[5]),
        .O(\Address[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Address[6]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[6]),
        .O(\Address[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Address[7]_i_1 
       (.I0(TDATA_Int),
        .I1(data0[7]),
        .O(\Address[7]_i_1_n_0 ));
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[12]_i_2 
       (.CI(\Address_reg[8]_i_2_n_0 ),
        .CO({\Address_reg[12]_i_2_n_0 ,\NLW_Address_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[16]_i_2 
       (.CI(\Address_reg[12]_i_2_n_0 ),
        .CO({\Address_reg[16]_i_2_n_0 ,\NLW_Address_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[20]_i_2 
       (.CI(\Address_reg[16]_i_2_n_0 ),
        .CO({\Address_reg[20]_i_2_n_0 ,\NLW_Address_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[24]_i_2 
       (.CI(\Address_reg[20]_i_2_n_0 ),
        .CO({\Address_reg[24]_i_2_n_0 ,\NLW_Address_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[28]_i_2 
       (.CI(\Address_reg[24]_i_2_n_0 ),
        .CO({\Address_reg[28]_i_2_n_0 ,\NLW_Address_reg[28]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[31]_i_4 
       (.CI(\Address_reg[28]_i_2_n_0 ),
        .CO(\NLW_Address_reg[31]_i_4_CO_UNCONNECTED [3:0]),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\Address_reg[4]_i_2_n_0 ,\NLW_Address_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[8]_i_2 
       (.CI(\Address_reg[4]_i_2_n_0 ),
        .CO({\Address_reg[8]_i_2_n_0 ,\NLW_Address_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
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
        .TLAST_Int0(TLAST_Int0),
        .pwropt(\FSM_onehot_CurrentState[2]_i_1_n_0 ));
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
    ADDRARDADDR,
    pwropt);
  output [15:0]M_TDATA;
  input ACLK;
  input [0:0]Q;
  input TLAST_Int0;
  input [6:0]ADDRARDADDR;
  input pwropt;

  wire ACLK;
  wire [6:0]ADDRARDADDR;
  wire [15:0]M_TDATA;
  wire [0:0]Q;
  wire TLAST_Int0;
  wire pwropt;
  wire [15:0]NLW_DataOut_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_DataOut_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_DataOut_reg_DOPBDOP_UNCONNECTED;

  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
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
        .ENARDEN(pwropt),
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
    SCLK_OBUF,
    SD_Int_reg,
    Clock,
    CLK,
    Locked,
    Resetn_IBUF,
    TVALID,
    TDATA);
  output LRCLK_OBUF;
  output SD_OBUF;
  output AudioClock_reg_0;
  output TREADY;
  output SCLK_OBUF;
  input SD_Int_reg;
  input Clock;
  input CLK;
  input Locked;
  input Resetn_IBUF;
  input TVALID;
  input [31:0]TDATA;

  wire AudioClock_i_1_n_0;
  wire AudioClock_reg_0;
  wire [31:0]AudioData0_in;
  wire \AudioData[0]_i_2_n_0 ;
  wire \AudioData[10]_i_2_n_0 ;
  wire \AudioData[11]_i_2_n_0 ;
  wire \AudioData[12]_i_2_n_0 ;
  wire \AudioData[13]_i_2_n_0 ;
  wire \AudioData[14]_i_2_n_0 ;
  wire \AudioData[15]_i_2_n_0 ;
  wire \AudioData[1]_i_2_n_0 ;
  wire \AudioData[2]_i_2_n_0 ;
  wire \AudioData[31]_i_1_n_0 ;
  wire \AudioData[31]_i_3_n_0 ;
  wire \AudioData[31]_i_4_n_0 ;
  wire \AudioData[3]_i_2_n_0 ;
  wire \AudioData[4]_i_2_n_0 ;
  wire \AudioData[5]_i_2_n_0 ;
  wire \AudioData[6]_i_2_n_0 ;
  wire \AudioData[7]_i_2_n_0 ;
  wire \AudioData[8]_i_2_n_0 ;
  wire \AudioData[9]_i_2_n_0 ;
  wire \BytesInFIFO_0[0]_i_1_n_0 ;
  wire \BytesInFIFO_0[31]_i_1_n_0 ;
  wire \BytesInFIFO_0[31]_i_2_n_0 ;
  wire \BytesInFIFO_0_reg[12]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[16]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[20]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[24]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[28]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[4]_i_1_n_0 ;
  wire \BytesInFIFO_0_reg[8]_i_1_n_0 ;
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
  wire \FIFO_0[1][31]_i_1_n_0 ;
  wire \FIFO_0[1]_3 ;
  wire \FIFO_0[2][31]_i_1_n_0 ;
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
  wire FIFO_0_Full1_carry__1_i_1_n_0;
  wire FIFO_0_Full1_carry__1_i_2_n_0;
  wire FIFO_0_Full1_carry__1_i_3_n_0;
  wire FIFO_0_Full1_carry__1_i_4_n_0;
  wire FIFO_0_Full1_carry__1_n_0;
  wire FIFO_0_Full1_carry__2_i_1_n_0;
  wire FIFO_0_Full1_carry__2_i_2_n_0;
  wire FIFO_0_Full1_carry__2_i_3_n_0;
  wire FIFO_0_Full1_carry__2_i_4_n_0;
  wire FIFO_0_Full1_carry__2_n_0;
  wire FIFO_0_Full1_carry_i_1_n_0;
  wire FIFO_0_Full1_carry_i_2_n_0;
  wire FIFO_0_Full1_carry_i_3_n_0;
  wire FIFO_0_Full1_carry_i_4_n_0;
  wire FIFO_0_Full1_carry_i_5_n_0;
  wire FIFO_0_Full1_carry_n_0;
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
  wire FIFO_1_Full1_carry__1_i_1_n_0;
  wire FIFO_1_Full1_carry__1_i_2_n_0;
  wire FIFO_1_Full1_carry__1_i_3_n_0;
  wire FIFO_1_Full1_carry__1_i_4_n_0;
  wire FIFO_1_Full1_carry__1_i_5_n_0;
  wire FIFO_1_Full1_carry__1_i_6_n_0;
  wire FIFO_1_Full1_carry__1_i_7_n_0;
  wire FIFO_1_Full1_carry__1_i_8_n_0;
  wire FIFO_1_Full1_carry__1_n_0;
  wire FIFO_1_Full1_carry__2_i_1_n_0;
  wire FIFO_1_Full1_carry__2_i_2_n_0;
  wire FIFO_1_Full1_carry__2_i_3_n_0;
  wire FIFO_1_Full1_carry__2_i_4_n_0;
  wire FIFO_1_Full1_carry__2_i_5_n_0;
  wire FIFO_1_Full1_carry__2_i_6_n_0;
  wire FIFO_1_Full1_carry__2_i_7_n_0;
  wire FIFO_1_Full1_carry__2_i_8_n_0;
  wire FIFO_1_Full1_carry_i_1_n_0;
  wire FIFO_1_Full1_carry_i_2_n_0;
  wire FIFO_1_Full1_carry_i_3_n_0;
  wire FIFO_1_Full1_carry_i_4_n_0;
  wire FIFO_1_Full1_carry_i_5_n_0;
  wire FIFO_1_Full1_carry_i_6_n_0;
  wire FIFO_1_Full1_carry_i_7_n_0;
  wire FIFO_1_Full1_carry_i_8_n_0;
  wire FIFO_1_Full1_carry_n_0;
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
  wire \FSM_sequential_I2SState[2]_i_10_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_9_n_0 ;
  wire [2:0]I2SState__0;
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
  wire \MCLK_Cnt_reg[16]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[20]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[24]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[28]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_0 ;
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
  wire \ReadCounter_reg[0]_i_2_n_4 ;
  wire \ReadCounter_reg[0]_i_2_n_5 ;
  wire \ReadCounter_reg[0]_i_2_n_6 ;
  wire \ReadCounter_reg[0]_i_2_n_7 ;
  wire \ReadCounter_reg[12]_i_1_n_0 ;
  wire \ReadCounter_reg[12]_i_1_n_4 ;
  wire \ReadCounter_reg[12]_i_1_n_5 ;
  wire \ReadCounter_reg[12]_i_1_n_6 ;
  wire \ReadCounter_reg[12]_i_1_n_7 ;
  wire \ReadCounter_reg[16]_i_1_n_0 ;
  wire \ReadCounter_reg[16]_i_1_n_4 ;
  wire \ReadCounter_reg[16]_i_1_n_5 ;
  wire \ReadCounter_reg[16]_i_1_n_6 ;
  wire \ReadCounter_reg[16]_i_1_n_7 ;
  wire \ReadCounter_reg[20]_i_1_n_0 ;
  wire \ReadCounter_reg[20]_i_1_n_4 ;
  wire \ReadCounter_reg[20]_i_1_n_5 ;
  wire \ReadCounter_reg[20]_i_1_n_6 ;
  wire \ReadCounter_reg[20]_i_1_n_7 ;
  wire \ReadCounter_reg[24]_i_1_n_0 ;
  wire \ReadCounter_reg[24]_i_1_n_4 ;
  wire \ReadCounter_reg[24]_i_1_n_5 ;
  wire \ReadCounter_reg[24]_i_1_n_6 ;
  wire \ReadCounter_reg[24]_i_1_n_7 ;
  wire \ReadCounter_reg[28]_i_1_n_4 ;
  wire \ReadCounter_reg[28]_i_1_n_5 ;
  wire \ReadCounter_reg[28]_i_1_n_6 ;
  wire \ReadCounter_reg[28]_i_1_n_7 ;
  wire \ReadCounter_reg[4]_i_1_n_0 ;
  wire \ReadCounter_reg[4]_i_1_n_4 ;
  wire \ReadCounter_reg[4]_i_1_n_5 ;
  wire \ReadCounter_reg[4]_i_1_n_6 ;
  wire \ReadCounter_reg[4]_i_1_n_7 ;
  wire \ReadCounter_reg[8]_i_1_n_0 ;
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
  wire Transmitter_n_3;
  wire Transmitter_n_4;
  wire Transmitter_n_5;
  wire [31:1]data0;
  wire [31:1]in10;
  wire p_0_in;
  wire [2:0]\NLW_BytesInFIFO_0_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_BytesInFIFO_0_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_BytesInFIFO_0_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_BytesInFIFO_0_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_BytesInFIFO_0_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_BytesInFIFO_0_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_BytesInFIFO_0_reg[31]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_BytesInFIFO_0_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_BytesInFIFO_0_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_FIFO_0_Full1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_FIFO_0_Full1_carry_O_UNCONNECTED;
  wire [2:0]NLW_FIFO_0_Full1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_FIFO_0_Full1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_FIFO_0_Full1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_FIFO_0_Full1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_FIFO_0_Full1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_FIFO_0_Full1_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_FIFO_1_Full1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_FIFO_1_Full1_carry_O_UNCONNECTED;
  wire [2:0]NLW_FIFO_1_Full1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_FIFO_1_Full1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_FIFO_1_Full1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_FIFO_1_Full1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_FIFO_1_Full1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_FIFO_1_Full1_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_MCLK_Cnt_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[24]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_MCLK_Cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_MCLK_Cnt_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[8]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_ReadCounter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_ReadCounter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_ReadCounter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_ReadCounter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_ReadCounter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_ReadCounter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_ReadCounter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_ReadCounter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [31:16]NLW_Transmitter_Q_UNCONNECTED;

  LUT4 #(
    .INIT(16'h7F80)) 
    AudioClock_i_1
       (.I0(Resetn_IBUF),
        .I1(Locked),
        .I2(\MCLK_Cnt[31]_i_3_n_0 ),
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
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[0]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [0]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [0]),
        .I4(\AudioData[0]_i_2_n_0 ),
        .O(AudioData0_in[0]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[0]_i_2 
       (.I0(\FIFO_1_reg[0] [0]),
        .I1(\FIFO_1_reg[1] [0]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[10]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [10]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [10]),
        .I4(\AudioData[10]_i_2_n_0 ),
        .O(AudioData0_in[10]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[10]_i_2 
       (.I0(\FIFO_1_reg[0] [10]),
        .I1(\FIFO_1_reg[1] [10]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[11]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [11]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [11]),
        .I4(\AudioData[11]_i_2_n_0 ),
        .O(AudioData0_in[11]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[11]_i_2 
       (.I0(\FIFO_1_reg[0] [11]),
        .I1(\FIFO_1_reg[1] [11]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[12]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [12]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [12]),
        .I4(\AudioData[12]_i_2_n_0 ),
        .O(AudioData0_in[12]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[12]_i_2 
       (.I0(\FIFO_1_reg[0] [12]),
        .I1(\FIFO_1_reg[1] [12]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[13]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [13]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [13]),
        .I4(\AudioData[13]_i_2_n_0 ),
        .O(AudioData0_in[13]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[13]_i_2 
       (.I0(\FIFO_1_reg[0] [13]),
        .I1(\FIFO_1_reg[1] [13]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[14]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [14]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [14]),
        .I4(\AudioData[14]_i_2_n_0 ),
        .O(AudioData0_in[14]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[14]_i_2 
       (.I0(\FIFO_1_reg[0] [14]),
        .I1(\FIFO_1_reg[1] [14]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[15]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [15]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [15]),
        .I4(\AudioData[15]_i_2_n_0 ),
        .O(AudioData0_in[15]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[15]_i_2 
       (.I0(\FIFO_1_reg[0] [15]),
        .I1(\FIFO_1_reg[1] [15]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[1]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [1]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [1]),
        .I4(\AudioData[1]_i_2_n_0 ),
        .O(AudioData0_in[1]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[1]_i_2 
       (.I0(\FIFO_1_reg[0] [1]),
        .I1(\FIFO_1_reg[1] [1]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[2]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [2]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [2]),
        .I4(\AudioData[2]_i_2_n_0 ),
        .O(AudioData0_in[2]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[2]_i_2 
       (.I0(\FIFO_1_reg[0] [2]),
        .I1(\FIFO_1_reg[1] [2]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \AudioData[31]_i_1 
       (.I0(I2SState__0[2]),
        .I1(I2SState__0[0]),
        .I2(I2SState__0[1]),
        .O(\AudioData[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \AudioData[31]_i_3 
       (.I0(I2SState__0[2]),
        .I1(I2SState__0[1]),
        .I2(ReadCounter_reg[1]),
        .I3(ReadCounter_reg[0]),
        .O(\AudioData[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \AudioData[31]_i_4 
       (.I0(I2SState__0[2]),
        .I1(I2SState__0[1]),
        .I2(ReadCounter_reg[1]),
        .I3(ReadCounter_reg[0]),
        .O(\AudioData[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[3]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [3]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [3]),
        .I4(\AudioData[3]_i_2_n_0 ),
        .O(AudioData0_in[3]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[3]_i_2 
       (.I0(\FIFO_1_reg[0] [3]),
        .I1(\FIFO_1_reg[1] [3]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[4]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [4]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [4]),
        .I4(\AudioData[4]_i_2_n_0 ),
        .O(AudioData0_in[4]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[4]_i_2 
       (.I0(\FIFO_1_reg[0] [4]),
        .I1(\FIFO_1_reg[1] [4]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[5]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [5]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [5]),
        .I4(\AudioData[5]_i_2_n_0 ),
        .O(AudioData0_in[5]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[5]_i_2 
       (.I0(\FIFO_1_reg[0] [5]),
        .I1(\FIFO_1_reg[1] [5]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[6]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [6]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [6]),
        .I4(\AudioData[6]_i_2_n_0 ),
        .O(AudioData0_in[6]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[6]_i_2 
       (.I0(\FIFO_1_reg[0] [6]),
        .I1(\FIFO_1_reg[1] [6]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[7]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [7]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [7]),
        .I4(\AudioData[7]_i_2_n_0 ),
        .O(AudioData0_in[7]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[7]_i_2 
       (.I0(\FIFO_1_reg[0] [7]),
        .I1(\FIFO_1_reg[1] [7]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[8]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [8]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [8]),
        .I4(\AudioData[8]_i_2_n_0 ),
        .O(AudioData0_in[8]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[8]_i_2 
       (.I0(\FIFO_1_reg[0] [8]),
        .I1(\FIFO_1_reg[1] [8]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \AudioData[9]_i_1 
       (.I0(\AudioData[31]_i_3_n_0 ),
        .I1(\FIFO_1_reg[3] [9]),
        .I2(\AudioData[31]_i_4_n_0 ),
        .I3(\FIFO_1_reg[2] [9]),
        .I4(\AudioData[9]_i_2_n_0 ),
        .O(AudioData0_in[9]));
  LUT6 #(
    .INIT(64'h000000000C000A00)) 
    \AudioData[9]_i_2 
       (.I0(\FIFO_1_reg[0] [9]),
        .I1(\FIFO_1_reg[1] [9]),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[1]),
        .I4(ReadCounter_reg[0]),
        .I5(ReadCounter_reg[1]),
        .O(\AudioData[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[0] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[0]),
        .Q(Data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[10] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[10]),
        .Q(Data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[11] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[11]),
        .Q(Data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[12] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[12]),
        .Q(Data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[13] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[13]),
        .Q(Data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[14] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[14]),
        .Q(Data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[15] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[15]),
        .Q(Data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[1] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[1]),
        .Q(Data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[2] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[2]),
        .Q(Data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[3] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[3]),
        .Q(Data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[4] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[4]),
        .Q(Data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[5] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[5]),
        .Q(Data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[6] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[6]),
        .Q(Data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[7] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[7]),
        .Q(Data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[8] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[8]),
        .Q(Data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioData_reg[9] 
       (.C(Clock),
        .CE(\AudioData[31]_i_1_n_0 ),
        .D(AudioData0_in[9]),
        .Q(Data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \BytesInFIFO_0[0]_i_1 
       (.I0(\BytesInFIFO_0_reg_n_0_[0] ),
        .O(\BytesInFIFO_0[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0023)) 
    \BytesInFIFO_0[31]_i_1 
       (.I0(FIFO_1_Full_reg_n_0),
        .I1(FIFOState[0]),
        .I2(FIFOState[2]),
        .I3(FIFOState[1]),
        .O(\BytesInFIFO_0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04040F05)) 
    \BytesInFIFO_0[31]_i_2 
       (.I0(FIFOState[2]),
        .I1(FIFO_0_Full1_carry__2_n_0),
        .I2(FIFOState[0]),
        .I3(FIFO_1_Full_reg_n_0),
        .I4(FIFOState[1]),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BytesInFIFO_0_reg[12]_i_1 
       (.CI(\BytesInFIFO_0_reg[8]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[12]_i_1_n_0 ,\NLW_BytesInFIFO_0_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BytesInFIFO_0_reg[16]_i_1 
       (.CI(\BytesInFIFO_0_reg[12]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[16]_i_1_n_0 ,\NLW_BytesInFIFO_0_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BytesInFIFO_0_reg[20]_i_1 
       (.CI(\BytesInFIFO_0_reg[16]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[20]_i_1_n_0 ,\NLW_BytesInFIFO_0_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BytesInFIFO_0_reg[24]_i_1 
       (.CI(\BytesInFIFO_0_reg[20]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[24]_i_1_n_0 ,\NLW_BytesInFIFO_0_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BytesInFIFO_0_reg[28]_i_1 
       (.CI(\BytesInFIFO_0_reg[24]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[28]_i_1_n_0 ,\NLW_BytesInFIFO_0_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BytesInFIFO_0_reg[31]_i_3 
       (.CI(\BytesInFIFO_0_reg[28]_i_1_n_0 ),
        .CO(\NLW_BytesInFIFO_0_reg[31]_i_3_CO_UNCONNECTED [3:0]),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BytesInFIFO_0_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\BytesInFIFO_0_reg[4]_i_1_n_0 ,\NLW_BytesInFIFO_0_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BytesInFIFO_0_reg[8]_i_1 
       (.CI(\BytesInFIFO_0_reg[4]_i_1_n_0 ),
        .CO({\BytesInFIFO_0_reg[8]_i_1_n_0 ,\NLW_BytesInFIFO_0_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
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
       (.I0(I2SState__0[0]),
        .I1(I2SState__0[2]),
        .I2(\BytesInFIFO_1[31]_i_2_n_0 ),
        .O(\BytesInFIFO_1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0031)) 
    \BytesInFIFO_1[31]_i_2 
       (.I0(I2SState__0[0]),
        .I1(I2SState__0[1]),
        .I2(FIFO_0_Full_reg_n_0),
        .I3(I2SState__0[2]),
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
  LUT6 #(
    .INIT(64'h0300000003005755)) 
    \FIFO_0[0][31]_i_1 
       (.I0(FIFOState[0]),
        .I1(\BytesInFIFO_0_reg_n_0_[1] ),
        .I2(\BytesInFIFO_0_reg_n_0_[0] ),
        .I3(\FIFO_0[3][31]_i_3_n_0 ),
        .I4(FIFOState[2]),
        .I5(FIFOState[1]),
        .O(\FIFO_0[0][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02020202020202FF)) 
    \FIFO_0[0][31]_i_2 
       (.I0(\FIFO_0[3][31]_i_3_n_0 ),
        .I1(\BytesInFIFO_0_reg_n_0_[0] ),
        .I2(\BytesInFIFO_0_reg_n_0_[1] ),
        .I3(FIFOState[1]),
        .I4(FIFOState[2]),
        .I5(FIFOState[0]),
        .O(\FIFO_0[0][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3000000030007555)) 
    \FIFO_0[1][31]_i_1 
       (.I0(FIFOState[0]),
        .I1(\BytesInFIFO_0_reg_n_0_[1] ),
        .I2(\BytesInFIFO_0_reg_n_0_[0] ),
        .I3(\FIFO_0[3][31]_i_3_n_0 ),
        .I4(FIFOState[2]),
        .I5(FIFOState[1]),
        .O(\FIFO_0[1][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08080808080808FF)) 
    \FIFO_0[1][31]_i_2 
       (.I0(\FIFO_0[3][31]_i_3_n_0 ),
        .I1(\BytesInFIFO_0_reg_n_0_[0] ),
        .I2(\BytesInFIFO_0_reg_n_0_[1] ),
        .I3(FIFOState[1]),
        .I4(FIFOState[2]),
        .I5(FIFOState[0]),
        .O(\FIFO_0[1]_3 ));
  LUT6 #(
    .INIT(64'h3000000030007555)) 
    \FIFO_0[2][31]_i_1 
       (.I0(FIFOState[0]),
        .I1(\BytesInFIFO_0_reg_n_0_[0] ),
        .I2(\BytesInFIFO_0_reg_n_0_[1] ),
        .I3(\FIFO_0[3][31]_i_3_n_0 ),
        .I4(FIFOState[2]),
        .I5(FIFOState[1]),
        .O(\FIFO_0[2][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08080808080808FF)) 
    \FIFO_0[2][31]_i_2 
       (.I0(\FIFO_0[3][31]_i_3_n_0 ),
        .I1(\BytesInFIFO_0_reg_n_0_[1] ),
        .I2(\BytesInFIFO_0_reg_n_0_[0] ),
        .I3(FIFOState[1]),
        .I4(FIFOState[2]),
        .I5(FIFOState[0]),
        .O(\FIFO_0[2]_2 ));
  LUT6 #(
    .INIT(64'hC0000000C000D555)) 
    \FIFO_0[3][31]_i_1 
       (.I0(FIFOState[0]),
        .I1(\FIFO_0[3][31]_i_3_n_0 ),
        .I2(\BytesInFIFO_0_reg_n_0_[0] ),
        .I3(\BytesInFIFO_0_reg_n_0_[1] ),
        .I4(FIFOState[2]),
        .I5(FIFOState[1]),
        .O(\FIFO_0[3][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FIFO_0[3][31]_i_10 
       (.I0(\BytesInFIFO_0_reg_n_0_[9] ),
        .I1(\BytesInFIFO_0_reg_n_0_[8] ),
        .I2(\BytesInFIFO_0_reg_n_0_[13] ),
        .I3(\BytesInFIFO_0_reg_n_0_[12] ),
        .I4(\BytesInFIFO_0_reg_n_0_[6] ),
        .I5(\BytesInFIFO_0_reg_n_0_[7] ),
        .O(\FIFO_0[3][31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h80808080808080FF)) 
    \FIFO_0[3][31]_i_2 
       (.I0(\BytesInFIFO_0_reg_n_0_[1] ),
        .I1(\BytesInFIFO_0_reg_n_0_[0] ),
        .I2(\FIFO_0[3][31]_i_3_n_0 ),
        .I3(FIFOState[1]),
        .I4(FIFOState[2]),
        .I5(FIFOState[0]),
        .O(\FIFO_0[3]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FIFO_0[3][31]_i_3 
       (.I0(\FIFO_0[3][31]_i_4_n_0 ),
        .I1(\FIFO_0[3][31]_i_5_n_0 ),
        .I2(\BytesInFIFO_0_reg_n_0_[17] ),
        .I3(\BytesInFIFO_0_reg_n_0_[16] ),
        .I4(\FIFO_0[3][31]_i_6_n_0 ),
        .I5(\FIFO_0[3][31]_i_7_n_0 ),
        .O(\FIFO_0[3][31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FIFO_0[3][31]_i_4 
       (.I0(FIFOState[2]),
        .I1(FIFOState[0]),
        .O(\FIFO_0[3][31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FIFO_0[3][31]_i_5 
       (.I0(\BytesInFIFO_0_reg_n_0_[4] ),
        .I1(\BytesInFIFO_0_reg_n_0_[5] ),
        .I2(\BytesInFIFO_0_reg_n_0_[22] ),
        .I3(\BytesInFIFO_0_reg_n_0_[23] ),
        .O(\FIFO_0[3][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FIFO_0[3][31]_i_6 
       (.I0(\FIFO_0[3][31]_i_8_n_0 ),
        .I1(\BytesInFIFO_0_reg_n_0_[24] ),
        .I2(\BytesInFIFO_0_reg_n_0_[25] ),
        .I3(\BytesInFIFO_0_reg_n_0_[20] ),
        .I4(\BytesInFIFO_0_reg_n_0_[21] ),
        .I5(\FIFO_0[3][31]_i_9_n_0 ),
        .O(\FIFO_0[3][31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FIFO_0[3][31]_i_7 
       (.I0(\FIFO_0[3][31]_i_10_n_0 ),
        .I1(\BytesInFIFO_0_reg_n_0_[11] ),
        .I2(\BytesInFIFO_0_reg_n_0_[10] ),
        .I3(\BytesInFIFO_0_reg_n_0_[15] ),
        .I4(\BytesInFIFO_0_reg_n_0_[14] ),
        .O(\FIFO_0[3][31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FIFO_0[3][31]_i_8 
       (.I0(\BytesInFIFO_0_reg_n_0_[18] ),
        .I1(\BytesInFIFO_0_reg_n_0_[19] ),
        .I2(\BytesInFIFO_0_reg_n_0_[30] ),
        .I3(\BytesInFIFO_0_reg_n_0_[31] ),
        .O(\FIFO_0[3][31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FIFO_0[3][31]_i_9 
       (.I0(\BytesInFIFO_0_reg_n_0_[27] ),
        .I1(\BytesInFIFO_0_reg_n_0_[26] ),
        .I2(\BytesInFIFO_0_reg_n_0_[3] ),
        .I3(\BytesInFIFO_0_reg_n_0_[2] ),
        .I4(\BytesInFIFO_0_reg_n_0_[28] ),
        .I5(\BytesInFIFO_0_reg_n_0_[29] ),
        .O(\FIFO_0[3][31]_i_9_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 FIFO_0_Full1_carry
       (.CI(1'b0),
        .CO({FIFO_0_Full1_carry_n_0,NLW_FIFO_0_Full1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,FIFO_0_Full1_carry_i_1_n_0}),
        .O(NLW_FIFO_0_Full1_carry_O_UNCONNECTED[3:0]),
        .S({FIFO_0_Full1_carry_i_2_n_0,FIFO_0_Full1_carry_i_3_n_0,FIFO_0_Full1_carry_i_4_n_0,FIFO_0_Full1_carry_i_5_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 FIFO_0_Full1_carry__0
       (.CI(FIFO_0_Full1_carry_n_0),
        .CO({FIFO_0_Full1_carry__0_n_0,NLW_FIFO_0_Full1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_FIFO_0_Full1_carry__0_O_UNCONNECTED[3:0]),
        .S({FIFO_0_Full1_carry__0_i_1_n_0,FIFO_0_Full1_carry__0_i_2_n_0,FIFO_0_Full1_carry__0_i_3_n_0,FIFO_0_Full1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__0_i_1
       (.I0(\BytesInFIFO_0_reg_n_0_[14] ),
        .I1(\BytesInFIFO_0_reg_n_0_[15] ),
        .O(FIFO_0_Full1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry__0_i_2
       (.I0(\BytesInFIFO_0_reg_n_0_[12] ),
        .I1(\BytesInFIFO_0_reg_n_0_[13] ),
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
       (.I0(\BytesInFIFO_0_reg_n_0_[8] ),
        .I1(\BytesInFIFO_0_reg_n_0_[9] ),
        .O(FIFO_0_Full1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 FIFO_0_Full1_carry__1
       (.CI(FIFO_0_Full1_carry__0_n_0),
        .CO({FIFO_0_Full1_carry__1_n_0,NLW_FIFO_0_Full1_carry__1_CO_UNCONNECTED[2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 FIFO_0_Full1_carry__2
       (.CI(FIFO_0_Full1_carry__1_n_0),
        .CO({FIFO_0_Full1_carry__2_n_0,NLW_FIFO_0_Full1_carry__2_CO_UNCONNECTED[2:0]}),
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
       (.I0(\BytesInFIFO_0_reg_n_0_[6] ),
        .I1(\BytesInFIFO_0_reg_n_0_[7] ),
        .O(FIFO_0_Full1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry_i_3
       (.I0(\BytesInFIFO_0_reg_n_0_[4] ),
        .I1(\BytesInFIFO_0_reg_n_0_[5] ),
        .O(FIFO_0_Full1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    FIFO_0_Full1_carry_i_4
       (.I0(\BytesInFIFO_0_reg_n_0_[2] ),
        .I1(\BytesInFIFO_0_reg_n_0_[3] ),
        .O(FIFO_0_Full1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    FIFO_0_Full1_carry_i_5
       (.I0(\BytesInFIFO_0_reg_n_0_[0] ),
        .I1(\BytesInFIFO_0_reg_n_0_[1] ),
        .O(FIFO_0_Full1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFF00100)) 
    FIFO_0_Full_i_1
       (.I0(FIFO_0_Full1_carry__2_n_0),
        .I1(FIFOState[0]),
        .I2(FIFOState[2]),
        .I3(FIFOState[1]),
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
    \FIFO_0_reg[0][1] 
       (.C(Clock),
        .CE(\FIFO_0[0][31]_i_2_n_0 ),
        .D(TDATA[1]),
        .Q(\FIFO_0_reg[0] [1]),
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
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][10] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[10]),
        .Q(\FIFO_0_reg[1] [10]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][11] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[11]),
        .Q(\FIFO_0_reg[1] [11]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][12] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[12]),
        .Q(\FIFO_0_reg[1] [12]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][13] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[13]),
        .Q(\FIFO_0_reg[1] [13]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][14] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[14]),
        .Q(\FIFO_0_reg[1] [14]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][15] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[15]),
        .Q(\FIFO_0_reg[1] [15]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][1] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[1]),
        .Q(\FIFO_0_reg[1] [1]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][2] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[2]),
        .Q(\FIFO_0_reg[1] [2]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][3] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[3]),
        .Q(\FIFO_0_reg[1] [3]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][4] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[4]),
        .Q(\FIFO_0_reg[1] [4]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][5] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[5]),
        .Q(\FIFO_0_reg[1] [5]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][6] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[6]),
        .Q(\FIFO_0_reg[1] [6]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][7] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[7]),
        .Q(\FIFO_0_reg[1] [7]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][8] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[8]),
        .Q(\FIFO_0_reg[1] [8]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[1][9] 
       (.C(Clock),
        .CE(\FIFO_0[1]_3 ),
        .D(TDATA[9]),
        .Q(\FIFO_0_reg[1] [9]),
        .R(\FIFO_0[1][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][0] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[0]),
        .Q(\FIFO_0_reg[2] [0]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][10] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[10]),
        .Q(\FIFO_0_reg[2] [10]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][11] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[11]),
        .Q(\FIFO_0_reg[2] [11]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][12] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[12]),
        .Q(\FIFO_0_reg[2] [12]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][13] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[13]),
        .Q(\FIFO_0_reg[2] [13]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][14] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[14]),
        .Q(\FIFO_0_reg[2] [14]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][15] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[15]),
        .Q(\FIFO_0_reg[2] [15]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][1] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[1]),
        .Q(\FIFO_0_reg[2] [1]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][2] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[2]),
        .Q(\FIFO_0_reg[2] [2]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][3] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[3]),
        .Q(\FIFO_0_reg[2] [3]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][4] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[4]),
        .Q(\FIFO_0_reg[2] [4]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][5] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[5]),
        .Q(\FIFO_0_reg[2] [5]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][6] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[6]),
        .Q(\FIFO_0_reg[2] [6]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][7] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[7]),
        .Q(\FIFO_0_reg[2] [7]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][8] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[8]),
        .Q(\FIFO_0_reg[2] [8]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_0_reg[2][9] 
       (.C(Clock),
        .CE(\FIFO_0[2]_2 ),
        .D(TDATA[9]),
        .Q(\FIFO_0_reg[2] [9]),
        .R(\FIFO_0[2][31]_i_1_n_0 ));
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
    \FIFO_0_reg[3][1] 
       (.C(Clock),
        .CE(\FIFO_0[3]_1 ),
        .D(TDATA[1]),
        .Q(\FIFO_0_reg[3] [1]),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 FIFO_1_Full1_carry
       (.CI(1'b0),
        .CO({FIFO_1_Full1_carry_n_0,NLW_FIFO_1_Full1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({FIFO_1_Full1_carry_i_1_n_0,FIFO_1_Full1_carry_i_2_n_0,FIFO_1_Full1_carry_i_3_n_0,FIFO_1_Full1_carry_i_4_n_0}),
        .O(NLW_FIFO_1_Full1_carry_O_UNCONNECTED[3:0]),
        .S({FIFO_1_Full1_carry_i_5_n_0,FIFO_1_Full1_carry_i_6_n_0,FIFO_1_Full1_carry_i_7_n_0,FIFO_1_Full1_carry_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 FIFO_1_Full1_carry__0
       (.CI(FIFO_1_Full1_carry_n_0),
        .CO({FIFO_1_Full1_carry__0_n_0,NLW_FIFO_1_Full1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({FIFO_1_Full1_carry__0_i_1_n_0,FIFO_1_Full1_carry__0_i_2_n_0,FIFO_1_Full1_carry__0_i_3_n_0,FIFO_1_Full1_carry__0_i_4_n_0}),
        .O(NLW_FIFO_1_Full1_carry__0_O_UNCONNECTED[3:0]),
        .S({FIFO_1_Full1_carry__0_i_5_n_0,FIFO_1_Full1_carry__0_i_6_n_0,FIFO_1_Full1_carry__0_i_7_n_0,FIFO_1_Full1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__0_i_1
       (.I0(\BytesInFIFO_1_reg_n_0_[14] ),
        .I1(ReadCounter_reg[14]),
        .I2(ReadCounter_reg[15]),
        .I3(\BytesInFIFO_1_reg_n_0_[15] ),
        .O(FIFO_1_Full1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__0_i_2
       (.I0(\BytesInFIFO_1_reg_n_0_[12] ),
        .I1(ReadCounter_reg[12]),
        .I2(ReadCounter_reg[13]),
        .I3(\BytesInFIFO_1_reg_n_0_[13] ),
        .O(FIFO_1_Full1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__0_i_3
       (.I0(\BytesInFIFO_1_reg_n_0_[10] ),
        .I1(ReadCounter_reg[10]),
        .I2(ReadCounter_reg[11]),
        .I3(\BytesInFIFO_1_reg_n_0_[11] ),
        .O(FIFO_1_Full1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__0_i_4
       (.I0(\BytesInFIFO_1_reg_n_0_[8] ),
        .I1(ReadCounter_reg[8]),
        .I2(ReadCounter_reg[9]),
        .I3(\BytesInFIFO_1_reg_n_0_[9] ),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 FIFO_1_Full1_carry__1
       (.CI(FIFO_1_Full1_carry__0_n_0),
        .CO({FIFO_1_Full1_carry__1_n_0,NLW_FIFO_1_Full1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({FIFO_1_Full1_carry__1_i_1_n_0,FIFO_1_Full1_carry__1_i_2_n_0,FIFO_1_Full1_carry__1_i_3_n_0,FIFO_1_Full1_carry__1_i_4_n_0}),
        .O(NLW_FIFO_1_Full1_carry__1_O_UNCONNECTED[3:0]),
        .S({FIFO_1_Full1_carry__1_i_5_n_0,FIFO_1_Full1_carry__1_i_6_n_0,FIFO_1_Full1_carry__1_i_7_n_0,FIFO_1_Full1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__1_i_1
       (.I0(\BytesInFIFO_1_reg_n_0_[22] ),
        .I1(ReadCounter_reg[22]),
        .I2(ReadCounter_reg[23]),
        .I3(\BytesInFIFO_1_reg_n_0_[23] ),
        .O(FIFO_1_Full1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__1_i_2
       (.I0(\BytesInFIFO_1_reg_n_0_[20] ),
        .I1(ReadCounter_reg[20]),
        .I2(ReadCounter_reg[21]),
        .I3(\BytesInFIFO_1_reg_n_0_[21] ),
        .O(FIFO_1_Full1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__1_i_3
       (.I0(\BytesInFIFO_1_reg_n_0_[18] ),
        .I1(ReadCounter_reg[18]),
        .I2(ReadCounter_reg[19]),
        .I3(\BytesInFIFO_1_reg_n_0_[19] ),
        .O(FIFO_1_Full1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__1_i_4
       (.I0(\BytesInFIFO_1_reg_n_0_[16] ),
        .I1(ReadCounter_reg[16]),
        .I2(ReadCounter_reg[17]),
        .I3(\BytesInFIFO_1_reg_n_0_[17] ),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 FIFO_1_Full1_carry__2
       (.CI(FIFO_1_Full1_carry__1_n_0),
        .CO({p_0_in,NLW_FIFO_1_Full1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({FIFO_1_Full1_carry__2_i_1_n_0,FIFO_1_Full1_carry__2_i_2_n_0,FIFO_1_Full1_carry__2_i_3_n_0,FIFO_1_Full1_carry__2_i_4_n_0}),
        .O(NLW_FIFO_1_Full1_carry__2_O_UNCONNECTED[3:0]),
        .S({FIFO_1_Full1_carry__2_i_5_n_0,FIFO_1_Full1_carry__2_i_6_n_0,FIFO_1_Full1_carry__2_i_7_n_0,FIFO_1_Full1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__2_i_1
       (.I0(\BytesInFIFO_1_reg_n_0_[30] ),
        .I1(ReadCounter_reg[30]),
        .I2(\BytesInFIFO_1_reg_n_0_[31] ),
        .I3(ReadCounter_reg[31]),
        .O(FIFO_1_Full1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__2_i_2
       (.I0(\BytesInFIFO_1_reg_n_0_[28] ),
        .I1(ReadCounter_reg[28]),
        .I2(ReadCounter_reg[29]),
        .I3(\BytesInFIFO_1_reg_n_0_[29] ),
        .O(FIFO_1_Full1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__2_i_3
       (.I0(\BytesInFIFO_1_reg_n_0_[26] ),
        .I1(ReadCounter_reg[26]),
        .I2(ReadCounter_reg[27]),
        .I3(\BytesInFIFO_1_reg_n_0_[27] ),
        .O(FIFO_1_Full1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry__2_i_4
       (.I0(\BytesInFIFO_1_reg_n_0_[24] ),
        .I1(ReadCounter_reg[24]),
        .I2(ReadCounter_reg[25]),
        .I3(\BytesInFIFO_1_reg_n_0_[25] ),
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
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry_i_1
       (.I0(\BytesInFIFO_1_reg_n_0_[6] ),
        .I1(ReadCounter_reg[6]),
        .I2(ReadCounter_reg[7]),
        .I3(\BytesInFIFO_1_reg_n_0_[7] ),
        .O(FIFO_1_Full1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry_i_2
       (.I0(\BytesInFIFO_1_reg_n_0_[4] ),
        .I1(ReadCounter_reg[4]),
        .I2(ReadCounter_reg[5]),
        .I3(\BytesInFIFO_1_reg_n_0_[5] ),
        .O(FIFO_1_Full1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry_i_3
       (.I0(\BytesInFIFO_1_reg_n_0_[2] ),
        .I1(ReadCounter_reg[2]),
        .I2(ReadCounter_reg[3]),
        .I3(\BytesInFIFO_1_reg_n_0_[3] ),
        .O(FIFO_1_Full1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    FIFO_1_Full1_carry_i_4
       (.I0(\BytesInFIFO_1_reg_n_0_[0] ),
        .I1(ReadCounter_reg[0]),
        .I2(ReadCounter_reg[1]),
        .I3(\BytesInFIFO_1_reg_n_0_[1] ),
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
    .INIT(64'h000AFFCF000A0000)) 
    FIFO_1_Full_i_1
       (.I0(FIFO_0_Full_reg_n_0),
        .I1(p_0_in),
        .I2(I2SState__0[1]),
        .I3(FIFO_1_Full_i_2_n_0),
        .I4(\BytesInFIFO_1[31]_i_2_n_0 ),
        .I5(FIFO_1_Full_reg_n_0),
        .O(FIFO_1_Full_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    FIFO_1_Full_i_2
       (.I0(I2SState__0[2]),
        .I1(I2SState__0[0]),
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
    \FIFO_1_reg[0][1] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[0] [1]),
        .Q(\FIFO_1_reg[0] [1]),
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
    \FIFO_1_reg[1][1] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[1] [1]),
        .Q(\FIFO_1_reg[1] [1]),
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
    \FIFO_1_reg[2][1] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[2] [1]),
        .Q(\FIFO_1_reg[2] [1]),
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
    \FIFO_1_reg[3][1] 
       (.C(Clock),
        .CE(\BytesInFIFO_1[31]_i_2_n_0 ),
        .D(\FIFO_0_reg[3] [1]),
        .Q(\FIFO_1_reg[3] [1]),
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
    .INIT(64'h00C4FFFF0FCF0000)) 
    \FSM_sequential_FIFOState[0]_i_1 
       (.I0(TVALID),
        .I1(\FSM_sequential_FIFOState[0]_i_2_n_0 ),
        .I2(FIFOState[1]),
        .I3(FIFOState[2]),
        .I4(\FSM_sequential_FIFOState[2]_i_2_n_0 ),
        .I5(FIFOState[0]),
        .O(\FSM_sequential_FIFOState[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDDFD)) 
    \FSM_sequential_FIFOState[0]_i_2 
       (.I0(FIFOState[1]),
        .I1(FIFO_1_Full_reg_n_0),
        .I2(FIFO_0_Full1_carry__2_n_0),
        .I3(FIFOState[0]),
        .O(\FSM_sequential_FIFOState[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_FIFOState[1]_i_1 
       (.I0(\FSM_sequential_FIFOState[1]_i_2_n_0 ),
        .I1(\FSM_sequential_FIFOState[2]_i_2_n_0 ),
        .I2(FIFOState[1]),
        .O(\FSM_sequential_FIFOState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E000C02020000)) 
    \FSM_sequential_FIFOState[1]_i_2 
       (.I0(TVALID),
        .I1(FIFOState[1]),
        .I2(FIFOState[2]),
        .I3(FIFO_0_Full1_carry__2_n_0),
        .I4(FIFOState[0]),
        .I5(FIFO_1_Full_reg_n_0),
        .O(\FSM_sequential_FIFOState[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0B000000)) 
    \FSM_sequential_FIFOState[2]_i_1 
       (.I0(FIFOState[0]),
        .I1(FIFO_0_Full1_carry__2_n_0),
        .I2(FIFO_1_Full_reg_n_0),
        .I3(FIFOState[1]),
        .I4(\FSM_sequential_FIFOState[2]_i_2_n_0 ),
        .I5(FIFOState[2]),
        .O(\FSM_sequential_FIFOState[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0C0F0FC50FC5)) 
    \FSM_sequential_FIFOState[2]_i_2 
       (.I0(Transmitter_n_1),
        .I1(FIFO_1_Full_reg_n_0),
        .I2(FIFOState[2]),
        .I3(FIFOState[1]),
        .I4(FIFO_0_Full_reg_n_0),
        .I5(FIFOState[0]),
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
  LUT6 #(
    .INIT(64'h444400004444F000)) 
    \FSM_sequential_I2SState[2]_i_10 
       (.I0(I2SState__0[2]),
        .I1(FIFO_0_Full_reg_n_0),
        .I2(Resetn_IBUF),
        .I3(Locked),
        .I4(I2SState__0[0]),
        .I5(I2SState__0[1]),
        .O(\FSM_sequential_I2SState[2]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \FSM_sequential_I2SState[2]_i_9 
       (.I0(I2SState__0[1]),
        .I1(I2SState__0[0]),
        .I2(I2SState__0[2]),
        .O(\FSM_sequential_I2SState[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "reset:000,loaddata:011,starttransmission:100,waitforfifo:001,waitforsync:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_I2SState_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(Transmitter_n_5),
        .Q(I2SState__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:000,loaddata:011,starttransmission:100,waitforfifo:001,waitforsync:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_I2SState_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .D(Transmitter_n_4),
        .Q(I2SState__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:000,loaddata:011,starttransmission:100,waitforfifo:001,waitforsync:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_I2SState_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .D(Transmitter_n_3),
        .Q(I2SState__0[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \MCLK_Cnt[0]_i_1 
       (.I0(MCLK_Cnt[0]),
        .O(MCLK_Cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[10]_i_1 
       (.I0(data0[10]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[11]_i_1 
       (.I0(data0[11]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[12]_i_1 
       (.I0(data0[12]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[13]_i_1 
       (.I0(data0[13]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[14]_i_1 
       (.I0(data0[14]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[15]_i_1 
       (.I0(data0[15]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[16]_i_1 
       (.I0(data0[16]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[17]_i_1 
       (.I0(data0[17]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[18]_i_1 
       (.I0(data0[18]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[20]_i_1 
       (.I0(data0[20]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[21]_i_1 
       (.I0(data0[21]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[22]_i_1 
       (.I0(data0[22]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[23]_i_1 
       (.I0(data0[23]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[24]_i_1 
       (.I0(data0[24]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[25]_i_1 
       (.I0(data0[25]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[26]_i_1 
       (.I0(data0[26]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[27]_i_1 
       (.I0(data0[27]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[28]_i_1 
       (.I0(data0[28]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[29]_i_1 
       (.I0(data0[29]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[2]_i_1 
       (.I0(data0[2]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[30]_i_1 
       (.I0(data0[30]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[31]_i_1 
       (.I0(data0[31]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[31]));
  LUT4 #(
    .INIT(16'h0001)) 
    \MCLK_Cnt[31]_i_10 
       (.I0(MCLK_Cnt[21]),
        .I1(MCLK_Cnt[19]),
        .I2(MCLK_Cnt[16]),
        .I3(MCLK_Cnt[15]),
        .O(\MCLK_Cnt[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \MCLK_Cnt[31]_i_11 
       (.I0(MCLK_Cnt[14]),
        .I1(MCLK_Cnt[13]),
        .I2(MCLK_Cnt[12]),
        .I3(MCLK_Cnt[10]),
        .O(\MCLK_Cnt[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \MCLK_Cnt[31]_i_3 
       (.I0(\MCLK_Cnt[31]_i_4_n_0 ),
        .I1(\MCLK_Cnt[31]_i_5_n_0 ),
        .I2(\MCLK_Cnt[31]_i_6_n_0 ),
        .I3(\MCLK_Cnt[31]_i_7_n_0 ),
        .O(\MCLK_Cnt[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \MCLK_Cnt[31]_i_4 
       (.I0(MCLK_Cnt[27]),
        .I1(MCLK_Cnt[28]),
        .I2(MCLK_Cnt[29]),
        .I3(MCLK_Cnt[30]),
        .I4(\MCLK_Cnt[31]_i_8_n_0 ),
        .O(\MCLK_Cnt[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \MCLK_Cnt[31]_i_5 
       (.I0(MCLK_Cnt[2]),
        .I1(MCLK_Cnt[6]),
        .I2(MCLK_Cnt[0]),
        .I3(MCLK_Cnt[1]),
        .I4(\MCLK_Cnt[31]_i_9_n_0 ),
        .O(\MCLK_Cnt[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \MCLK_Cnt[31]_i_6 
       (.I0(MCLK_Cnt[22]),
        .I1(MCLK_Cnt[24]),
        .I2(MCLK_Cnt[25]),
        .I3(MCLK_Cnt[31]),
        .I4(\MCLK_Cnt[31]_i_10_n_0 ),
        .O(\MCLK_Cnt[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \MCLK_Cnt[31]_i_7 
       (.I0(MCLK_Cnt[5]),
        .I1(MCLK_Cnt[9]),
        .I2(MCLK_Cnt[3]),
        .I3(MCLK_Cnt[4]),
        .I4(\MCLK_Cnt[31]_i_11_n_0 ),
        .O(\MCLK_Cnt[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \MCLK_Cnt[31]_i_8 
       (.I0(MCLK_Cnt[26]),
        .I1(MCLK_Cnt[23]),
        .I2(MCLK_Cnt[20]),
        .I3(MCLK_Cnt[18]),
        .O(\MCLK_Cnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \MCLK_Cnt[31]_i_9 
       (.I0(MCLK_Cnt[17]),
        .I1(MCLK_Cnt[11]),
        .I2(MCLK_Cnt[8]),
        .I3(MCLK_Cnt[7]),
        .O(\MCLK_Cnt[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[3]_i_1 
       (.I0(data0[3]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[4]_i_1 
       (.I0(data0[4]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[5]_i_1 
       (.I0(data0[5]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[6]_i_1 
       (.I0(data0[6]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[7]_i_1 
       (.I0(data0[7]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[8]_i_1 
       (.I0(data0[8]),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .O(MCLK_Cnt_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[12]_i_2 
       (.CI(\MCLK_Cnt_reg[8]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[12]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[16]_i_2 
       (.CI(\MCLK_Cnt_reg[12]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[16]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[20]_i_2 
       (.CI(\MCLK_Cnt_reg[16]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[20]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[24]_i_2 
       (.CI(\MCLK_Cnt_reg[20]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[24]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[28]_i_2 
       (.CI(\MCLK_Cnt_reg[24]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[28]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[28]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[31]_i_2 
       (.CI(\MCLK_Cnt_reg[28]_i_2_n_0 ),
        .CO(\NLW_MCLK_Cnt_reg[31]_i_2_CO_UNCONNECTED [3:0]),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\MCLK_Cnt_reg[4]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[8]_i_2 
       (.CI(\MCLK_Cnt_reg[4]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[8]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
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
    .INIT(8'h08)) 
    \ReadCounter[0]_i_1 
       (.I0(I2SState__0[1]),
        .I1(I2SState__0[0]),
        .I2(I2SState__0[2]),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \ReadCounter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\ReadCounter_reg[0]_i_2_n_0 ,\NLW_ReadCounter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \ReadCounter_reg[12]_i_1 
       (.CI(\ReadCounter_reg[8]_i_1_n_0 ),
        .CO({\ReadCounter_reg[12]_i_1_n_0 ,\NLW_ReadCounter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \ReadCounter_reg[16]_i_1 
       (.CI(\ReadCounter_reg[12]_i_1_n_0 ),
        .CO({\ReadCounter_reg[16]_i_1_n_0 ,\NLW_ReadCounter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \ReadCounter_reg[20]_i_1 
       (.CI(\ReadCounter_reg[16]_i_1_n_0 ),
        .CO({\ReadCounter_reg[20]_i_1_n_0 ,\NLW_ReadCounter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \ReadCounter_reg[24]_i_1 
       (.CI(\ReadCounter_reg[20]_i_1_n_0 ),
        .CO({\ReadCounter_reg[24]_i_1_n_0 ,\NLW_ReadCounter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \ReadCounter_reg[28]_i_1 
       (.CI(\ReadCounter_reg[24]_i_1_n_0 ),
        .CO(\NLW_ReadCounter_reg[28]_i_1_CO_UNCONNECTED [3:0]),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \ReadCounter_reg[4]_i_1 
       (.CI(\ReadCounter_reg[0]_i_2_n_0 ),
        .CO({\ReadCounter_reg[4]_i_1_n_0 ,\NLW_ReadCounter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \ReadCounter_reg[8]_i_1 
       (.CI(\ReadCounter_reg[4]_i_1_n_0 ),
        .CO({\ReadCounter_reg[8]_i_1_n_0 ,\NLW_ReadCounter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
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
  LUT3 #(
    .INIT(8'h80)) 
    SCLK_OBUF_inst_i_1
       (.I0(AudioClock_reg_0),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(SCLK_OBUF));
  LUT5 #(
    .INIT(32'hFFE00020)) 
    TREADY_Int_i_1
       (.I0(TVALID),
        .I1(FIFOState[1]),
        .I2(FIFOState[0]),
        .I3(FIFOState[2]),
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
       (.FIFO_1_Full_reg(Transmitter_n_4),
        .\FSM_sequential_I2SState_reg[0] (Transmitter_n_3),
        .\FSM_sequential_I2SState_reg[0]_0 (\FSM_sequential_I2SState[2]_i_9_n_0 ),
        .\FSM_sequential_I2SState_reg[0]_1 (\FSM_sequential_I2SState[2]_i_10_n_0 ),
        .\FSM_sequential_I2SState_reg[1] (Transmitter_n_5),
        .\FSM_sequential_I2SState_reg[1]_0 (FIFO_1_Full_reg_n_0),
        .I2SState__0(I2SState__0),
        .LRCLK_OBUF(LRCLK_OBUF),
        .Locked(Locked),
        .Q({NLW_Transmitter_Q_UNCONNECTED[31:16],Data[15:0]}),
        .ReadCounter(ReadCounter),
        .Resetn_IBUF(Resetn_IBUF),
        .SD_Int_reg_0(SD_Int_reg),
        .SD_OBUF(SD_OBUF),
        .SR(Transmitter_n_1));
endmodule

module I2S_Transmitter
   (LRCLK_OBUF,
    SR,
    SD_OBUF,
    \FSM_sequential_I2SState_reg[0] ,
    FIFO_1_Full_reg,
    \FSM_sequential_I2SState_reg[1] ,
    SD_Int_reg_0,
    Locked,
    Resetn_IBUF,
    \FSM_sequential_I2SState_reg[0]_0 ,
    ReadCounter,
    \FSM_sequential_I2SState_reg[0]_1 ,
    I2SState__0,
    Q,
    \FSM_sequential_I2SState_reg[1]_0 );
  output LRCLK_OBUF;
  output [0:0]SR;
  output SD_OBUF;
  output \FSM_sequential_I2SState_reg[0] ;
  output FIFO_1_Full_reg;
  output \FSM_sequential_I2SState_reg[1] ;
  input SD_Int_reg_0;
  input Locked;
  input Resetn_IBUF;
  input \FSM_sequential_I2SState_reg[0]_0 ;
  input ReadCounter;
  input \FSM_sequential_I2SState_reg[0]_1 ;
  input [2:0]I2SState__0;
  input [31:0]Q;
  input \FSM_sequential_I2SState_reg[1]_0 ;

  wire [31:0]BitCounter;
  wire BitCounter_Int1;
  wire BitCounter_Int1_carry__0_i_1_n_0;
  wire BitCounter_Int1_carry__0_i_2_n_0;
  wire BitCounter_Int1_carry__0_i_3_n_0;
  wire BitCounter_Int1_carry__0_i_4_n_0;
  wire BitCounter_Int1_carry__0_n_0;
  wire BitCounter_Int1_carry__1_i_1_n_0;
  wire BitCounter_Int1_carry__1_i_2_n_0;
  wire BitCounter_Int1_carry__1_i_3_n_0;
  wire BitCounter_Int1_carry__1_i_4_n_0;
  wire BitCounter_Int1_carry__1_n_0;
  wire BitCounter_Int1_carry__2_i_1_n_0;
  wire BitCounter_Int1_carry__2_i_2_n_0;
  wire BitCounter_Int1_carry__2_i_3_n_0;
  wire BitCounter_Int1_carry__2_i_4_n_0;
  wire BitCounter_Int1_carry_i_1_n_0;
  wire BitCounter_Int1_carry_i_2_n_0;
  wire BitCounter_Int1_carry_i_3_n_0;
  wire BitCounter_Int1_carry_i_4_n_0;
  wire BitCounter_Int1_carry_i_5_n_0;
  wire BitCounter_Int1_carry_i_6_n_0;
  wire BitCounter_Int1_carry_i_7_n_0;
  wire BitCounter_Int1_carry_n_0;
  wire \BitCounter_Int[0]_i_1_n_0 ;
  wire \BitCounter_Int[0]_i_3_n_0 ;
  wire \BitCounter_Int_reg[0]_i_2_n_0 ;
  wire \BitCounter_Int_reg[0]_i_2_n_4 ;
  wire \BitCounter_Int_reg[0]_i_2_n_5 ;
  wire \BitCounter_Int_reg[0]_i_2_n_6 ;
  wire \BitCounter_Int_reg[0]_i_2_n_7 ;
  wire \BitCounter_Int_reg[12]_i_1_n_0 ;
  wire \BitCounter_Int_reg[12]_i_1_n_4 ;
  wire \BitCounter_Int_reg[12]_i_1_n_5 ;
  wire \BitCounter_Int_reg[12]_i_1_n_6 ;
  wire \BitCounter_Int_reg[12]_i_1_n_7 ;
  wire \BitCounter_Int_reg[16]_i_1_n_0 ;
  wire \BitCounter_Int_reg[16]_i_1_n_4 ;
  wire \BitCounter_Int_reg[16]_i_1_n_5 ;
  wire \BitCounter_Int_reg[16]_i_1_n_6 ;
  wire \BitCounter_Int_reg[16]_i_1_n_7 ;
  wire \BitCounter_Int_reg[20]_i_1_n_0 ;
  wire \BitCounter_Int_reg[20]_i_1_n_4 ;
  wire \BitCounter_Int_reg[20]_i_1_n_5 ;
  wire \BitCounter_Int_reg[20]_i_1_n_6 ;
  wire \BitCounter_Int_reg[20]_i_1_n_7 ;
  wire \BitCounter_Int_reg[24]_i_1_n_0 ;
  wire \BitCounter_Int_reg[24]_i_1_n_4 ;
  wire \BitCounter_Int_reg[24]_i_1_n_5 ;
  wire \BitCounter_Int_reg[24]_i_1_n_6 ;
  wire \BitCounter_Int_reg[24]_i_1_n_7 ;
  wire \BitCounter_Int_reg[28]_i_1_n_4 ;
  wire \BitCounter_Int_reg[28]_i_1_n_5 ;
  wire \BitCounter_Int_reg[28]_i_1_n_6 ;
  wire \BitCounter_Int_reg[28]_i_1_n_7 ;
  wire \BitCounter_Int_reg[4]_i_1_n_0 ;
  wire \BitCounter_Int_reg[4]_i_1_n_4 ;
  wire \BitCounter_Int_reg[4]_i_1_n_5 ;
  wire \BitCounter_Int_reg[4]_i_1_n_6 ;
  wire \BitCounter_Int_reg[4]_i_1_n_7 ;
  wire \BitCounter_Int_reg[8]_i_1_n_0 ;
  wire \BitCounter_Int_reg[8]_i_1_n_4 ;
  wire \BitCounter_Int_reg[8]_i_1_n_5 ;
  wire \BitCounter_Int_reg[8]_i_1_n_6 ;
  wire \BitCounter_Int_reg[8]_i_1_n_7 ;
  wire FIFO_1_Full_reg;
  wire \FSM_sequential_I2SState[2]_i_11_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_12_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_13_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_14_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_15_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_16_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_2_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_3_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_4_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_5_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_6_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_7_n_0 ;
  wire \FSM_sequential_I2SState[2]_i_8_n_0 ;
  wire \FSM_sequential_I2SState_reg[0] ;
  wire \FSM_sequential_I2SState_reg[0]_0 ;
  wire \FSM_sequential_I2SState_reg[0]_1 ;
  wire \FSM_sequential_I2SState_reg[1] ;
  wire \FSM_sequential_I2SState_reg[1]_0 ;
  wire [2:0]I2SState__0;
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
  wire LRCLK_Int_reg_i_2_n_5;
  wire LRCLK_Int_reg_i_4_n_0;
  wire LRCLK_Int_reg_i_7_n_0;
  wire LRCLK_OBUF;
  wire Locked;
  wire [31:0]Q;
  wire ReadCounter;
  wire Resetn_IBUF;
  wire SD_Int_reg_0;
  wire SD_OBUF;
  wire [0:0]SR;
  wire [31:0]ShiftReg;
  wire [31:1]data1;
  wire p_1_in;
  wire [2:0]NLW_BitCounter_Int1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_BitCounter_Int1_carry_O_UNCONNECTED;
  wire [2:0]NLW_BitCounter_Int1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_BitCounter_Int1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_BitCounter_Int1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_BitCounter_Int1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_BitCounter_Int1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_BitCounter_Int1_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_BitCounter_Int_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_BitCounter_Int_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_BitCounter_Int_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_BitCounter_Int_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_BitCounter_Int_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_BitCounter_Int_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_BitCounter_Int_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_BitCounter_Int_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_LRCLK_Int_reg_i_12_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Int_reg_i_12_O_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Int_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Int_reg_i_2_O_UNCONNECTED;
  wire [2:0]NLW_LRCLK_Int_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Int_reg_i_4_O_UNCONNECTED;
  wire [2:0]NLW_LRCLK_Int_reg_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Int_reg_i_7_O_UNCONNECTED;

  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 BitCounter_Int1_carry
       (.CI(1'b0),
        .CO({BitCounter_Int1_carry_n_0,NLW_BitCounter_Int1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,BitCounter_Int1_carry_i_1_n_0,BitCounter_Int1_carry_i_2_n_0,BitCounter_Int1_carry_i_3_n_0}),
        .O(NLW_BitCounter_Int1_carry_O_UNCONNECTED[3:0]),
        .S({BitCounter_Int1_carry_i_4_n_0,BitCounter_Int1_carry_i_5_n_0,BitCounter_Int1_carry_i_6_n_0,BitCounter_Int1_carry_i_7_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 BitCounter_Int1_carry__0
       (.CI(BitCounter_Int1_carry_n_0),
        .CO({BitCounter_Int1_carry__0_n_0,NLW_BitCounter_Int1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_BitCounter_Int1_carry__0_O_UNCONNECTED[3:0]),
        .S({BitCounter_Int1_carry__0_i_1_n_0,BitCounter_Int1_carry__0_i_2_n_0,BitCounter_Int1_carry__0_i_3_n_0,BitCounter_Int1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__0_i_1
       (.I0(BitCounter[14]),
        .I1(BitCounter[15]),
        .O(BitCounter_Int1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__0_i_2
       (.I0(BitCounter[12]),
        .I1(BitCounter[13]),
        .O(BitCounter_Int1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__0_i_3
       (.I0(BitCounter[10]),
        .I1(BitCounter[11]),
        .O(BitCounter_Int1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__0_i_4
       (.I0(BitCounter[8]),
        .I1(BitCounter[9]),
        .O(BitCounter_Int1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 BitCounter_Int1_carry__1
       (.CI(BitCounter_Int1_carry__0_n_0),
        .CO({BitCounter_Int1_carry__1_n_0,NLW_BitCounter_Int1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_BitCounter_Int1_carry__1_O_UNCONNECTED[3:0]),
        .S({BitCounter_Int1_carry__1_i_1_n_0,BitCounter_Int1_carry__1_i_2_n_0,BitCounter_Int1_carry__1_i_3_n_0,BitCounter_Int1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__1_i_1
       (.I0(BitCounter[23]),
        .I1(BitCounter[22]),
        .O(BitCounter_Int1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__1_i_2
       (.I0(BitCounter[21]),
        .I1(BitCounter[20]),
        .O(BitCounter_Int1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__1_i_3
       (.I0(BitCounter[19]),
        .I1(BitCounter[18]),
        .O(BitCounter_Int1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__1_i_4
       (.I0(BitCounter[17]),
        .I1(BitCounter[16]),
        .O(BitCounter_Int1_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 BitCounter_Int1_carry__2
       (.CI(BitCounter_Int1_carry__1_n_0),
        .CO({BitCounter_Int1,NLW_BitCounter_Int1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({BitCounter[31],1'b0,1'b0,1'b0}),
        .O(NLW_BitCounter_Int1_carry__2_O_UNCONNECTED[3:0]),
        .S({BitCounter_Int1_carry__2_i_1_n_0,BitCounter_Int1_carry__2_i_2_n_0,BitCounter_Int1_carry__2_i_3_n_0,BitCounter_Int1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__2_i_1
       (.I0(BitCounter[31]),
        .I1(BitCounter[30]),
        .O(BitCounter_Int1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__2_i_2
       (.I0(BitCounter[29]),
        .I1(BitCounter[28]),
        .O(BitCounter_Int1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__2_i_3
       (.I0(BitCounter[27]),
        .I1(BitCounter[26]),
        .O(BitCounter_Int1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry__2_i_4
       (.I0(BitCounter[25]),
        .I1(BitCounter[24]),
        .O(BitCounter_Int1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry_i_1
       (.I0(BitCounter[5]),
        .I1(BitCounter[4]),
        .O(BitCounter_Int1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    BitCounter_Int1_carry_i_2
       (.I0(BitCounter[3]),
        .I1(BitCounter[2]),
        .O(BitCounter_Int1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    BitCounter_Int1_carry_i_3
       (.I0(BitCounter[1]),
        .I1(BitCounter[0]),
        .O(BitCounter_Int1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    BitCounter_Int1_carry_i_4
       (.I0(BitCounter[7]),
        .I1(BitCounter[6]),
        .O(BitCounter_Int1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    BitCounter_Int1_carry_i_5
       (.I0(BitCounter[4]),
        .I1(BitCounter[5]),
        .O(BitCounter_Int1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    BitCounter_Int1_carry_i_6
       (.I0(BitCounter[2]),
        .I1(BitCounter[3]),
        .O(BitCounter_Int1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    BitCounter_Int1_carry_i_7
       (.I0(BitCounter[0]),
        .I1(BitCounter[1]),
        .O(BitCounter_Int1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    \BitCounter_Int[0]_i_1 
       (.I0(Locked),
        .I1(Resetn_IBUF),
        .I2(BitCounter_Int1),
        .O(\BitCounter_Int[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \BitCounter_Int[0]_i_3 
       (.I0(BitCounter[0]),
        .O(\BitCounter_Int[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[0] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_7 ),
        .Q(BitCounter[0]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\BitCounter_Int_reg[0]_i_2_n_0 ,\NLW_BitCounter_Int_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\BitCounter_Int_reg[0]_i_2_n_4 ,\BitCounter_Int_reg[0]_i_2_n_5 ,\BitCounter_Int_reg[0]_i_2_n_6 ,\BitCounter_Int_reg[0]_i_2_n_7 }),
        .S({BitCounter[3:1],\BitCounter_Int[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[10] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_5 ),
        .Q(BitCounter[10]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[11] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_4 ),
        .Q(BitCounter[11]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[12] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_7 ),
        .Q(BitCounter[12]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[12]_i_1 
       (.CI(\BitCounter_Int_reg[8]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[12]_i_1_n_0 ,\NLW_BitCounter_Int_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[12]_i_1_n_4 ,\BitCounter_Int_reg[12]_i_1_n_5 ,\BitCounter_Int_reg[12]_i_1_n_6 ,\BitCounter_Int_reg[12]_i_1_n_7 }),
        .S(BitCounter[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[13] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_6 ),
        .Q(BitCounter[13]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[14] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_5 ),
        .Q(BitCounter[14]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[15] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_4 ),
        .Q(BitCounter[15]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[16] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_7 ),
        .Q(BitCounter[16]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[16]_i_1 
       (.CI(\BitCounter_Int_reg[12]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[16]_i_1_n_0 ,\NLW_BitCounter_Int_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[16]_i_1_n_4 ,\BitCounter_Int_reg[16]_i_1_n_5 ,\BitCounter_Int_reg[16]_i_1_n_6 ,\BitCounter_Int_reg[16]_i_1_n_7 }),
        .S(BitCounter[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[17] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_6 ),
        .Q(BitCounter[17]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[18] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_5 ),
        .Q(BitCounter[18]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[19] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_4 ),
        .Q(BitCounter[19]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[1] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_6 ),
        .Q(BitCounter[1]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[20] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_7 ),
        .Q(BitCounter[20]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[20]_i_1 
       (.CI(\BitCounter_Int_reg[16]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[20]_i_1_n_0 ,\NLW_BitCounter_Int_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[20]_i_1_n_4 ,\BitCounter_Int_reg[20]_i_1_n_5 ,\BitCounter_Int_reg[20]_i_1_n_6 ,\BitCounter_Int_reg[20]_i_1_n_7 }),
        .S(BitCounter[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[21] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_6 ),
        .Q(BitCounter[21]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[22] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_5 ),
        .Q(BitCounter[22]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[23] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_4 ),
        .Q(BitCounter[23]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[24] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_7 ),
        .Q(BitCounter[24]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[24]_i_1 
       (.CI(\BitCounter_Int_reg[20]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[24]_i_1_n_0 ,\NLW_BitCounter_Int_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[24]_i_1_n_4 ,\BitCounter_Int_reg[24]_i_1_n_5 ,\BitCounter_Int_reg[24]_i_1_n_6 ,\BitCounter_Int_reg[24]_i_1_n_7 }),
        .S(BitCounter[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[25] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_6 ),
        .Q(BitCounter[25]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[26] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_5 ),
        .Q(BitCounter[26]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[27] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_4 ),
        .Q(BitCounter[27]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[28] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_7 ),
        .Q(BitCounter[28]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[28]_i_1 
       (.CI(\BitCounter_Int_reg[24]_i_1_n_0 ),
        .CO(\NLW_BitCounter_Int_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[28]_i_1_n_4 ,\BitCounter_Int_reg[28]_i_1_n_5 ,\BitCounter_Int_reg[28]_i_1_n_6 ,\BitCounter_Int_reg[28]_i_1_n_7 }),
        .S(BitCounter[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[29] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_6 ),
        .Q(BitCounter[29]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[2] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_5 ),
        .Q(BitCounter[2]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[30] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_5 ),
        .Q(BitCounter[30]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[31] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_4 ),
        .Q(BitCounter[31]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[3] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_4 ),
        .Q(BitCounter[3]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[4] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_7 ),
        .Q(BitCounter[4]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[4]_i_1 
       (.CI(\BitCounter_Int_reg[0]_i_2_n_0 ),
        .CO({\BitCounter_Int_reg[4]_i_1_n_0 ,\NLW_BitCounter_Int_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[4]_i_1_n_4 ,\BitCounter_Int_reg[4]_i_1_n_5 ,\BitCounter_Int_reg[4]_i_1_n_6 ,\BitCounter_Int_reg[4]_i_1_n_7 }),
        .S(BitCounter[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[5] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_6 ),
        .Q(BitCounter[5]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[6] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_5 ),
        .Q(BitCounter[6]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[7] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_4 ),
        .Q(BitCounter[7]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[8] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_7 ),
        .Q(BitCounter[8]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[8]_i_1 
       (.CI(\BitCounter_Int_reg[4]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[8]_i_1_n_0 ,\NLW_BitCounter_Int_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[8]_i_1_n_4 ,\BitCounter_Int_reg[8]_i_1_n_5 ,\BitCounter_Int_reg[8]_i_1_n_6 ,\BitCounter_Int_reg[8]_i_1_n_7 }),
        .S(BitCounter[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[9] 
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_6 ),
        .Q(BitCounter[9]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF02FF0000)) 
    \FSM_sequential_I2SState[0]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(I2SState__0[1]),
        .I2(\FSM_sequential_I2SState_reg[1]_0 ),
        .I3(I2SState__0[2]),
        .I4(\FSM_sequential_I2SState[2]_i_3_n_0 ),
        .I5(I2SState__0[0]),
        .O(\FSM_sequential_I2SState_reg[1] ));
  LUT6 #(
    .INIT(64'h000FFFFF0F800000)) 
    \FSM_sequential_I2SState[1]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(\FSM_sequential_I2SState_reg[1]_0 ),
        .I2(I2SState__0[2]),
        .I3(I2SState__0[0]),
        .I4(\FSM_sequential_I2SState[2]_i_3_n_0 ),
        .I5(I2SState__0[1]),
        .O(FIFO_1_Full_reg));
  LUT5 #(
    .INIT(32'h01FFC000)) 
    \FSM_sequential_I2SState[2]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(I2SState__0[0]),
        .I2(I2SState__0[1]),
        .I3(\FSM_sequential_I2SState[2]_i_3_n_0 ),
        .I4(I2SState__0[2]),
        .O(\FSM_sequential_I2SState_reg[0] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_I2SState[2]_i_11 
       (.I0(BitCounter[14]),
        .I1(BitCounter[15]),
        .I2(BitCounter[8]),
        .I3(BitCounter[9]),
        .O(\FSM_sequential_I2SState[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_I2SState[2]_i_12 
       (.I0(BitCounter[23]),
        .I1(BitCounter[22]),
        .I2(BitCounter[21]),
        .I3(BitCounter[20]),
        .O(\FSM_sequential_I2SState[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_I2SState[2]_i_13 
       (.I0(BitCounter[17]),
        .I1(BitCounter[16]),
        .I2(BitCounter[19]),
        .I3(BitCounter[18]),
        .O(\FSM_sequential_I2SState[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_I2SState[2]_i_14 
       (.I0(BitCounter[27]),
        .I1(BitCounter[26]),
        .I2(BitCounter[25]),
        .I3(BitCounter[24]),
        .O(\FSM_sequential_I2SState[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_I2SState[2]_i_15 
       (.I0(BitCounter[31]),
        .I1(BitCounter[30]),
        .I2(BitCounter[29]),
        .I3(BitCounter[28]),
        .O(\FSM_sequential_I2SState[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \FSM_sequential_I2SState[2]_i_16 
       (.I0(BitCounter[3]),
        .I1(BitCounter[2]),
        .I2(BitCounter[6]),
        .I3(BitCounter[7]),
        .I4(BitCounter[0]),
        .I5(BitCounter[1]),
        .O(\FSM_sequential_I2SState[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_sequential_I2SState[2]_i_2 
       (.I0(\FSM_sequential_I2SState[2]_i_4_n_0 ),
        .I1(BitCounter[4]),
        .I2(BitCounter[5]),
        .I3(\FSM_sequential_I2SState[2]_i_5_n_0 ),
        .I4(\FSM_sequential_I2SState[2]_i_6_n_0 ),
        .I5(\FSM_sequential_I2SState[2]_i_7_n_0 ),
        .O(\FSM_sequential_I2SState[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF40)) 
    \FSM_sequential_I2SState[2]_i_3 
       (.I0(\FSM_sequential_I2SState[2]_i_4_n_0 ),
        .I1(\FSM_sequential_I2SState[2]_i_8_n_0 ),
        .I2(\FSM_sequential_I2SState[2]_i_7_n_0 ),
        .I3(\FSM_sequential_I2SState_reg[0]_0 ),
        .I4(ReadCounter),
        .I5(\FSM_sequential_I2SState_reg[0]_1 ),
        .O(\FSM_sequential_I2SState[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_I2SState[2]_i_4 
       (.I0(BitCounter[11]),
        .I1(BitCounter[10]),
        .I2(BitCounter[13]),
        .I3(BitCounter[12]),
        .I4(\FSM_sequential_I2SState[2]_i_11_n_0 ),
        .O(\FSM_sequential_I2SState[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_I2SState[2]_i_5 
       (.I0(BitCounter[6]),
        .I1(BitCounter[7]),
        .O(\FSM_sequential_I2SState[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_I2SState[2]_i_6 
       (.I0(BitCounter[1]),
        .I1(BitCounter[0]),
        .I2(BitCounter[3]),
        .I3(BitCounter[2]),
        .O(\FSM_sequential_I2SState[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_I2SState[2]_i_7 
       (.I0(\FSM_sequential_I2SState[2]_i_12_n_0 ),
        .I1(\FSM_sequential_I2SState[2]_i_13_n_0 ),
        .I2(\FSM_sequential_I2SState[2]_i_14_n_0 ),
        .I3(\FSM_sequential_I2SState[2]_i_15_n_0 ),
        .O(\FSM_sequential_I2SState[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_sequential_I2SState[2]_i_8 
       (.I0(\FSM_sequential_I2SState[2]_i_16_n_0 ),
        .I1(BitCounter[4]),
        .I2(BitCounter[5]),
        .I3(I2SState__0[1]),
        .I4(I2SState__0[2]),
        .O(\FSM_sequential_I2SState[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    LRCLK_Int_i_1
       (.I0(Resetn_IBUF),
        .I1(Locked),
        .O(SR));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_10
       (.I0(BitCounter[23]),
        .I1(BitCounter[22]),
        .O(LRCLK_Int_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_11
       (.I0(BitCounter[21]),
        .I1(BitCounter[20]),
        .O(LRCLK_Int_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_13
       (.I0(BitCounter[19]),
        .I1(BitCounter[18]),
        .O(LRCLK_Int_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_14
       (.I0(BitCounter[17]),
        .I1(BitCounter[16]),
        .O(LRCLK_Int_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_15
       (.I0(BitCounter[14]),
        .I1(BitCounter[15]),
        .O(LRCLK_Int_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_16
       (.I0(BitCounter[12]),
        .I1(BitCounter[13]),
        .O(LRCLK_Int_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_17
       (.I0(BitCounter[5]),
        .I1(BitCounter[4]),
        .O(LRCLK_Int_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_18
       (.I0(BitCounter[10]),
        .I1(BitCounter[11]),
        .O(LRCLK_Int_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_19
       (.I0(BitCounter[8]),
        .I1(BitCounter[9]),
        .O(LRCLK_Int_i_19_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_20
       (.I0(BitCounter[7]),
        .I1(BitCounter[6]),
        .O(LRCLK_Int_i_20_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LRCLK_Int_i_21
       (.I0(BitCounter[4]),
        .I1(BitCounter[5]),
        .O(LRCLK_Int_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_5
       (.I0(BitCounter[31]),
        .I1(BitCounter[30]),
        .O(LRCLK_Int_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_6
       (.I0(BitCounter[29]),
        .I1(BitCounter[28]),
        .O(LRCLK_Int_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_8
       (.I0(BitCounter[27]),
        .I1(BitCounter[26]),
        .O(LRCLK_Int_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Int_i_9
       (.I0(BitCounter[25]),
        .I1(BitCounter[24]),
        .O(LRCLK_Int_i_9_n_0));
  FDSE #(
    .INIT(1'b1)) 
    LRCLK_Int_reg
       (.C(SD_Int_reg_0),
        .CE(1'b1),
        .D(LRCLK_Int_reg_i_2_n_5),
        .Q(LRCLK_OBUF),
        .S(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 LRCLK_Int_reg_i_12
       (.CI(1'b0),
        .CO({LRCLK_Int_reg_i_12_n_0,NLW_LRCLK_Int_reg_i_12_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,LRCLK_Int_i_17_n_0}),
        .O(NLW_LRCLK_Int_reg_i_12_O_UNCONNECTED[3:0]),
        .S({LRCLK_Int_i_18_n_0,LRCLK_Int_i_19_n_0,LRCLK_Int_i_20_n_0,LRCLK_Int_i_21_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 LRCLK_Int_reg_i_2
       (.CI(LRCLK_Int_reg_i_4_n_0),
        .CO(NLW_LRCLK_Int_reg_i_2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,BitCounter[31],1'b0}),
        .O({NLW_LRCLK_Int_reg_i_2_O_UNCONNECTED[3],LRCLK_Int_reg_i_2_n_5,NLW_LRCLK_Int_reg_i_2_O_UNCONNECTED[1:0]}),
        .S({1'b0,1'b1,LRCLK_Int_i_5_n_0,LRCLK_Int_i_6_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 LRCLK_Int_reg_i_4
       (.CI(LRCLK_Int_reg_i_7_n_0),
        .CO({LRCLK_Int_reg_i_4_n_0,NLW_LRCLK_Int_reg_i_4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_Int_reg_i_4_O_UNCONNECTED[3:0]),
        .S({LRCLK_Int_i_8_n_0,LRCLK_Int_i_9_n_0,LRCLK_Int_i_10_n_0,LRCLK_Int_i_11_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 LRCLK_Int_reg_i_7
       (.CI(LRCLK_Int_reg_i_12_n_0),
        .CO({LRCLK_Int_reg_i_7_n_0,NLW_LRCLK_Int_reg_i_7_CO_UNCONNECTED[2:0]}),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ShiftReg[0]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .O(ShiftReg[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[10]_i_1 
       (.I0(Q[10]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[10]),
        .O(ShiftReg[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[11]_i_1 
       (.I0(Q[11]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[11]),
        .O(ShiftReg[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[12]_i_1 
       (.I0(Q[12]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[12]),
        .O(ShiftReg[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[13]_i_1 
       (.I0(Q[13]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[13]),
        .O(ShiftReg[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[14]_i_1 
       (.I0(Q[14]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[14]),
        .O(ShiftReg[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[15]_i_1 
       (.I0(Q[15]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[15]),
        .O(ShiftReg[15]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[16]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[16]),
        .O(ShiftReg[16]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[17]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[17]),
        .O(ShiftReg[17]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[18]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[18]),
        .O(ShiftReg[18]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[19]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[19]),
        .O(ShiftReg[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[1]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[1]),
        .O(ShiftReg[1]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[20]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[20]),
        .O(ShiftReg[20]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[21]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[21]),
        .O(ShiftReg[21]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[22]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[22]),
        .O(ShiftReg[22]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[23]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[23]),
        .O(ShiftReg[23]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[24]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[24]),
        .O(ShiftReg[24]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[25]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[25]),
        .O(ShiftReg[25]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[26]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[26]),
        .O(ShiftReg[26]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[27]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[27]),
        .O(ShiftReg[27]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[28]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[28]),
        .O(ShiftReg[28]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[29]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[29]),
        .O(ShiftReg[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[2]_i_1 
       (.I0(Q[2]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[2]),
        .O(ShiftReg[2]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[30]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[30]),
        .O(ShiftReg[30]));
  (* OPT_MODIFIED = "PROPCONST " *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ShiftReg[31]_i_1 
       (.I0(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I1(data1[31]),
        .O(ShiftReg[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[3]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[3]),
        .O(ShiftReg[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[4]_i_1 
       (.I0(Q[4]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[4]),
        .O(ShiftReg[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[5]_i_1 
       (.I0(Q[5]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[5]),
        .O(ShiftReg[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[6]_i_1 
       (.I0(Q[6]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[6]),
        .O(ShiftReg[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[7]_i_1 
       (.I0(Q[7]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[7]),
        .O(ShiftReg[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[8]_i_1 
       (.I0(Q[8]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[8]),
        .O(ShiftReg[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ShiftReg[9]_i_1 
       (.I0(Q[9]),
        .I1(\FSM_sequential_I2SState[2]_i_2_n_0 ),
        .I2(data1[9]),
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

(* ECO_CHECKSUM = "1d97d773" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) (* WIDTH = "16" *) 
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
  wire Clock_IBUF_BUFG;
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
  wire [31:16]NLW_AudioData_TDATA_UNCONNECTED;
  wire [7:0]NLW_AudioData_TID_UNCONNECTED;
  wire [31:16]NLW_I2S_Transmitter_TDATA_UNCONNECTED;

initial begin
 $sdf_annotate("Testbench_time_impl.sdf",,,,"tool_control");
end
  OBUF Active_OBUF_inst
       (.I(Active_OBUF),
        .O(Active));
  LUT2 #(
    .INIT(4'h8)) 
    Active_OBUF_inst_i_1
       (.I0(Locked),
        .I1(Resetn_IBUF),
        .O(Active_OBUF));
  (* hw_handoff = "DataROM.hwdef" *) 
  DataROM AudioData
       (.ACLK(Clock_IBUF_BUFG),
        .ARESETN(Active_OBUF),
        .TDATA({NLW_AudioData_TDATA_UNCONNECTED[31:16],TDATA[15:0]}),
        .TID(NLW_AudioData_TID_UNCONNECTED[7:0]),
        .TLAST(Last_OBUF),
        .TREADY(TREADY),
        .TVALID(TVALID));
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  BUFG Clock_IBUF_BUFG_inst
       (.I(Clock_IBUF),
        .O(Clock_IBUF_BUFG));
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO BUFG_OPT " *) 
  IBUF Clock_IBUF_inst
       (.I(Clock),
        .O(Clock_IBUF));
  I2S I2S_Transmitter
       (.AudioClock_reg_0(I2S_Transmitter_n_2),
        .CLK(MCLK_OBUF_BUFG),
        .Clock(Clock_IBUF_BUFG),
        .LRCLK_OBUF(LRCLK_OBUF),
        .Locked(Locked),
        .Resetn_IBUF(Resetn_IBUF),
        .SCLK_OBUF(SCLK_OBUF),
        .SD_Int_reg(LRCLK_Int_reg_i_3_n_0),
        .SD_OBUF(SD_OBUF),
        .TDATA({NLW_I2S_Transmitter_TDATA_UNCONNECTED[31:16],TDATA[15:0]}),
        .TREADY(TREADY),
        .TVALID(TVALID));
  (* hw_handoff = "ClockGeneration.hwdef" *) 
  ClockGeneration InputClock
       (.ClockIn(Clock_IBUF_BUFG),
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
