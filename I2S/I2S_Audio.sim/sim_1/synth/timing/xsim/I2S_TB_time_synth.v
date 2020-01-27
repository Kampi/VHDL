// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Feb  8 21:11:44 2019
// Host        : DevVM running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/daniel/Schreibtisch/Git/VHDL/I2S_Transmitter/I2S_Transmitter.sim/sim_1/synth/timing/xsim/I2S_TB_time_synth.v
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLOCKIN, CLK_DOMAIN ClockGeneration_clk_in1_0, FREQ_HZ 125000000, PHASE 0.000" *) input ClockIn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLOCKOUT CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLOCKOUT, CLK_DOMAIN /ClockingWIzard_clk_out1, FREQ_HZ 18431983, PHASE 0.0" *) output ClockOut;
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

  wire clk_in1;
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
  wire clk_in1_ClockGeneration_clk_wiz_0_0;
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

  (* box_type = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_ClockGeneration_clk_wiz_0_0),
        .O(clkfbout_buf_ClockGeneration_clk_wiz_0_0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_ClockGeneration_clk_wiz_0_0));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_ClockGeneration_clk_wiz_0_0),
        .O(clk_out1));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(17.750000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(40.125000),
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
    .DIVCLK_DIVIDE(3),
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
        .CLKIN1(clk_in1_ClockGeneration_clk_wiz_0_0),
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
   (Address,
    Clock,
    DataOut);
  input [10:0]Address;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLOCK, CLK_DOMAIN DataROM_Clock, FREQ_HZ 100000000, PHASE 0.000" *) input Clock;
  output [23:0]DataOut;

  wire [10:0]Address;
  wire Clock;
  wire [23:0]DataOut;

  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *) 
  DataROM_blk_mem_gen_0_0 AudioData
       (.addra(Address),
        .clka(Clock),
        .douta(DataOut));
endmodule

(* CHECK_LICENSE_TYPE = "DataROM_blk_mem_gen_0_0,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *) 
module DataROM_blk_mem_gen_0_0
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [23:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.66155 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "DataROM_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module I2S
   (LRCLK_OBUF,
    Clock,
    Locked_OBUF,
    SD_OBUF,
    SCLK_OBUF,
    ClockOut,
    ResetN_IBUF,
    Locked,
    DataOut,
    Clock_Int_reg_0);
  output LRCLK_OBUF;
  output Clock;
  output Locked_OBUF;
  output SD_OBUF;
  output SCLK_OBUF;
  input ClockOut;
  input ResetN_IBUF;
  input Locked;
  input [23:0]DataOut;
  input Clock_Int_reg_0;

  wire Clock;
  wire ClockOut;
  wire Clock_Int_i_1_n_0;
  wire Clock_Int_reg_0;
  wire [23:0]DataOut;
  wire LRCLK_OBUF;
  wire Locked;
  wire Locked_OBUF;
  wire [31:0]MCLK_Cnt;
  wire \MCLK_Cnt[31]_i_10_n_0 ;
  wire \MCLK_Cnt[31]_i_2_n_0 ;
  wire \MCLK_Cnt[31]_i_3_n_0 ;
  wire \MCLK_Cnt[31]_i_4_n_0 ;
  wire \MCLK_Cnt[31]_i_5_n_0 ;
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
  wire \MCLK_Cnt_reg[31]_i_6_n_2 ;
  wire \MCLK_Cnt_reg[31]_i_6_n_3 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_1 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_2 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_3 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_1 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_2 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_3 ;
  wire ResetN_IBUF;
  wire SCLK_OBUF;
  wire SD_OBUF;
  wire [31:1]data0;
  wire p_0_in;
  wire [3:2]\NLW_MCLK_Cnt_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_MCLK_Cnt_reg[31]_i_6_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    Clock_Int_i_1
       (.I0(\MCLK_Cnt[31]_i_5_n_0 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .I2(\MCLK_Cnt[31]_i_3_n_0 ),
        .I3(\MCLK_Cnt[31]_i_2_n_0 ),
        .I4(p_0_in),
        .I5(Clock),
        .O(Clock_Int_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Clock_Int_reg
       (.C(ClockOut),
        .CE(1'b1),
        .D(Clock_Int_i_1_n_0),
        .Q(Clock),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \MCLK_Cnt[0]_i_1 
       (.I0(MCLK_Cnt[0]),
        .O(MCLK_Cnt_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[10]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(MCLK_Cnt_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[11]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(MCLK_Cnt_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[12]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(MCLK_Cnt_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[13]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(MCLK_Cnt_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[14]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(MCLK_Cnt_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[15]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(MCLK_Cnt_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[16]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(MCLK_Cnt_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[17]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(MCLK_Cnt_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[18]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(MCLK_Cnt_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[19]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(MCLK_Cnt_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[1]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(MCLK_Cnt_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[20]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(MCLK_Cnt_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[21]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(MCLK_Cnt_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[22]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(MCLK_Cnt_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[23]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(MCLK_Cnt_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[24]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(MCLK_Cnt_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[25]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(MCLK_Cnt_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[26]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(MCLK_Cnt_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[27]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(MCLK_Cnt_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[28]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(MCLK_Cnt_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[29]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(MCLK_Cnt_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[2]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(MCLK_Cnt_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[30]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(MCLK_Cnt_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[31]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(MCLK_Cnt_0[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \MCLK_Cnt[31]_i_10 
       (.I0(MCLK_Cnt[13]),
        .I1(MCLK_Cnt[12]),
        .I2(MCLK_Cnt[15]),
        .I3(MCLK_Cnt[14]),
        .O(\MCLK_Cnt[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \MCLK_Cnt[31]_i_2 
       (.I0(MCLK_Cnt[18]),
        .I1(MCLK_Cnt[19]),
        .I2(MCLK_Cnt[16]),
        .I3(MCLK_Cnt[17]),
        .I4(\MCLK_Cnt[31]_i_7_n_0 ),
        .O(\MCLK_Cnt[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \MCLK_Cnt[31]_i_3 
       (.I0(MCLK_Cnt[26]),
        .I1(MCLK_Cnt[27]),
        .I2(MCLK_Cnt[24]),
        .I3(MCLK_Cnt[25]),
        .I4(\MCLK_Cnt[31]_i_8_n_0 ),
        .O(\MCLK_Cnt[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \MCLK_Cnt[31]_i_4 
       (.I0(MCLK_Cnt[2]),
        .I1(MCLK_Cnt[3]),
        .I2(MCLK_Cnt[0]),
        .I3(MCLK_Cnt[1]),
        .I4(\MCLK_Cnt[31]_i_9_n_0 ),
        .O(\MCLK_Cnt[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \MCLK_Cnt[31]_i_5 
       (.I0(MCLK_Cnt[10]),
        .I1(MCLK_Cnt[11]),
        .I2(MCLK_Cnt[8]),
        .I3(MCLK_Cnt[9]),
        .I4(\MCLK_Cnt[31]_i_10_n_0 ),
        .O(\MCLK_Cnt[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \MCLK_Cnt[31]_i_7 
       (.I0(MCLK_Cnt[21]),
        .I1(MCLK_Cnt[20]),
        .I2(MCLK_Cnt[23]),
        .I3(MCLK_Cnt[22]),
        .O(\MCLK_Cnt[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \MCLK_Cnt[31]_i_8 
       (.I0(MCLK_Cnt[29]),
        .I1(MCLK_Cnt[28]),
        .I2(MCLK_Cnt[31]),
        .I3(MCLK_Cnt[30]),
        .O(\MCLK_Cnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \MCLK_Cnt[31]_i_9 
       (.I0(MCLK_Cnt[5]),
        .I1(MCLK_Cnt[4]),
        .I2(MCLK_Cnt[7]),
        .I3(MCLK_Cnt[6]),
        .O(\MCLK_Cnt[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[3]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(MCLK_Cnt_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[4]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(MCLK_Cnt_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[5]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(MCLK_Cnt_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[6]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(MCLK_Cnt_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[7]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(MCLK_Cnt_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[8]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(MCLK_Cnt_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \MCLK_Cnt[9]_i_1 
       (.I0(\MCLK_Cnt[31]_i_2_n_0 ),
        .I1(\MCLK_Cnt[31]_i_3_n_0 ),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(\MCLK_Cnt[31]_i_5_n_0 ),
        .I4(data0[9]),
        .O(MCLK_Cnt_0[9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[0] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[0]),
        .Q(MCLK_Cnt[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[10] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[10]),
        .Q(MCLK_Cnt[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[11] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[11]),
        .Q(MCLK_Cnt[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[12] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[12]),
        .Q(MCLK_Cnt[12]),
        .R(p_0_in));
  CARRY4 \MCLK_Cnt_reg[12]_i_2 
       (.CI(\MCLK_Cnt_reg[8]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[12]_i_2_n_0 ,\MCLK_Cnt_reg[12]_i_2_n_1 ,\MCLK_Cnt_reg[12]_i_2_n_2 ,\MCLK_Cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(MCLK_Cnt[12:9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[13] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[13]),
        .Q(MCLK_Cnt[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[14] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[14]),
        .Q(MCLK_Cnt[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[15] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[15]),
        .Q(MCLK_Cnt[15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[16] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[16]),
        .Q(MCLK_Cnt[16]),
        .R(p_0_in));
  CARRY4 \MCLK_Cnt_reg[16]_i_2 
       (.CI(\MCLK_Cnt_reg[12]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[16]_i_2_n_0 ,\MCLK_Cnt_reg[16]_i_2_n_1 ,\MCLK_Cnt_reg[16]_i_2_n_2 ,\MCLK_Cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(MCLK_Cnt[16:13]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[17] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[17]),
        .Q(MCLK_Cnt[17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[18] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[18]),
        .Q(MCLK_Cnt[18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[19] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[19]),
        .Q(MCLK_Cnt[19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[1] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[1]),
        .Q(MCLK_Cnt[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[20] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[20]),
        .Q(MCLK_Cnt[20]),
        .R(p_0_in));
  CARRY4 \MCLK_Cnt_reg[20]_i_2 
       (.CI(\MCLK_Cnt_reg[16]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[20]_i_2_n_0 ,\MCLK_Cnt_reg[20]_i_2_n_1 ,\MCLK_Cnt_reg[20]_i_2_n_2 ,\MCLK_Cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(MCLK_Cnt[20:17]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[21] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[21]),
        .Q(MCLK_Cnt[21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[22] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[22]),
        .Q(MCLK_Cnt[22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[23] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[23]),
        .Q(MCLK_Cnt[23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[24] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[24]),
        .Q(MCLK_Cnt[24]),
        .R(p_0_in));
  CARRY4 \MCLK_Cnt_reg[24]_i_2 
       (.CI(\MCLK_Cnt_reg[20]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[24]_i_2_n_0 ,\MCLK_Cnt_reg[24]_i_2_n_1 ,\MCLK_Cnt_reg[24]_i_2_n_2 ,\MCLK_Cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(MCLK_Cnt[24:21]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[25] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[25]),
        .Q(MCLK_Cnt[25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[26] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[26]),
        .Q(MCLK_Cnt[26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[27] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[27]),
        .Q(MCLK_Cnt[27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[28] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[28]),
        .Q(MCLK_Cnt[28]),
        .R(p_0_in));
  CARRY4 \MCLK_Cnt_reg[28]_i_2 
       (.CI(\MCLK_Cnt_reg[24]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[28]_i_2_n_0 ,\MCLK_Cnt_reg[28]_i_2_n_1 ,\MCLK_Cnt_reg[28]_i_2_n_2 ,\MCLK_Cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(MCLK_Cnt[28:25]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[29] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[29]),
        .Q(MCLK_Cnt[29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[2] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[2]),
        .Q(MCLK_Cnt[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[30] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[30]),
        .Q(MCLK_Cnt[30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[31] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[31]),
        .Q(MCLK_Cnt[31]),
        .R(p_0_in));
  CARRY4 \MCLK_Cnt_reg[31]_i_6 
       (.CI(\MCLK_Cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_MCLK_Cnt_reg[31]_i_6_CO_UNCONNECTED [3:2],\MCLK_Cnt_reg[31]_i_6_n_2 ,\MCLK_Cnt_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_MCLK_Cnt_reg[31]_i_6_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,MCLK_Cnt[31:29]}));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[3] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[3]),
        .Q(MCLK_Cnt[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[4] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[4]),
        .Q(MCLK_Cnt[4]),
        .R(p_0_in));
  CARRY4 \MCLK_Cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\MCLK_Cnt_reg[4]_i_2_n_0 ,\MCLK_Cnt_reg[4]_i_2_n_1 ,\MCLK_Cnt_reg[4]_i_2_n_2 ,\MCLK_Cnt_reg[4]_i_2_n_3 }),
        .CYINIT(MCLK_Cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(MCLK_Cnt[4:1]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[5] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[5]),
        .Q(MCLK_Cnt[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[6] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[6]),
        .Q(MCLK_Cnt[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[7] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[7]),
        .Q(MCLK_Cnt[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[8] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[8]),
        .Q(MCLK_Cnt[8]),
        .R(p_0_in));
  CARRY4 \MCLK_Cnt_reg[8]_i_2 
       (.CI(\MCLK_Cnt_reg[4]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[8]_i_2_n_0 ,\MCLK_Cnt_reg[8]_i_2_n_1 ,\MCLK_Cnt_reg[8]_i_2_n_2 ,\MCLK_Cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(MCLK_Cnt[8:5]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \MCLK_Cnt_reg[9] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[9]),
        .Q(MCLK_Cnt[9]),
        .R(p_0_in));
  I2S_Transmitter Transmitter
       (.Clock_Int_reg(Clock),
        .Clock_Int_reg_0(Clock_Int_reg_0),
        .DataOut(DataOut),
        .LRCLK_OBUF(LRCLK_OBUF),
        .Locked(Locked),
        .ResetN_IBUF(ResetN_IBUF),
        .SCLK_OBUF(SCLK_OBUF),
        .SD_OBUF(SD_OBUF),
        .SR(p_0_in),
        .sel(Locked_OBUF));
endmodule

module I2S_Transmitter
   (LRCLK_OBUF,
    sel,
    SD_OBUF,
    SR,
    SCLK_OBUF,
    Clock_Int_reg,
    ResetN_IBUF,
    Locked,
    DataOut,
    Clock_Int_reg_0);
  output LRCLK_OBUF;
  output sel;
  output SD_OBUF;
  output [0:0]SR;
  output SCLK_OBUF;
  input Clock_Int_reg;
  input ResetN_IBUF;
  input Locked;
  input [23:0]DataOut;
  input Clock_Int_reg_0;

  wire Clock_Int_reg;
  wire Clock_Int_reg_0;
  wire [23:0]DataOut;
  wire LRCLK_Cnt;
  wire LRCLK_Cnt1_carry__0_i_1_n_0;
  wire LRCLK_Cnt1_carry__0_i_2_n_0;
  wire LRCLK_Cnt1_carry__0_i_3_n_0;
  wire LRCLK_Cnt1_carry__0_i_4_n_0;
  wire LRCLK_Cnt1_carry__0_n_0;
  wire LRCLK_Cnt1_carry__0_n_1;
  wire LRCLK_Cnt1_carry__0_n_2;
  wire LRCLK_Cnt1_carry__0_n_3;
  wire LRCLK_Cnt1_carry__1_i_1_n_0;
  wire LRCLK_Cnt1_carry__1_i_2_n_0;
  wire LRCLK_Cnt1_carry__1_i_3_n_0;
  wire LRCLK_Cnt1_carry__1_i_4_n_0;
  wire LRCLK_Cnt1_carry__1_n_0;
  wire LRCLK_Cnt1_carry__1_n_1;
  wire LRCLK_Cnt1_carry__1_n_2;
  wire LRCLK_Cnt1_carry__1_n_3;
  wire LRCLK_Cnt1_carry__2_i_1_n_0;
  wire LRCLK_Cnt1_carry__2_i_2_n_0;
  wire LRCLK_Cnt1_carry__2_i_3_n_0;
  wire LRCLK_Cnt1_carry__2_i_4_n_0;
  wire LRCLK_Cnt1_carry__2_n_0;
  wire LRCLK_Cnt1_carry__2_n_1;
  wire LRCLK_Cnt1_carry__2_n_2;
  wire LRCLK_Cnt1_carry__2_n_3;
  wire LRCLK_Cnt1_carry_i_1_n_0;
  wire LRCLK_Cnt1_carry_i_2_n_0;
  wire LRCLK_Cnt1_carry_i_3_n_0;
  wire LRCLK_Cnt1_carry_i_4_n_0;
  wire LRCLK_Cnt1_carry_i_5_n_0;
  wire LRCLK_Cnt1_carry_i_6_n_0;
  wire LRCLK_Cnt1_carry_i_7_n_0;
  wire LRCLK_Cnt1_carry_n_0;
  wire LRCLK_Cnt1_carry_n_1;
  wire LRCLK_Cnt1_carry_n_2;
  wire LRCLK_Cnt1_carry_n_3;
  wire \LRCLK_Cnt[0]_i_4_n_0 ;
  wire [31:0]LRCLK_Cnt_reg;
  wire \LRCLK_Cnt_reg[0]_i_2_n_0 ;
  wire \LRCLK_Cnt_reg[0]_i_2_n_1 ;
  wire \LRCLK_Cnt_reg[0]_i_2_n_2 ;
  wire \LRCLK_Cnt_reg[0]_i_2_n_3 ;
  wire \LRCLK_Cnt_reg[0]_i_2_n_4 ;
  wire \LRCLK_Cnt_reg[0]_i_2_n_5 ;
  wire \LRCLK_Cnt_reg[0]_i_2_n_6 ;
  wire \LRCLK_Cnt_reg[0]_i_2_n_7 ;
  wire \LRCLK_Cnt_reg[12]_i_1_n_0 ;
  wire \LRCLK_Cnt_reg[12]_i_1_n_1 ;
  wire \LRCLK_Cnt_reg[12]_i_1_n_2 ;
  wire \LRCLK_Cnt_reg[12]_i_1_n_3 ;
  wire \LRCLK_Cnt_reg[12]_i_1_n_4 ;
  wire \LRCLK_Cnt_reg[12]_i_1_n_5 ;
  wire \LRCLK_Cnt_reg[12]_i_1_n_6 ;
  wire \LRCLK_Cnt_reg[12]_i_1_n_7 ;
  wire \LRCLK_Cnt_reg[16]_i_1_n_0 ;
  wire \LRCLK_Cnt_reg[16]_i_1_n_1 ;
  wire \LRCLK_Cnt_reg[16]_i_1_n_2 ;
  wire \LRCLK_Cnt_reg[16]_i_1_n_3 ;
  wire \LRCLK_Cnt_reg[16]_i_1_n_4 ;
  wire \LRCLK_Cnt_reg[16]_i_1_n_5 ;
  wire \LRCLK_Cnt_reg[16]_i_1_n_6 ;
  wire \LRCLK_Cnt_reg[16]_i_1_n_7 ;
  wire \LRCLK_Cnt_reg[20]_i_1_n_0 ;
  wire \LRCLK_Cnt_reg[20]_i_1_n_1 ;
  wire \LRCLK_Cnt_reg[20]_i_1_n_2 ;
  wire \LRCLK_Cnt_reg[20]_i_1_n_3 ;
  wire \LRCLK_Cnt_reg[20]_i_1_n_4 ;
  wire \LRCLK_Cnt_reg[20]_i_1_n_5 ;
  wire \LRCLK_Cnt_reg[20]_i_1_n_6 ;
  wire \LRCLK_Cnt_reg[20]_i_1_n_7 ;
  wire \LRCLK_Cnt_reg[24]_i_1_n_0 ;
  wire \LRCLK_Cnt_reg[24]_i_1_n_1 ;
  wire \LRCLK_Cnt_reg[24]_i_1_n_2 ;
  wire \LRCLK_Cnt_reg[24]_i_1_n_3 ;
  wire \LRCLK_Cnt_reg[24]_i_1_n_4 ;
  wire \LRCLK_Cnt_reg[24]_i_1_n_5 ;
  wire \LRCLK_Cnt_reg[24]_i_1_n_6 ;
  wire \LRCLK_Cnt_reg[24]_i_1_n_7 ;
  wire \LRCLK_Cnt_reg[28]_i_1_n_1 ;
  wire \LRCLK_Cnt_reg[28]_i_1_n_2 ;
  wire \LRCLK_Cnt_reg[28]_i_1_n_3 ;
  wire \LRCLK_Cnt_reg[28]_i_1_n_4 ;
  wire \LRCLK_Cnt_reg[28]_i_1_n_5 ;
  wire \LRCLK_Cnt_reg[28]_i_1_n_6 ;
  wire \LRCLK_Cnt_reg[28]_i_1_n_7 ;
  wire \LRCLK_Cnt_reg[4]_i_1_n_0 ;
  wire \LRCLK_Cnt_reg[4]_i_1_n_1 ;
  wire \LRCLK_Cnt_reg[4]_i_1_n_2 ;
  wire \LRCLK_Cnt_reg[4]_i_1_n_3 ;
  wire \LRCLK_Cnt_reg[4]_i_1_n_4 ;
  wire \LRCLK_Cnt_reg[4]_i_1_n_5 ;
  wire \LRCLK_Cnt_reg[4]_i_1_n_6 ;
  wire \LRCLK_Cnt_reg[4]_i_1_n_7 ;
  wire \LRCLK_Cnt_reg[8]_i_1_n_0 ;
  wire \LRCLK_Cnt_reg[8]_i_1_n_1 ;
  wire \LRCLK_Cnt_reg[8]_i_1_n_2 ;
  wire \LRCLK_Cnt_reg[8]_i_1_n_3 ;
  wire \LRCLK_Cnt_reg[8]_i_1_n_4 ;
  wire \LRCLK_Cnt_reg[8]_i_1_n_5 ;
  wire \LRCLK_Cnt_reg[8]_i_1_n_6 ;
  wire \LRCLK_Cnt_reg[8]_i_1_n_7 ;
  wire LRCLK_Int;
  wire LRCLK_Int0;
  wire LRCLK_Int_i_3_n_0;
  wire LRCLK_Int_i_4_n_0;
  wire LRCLK_Int_i_5_n_0;
  wire LRCLK_Int_i_6_n_0;
  wire LRCLK_Int_i_7_n_0;
  wire LRCLK_Int_i_8_n_0;
  wire LRCLK_Int_i_9_n_0;
  wire LRCLK_OBUF;
  wire Locked;
  wire ResetN_IBUF;
  wire SCLK_Int;
  wire SCLK_OBUF;
  wire SD_OBUF;
  wire [0:0]SR;
  wire \ShiftRegister[0]_i_1_n_0 ;
  wire \ShiftRegister[10]_i_1_n_0 ;
  wire \ShiftRegister[11]_i_1_n_0 ;
  wire \ShiftRegister[12]_i_1_n_0 ;
  wire \ShiftRegister[13]_i_1_n_0 ;
  wire \ShiftRegister[14]_i_1_n_0 ;
  wire \ShiftRegister[15]_i_1_n_0 ;
  wire \ShiftRegister[16]_i_1_n_0 ;
  wire \ShiftRegister[17]_i_1_n_0 ;
  wire \ShiftRegister[18]_i_1_n_0 ;
  wire \ShiftRegister[19]_i_1_n_0 ;
  wire \ShiftRegister[1]_i_1_n_0 ;
  wire \ShiftRegister[20]_i_1_n_0 ;
  wire \ShiftRegister[21]_i_1_n_0 ;
  wire \ShiftRegister[22]_i_1_n_0 ;
  wire \ShiftRegister[23]_i_2_n_0 ;
  wire \ShiftRegister[23]_i_3_n_0 ;
  wire \ShiftRegister[23]_i_4_n_0 ;
  wire \ShiftRegister[23]_i_5_n_0 ;
  wire \ShiftRegister[2]_i_1_n_0 ;
  wire \ShiftRegister[3]_i_1_n_0 ;
  wire \ShiftRegister[4]_i_1_n_0 ;
  wire \ShiftRegister[5]_i_1_n_0 ;
  wire \ShiftRegister[6]_i_1_n_0 ;
  wire \ShiftRegister[7]_i_1_n_0 ;
  wire \ShiftRegister[8]_i_1_n_0 ;
  wire \ShiftRegister[9]_i_1_n_0 ;
  wire [23:1]data2;
  wire p_1_in;
  wire sel;
  wire [3:0]NLW_LRCLK_Cnt1_carry_O_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Cnt1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Cnt1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_LRCLK_Cnt1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_LRCLK_Cnt_reg[28]_i_1_CO_UNCONNECTED ;

  CARRY4 LRCLK_Cnt1_carry
       (.CI(1'b0),
        .CO({LRCLK_Cnt1_carry_n_0,LRCLK_Cnt1_carry_n_1,LRCLK_Cnt1_carry_n_2,LRCLK_Cnt1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,LRCLK_Cnt1_carry_i_1_n_0,LRCLK_Cnt1_carry_i_2_n_0,LRCLK_Cnt1_carry_i_3_n_0}),
        .O(NLW_LRCLK_Cnt1_carry_O_UNCONNECTED[3:0]),
        .S({LRCLK_Cnt1_carry_i_4_n_0,LRCLK_Cnt1_carry_i_5_n_0,LRCLK_Cnt1_carry_i_6_n_0,LRCLK_Cnt1_carry_i_7_n_0}));
  CARRY4 LRCLK_Cnt1_carry__0
       (.CI(LRCLK_Cnt1_carry_n_0),
        .CO({LRCLK_Cnt1_carry__0_n_0,LRCLK_Cnt1_carry__0_n_1,LRCLK_Cnt1_carry__0_n_2,LRCLK_Cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_Cnt1_carry__0_O_UNCONNECTED[3:0]),
        .S({LRCLK_Cnt1_carry__0_i_1_n_0,LRCLK_Cnt1_carry__0_i_2_n_0,LRCLK_Cnt1_carry__0_i_3_n_0,LRCLK_Cnt1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__0_i_1
       (.I0(LRCLK_Cnt_reg[15]),
        .I1(LRCLK_Cnt_reg[14]),
        .O(LRCLK_Cnt1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__0_i_2
       (.I0(LRCLK_Cnt_reg[13]),
        .I1(LRCLK_Cnt_reg[12]),
        .O(LRCLK_Cnt1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__0_i_3
       (.I0(LRCLK_Cnt_reg[11]),
        .I1(LRCLK_Cnt_reg[10]),
        .O(LRCLK_Cnt1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__0_i_4
       (.I0(LRCLK_Cnt_reg[9]),
        .I1(LRCLK_Cnt_reg[8]),
        .O(LRCLK_Cnt1_carry__0_i_4_n_0));
  CARRY4 LRCLK_Cnt1_carry__1
       (.CI(LRCLK_Cnt1_carry__0_n_0),
        .CO({LRCLK_Cnt1_carry__1_n_0,LRCLK_Cnt1_carry__1_n_1,LRCLK_Cnt1_carry__1_n_2,LRCLK_Cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_Cnt1_carry__1_O_UNCONNECTED[3:0]),
        .S({LRCLK_Cnt1_carry__1_i_1_n_0,LRCLK_Cnt1_carry__1_i_2_n_0,LRCLK_Cnt1_carry__1_i_3_n_0,LRCLK_Cnt1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__1_i_1
       (.I0(LRCLK_Cnt_reg[23]),
        .I1(LRCLK_Cnt_reg[22]),
        .O(LRCLK_Cnt1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__1_i_2
       (.I0(LRCLK_Cnt_reg[21]),
        .I1(LRCLK_Cnt_reg[20]),
        .O(LRCLK_Cnt1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__1_i_3
       (.I0(LRCLK_Cnt_reg[19]),
        .I1(LRCLK_Cnt_reg[18]),
        .O(LRCLK_Cnt1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__1_i_4
       (.I0(LRCLK_Cnt_reg[17]),
        .I1(LRCLK_Cnt_reg[16]),
        .O(LRCLK_Cnt1_carry__1_i_4_n_0));
  CARRY4 LRCLK_Cnt1_carry__2
       (.CI(LRCLK_Cnt1_carry__1_n_0),
        .CO({LRCLK_Cnt1_carry__2_n_0,LRCLK_Cnt1_carry__2_n_1,LRCLK_Cnt1_carry__2_n_2,LRCLK_Cnt1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({LRCLK_Cnt_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_Cnt1_carry__2_O_UNCONNECTED[3:0]),
        .S({LRCLK_Cnt1_carry__2_i_1_n_0,LRCLK_Cnt1_carry__2_i_2_n_0,LRCLK_Cnt1_carry__2_i_3_n_0,LRCLK_Cnt1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__2_i_1
       (.I0(LRCLK_Cnt_reg[31]),
        .I1(LRCLK_Cnt_reg[30]),
        .O(LRCLK_Cnt1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__2_i_2
       (.I0(LRCLK_Cnt_reg[29]),
        .I1(LRCLK_Cnt_reg[28]),
        .O(LRCLK_Cnt1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__2_i_3
       (.I0(LRCLK_Cnt_reg[27]),
        .I1(LRCLK_Cnt_reg[26]),
        .O(LRCLK_Cnt1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry__2_i_4
       (.I0(LRCLK_Cnt_reg[25]),
        .I1(LRCLK_Cnt_reg[24]),
        .O(LRCLK_Cnt1_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    LRCLK_Cnt1_carry_i_1
       (.I0(LRCLK_Cnt_reg[5]),
        .O(LRCLK_Cnt1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    LRCLK_Cnt1_carry_i_2
       (.I0(LRCLK_Cnt_reg[2]),
        .I1(LRCLK_Cnt_reg[3]),
        .O(LRCLK_Cnt1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    LRCLK_Cnt1_carry_i_3
       (.I0(LRCLK_Cnt_reg[0]),
        .I1(LRCLK_Cnt_reg[1]),
        .O(LRCLK_Cnt1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_Cnt1_carry_i_4
       (.I0(LRCLK_Cnt_reg[7]),
        .I1(LRCLK_Cnt_reg[6]),
        .O(LRCLK_Cnt1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LRCLK_Cnt1_carry_i_5
       (.I0(LRCLK_Cnt_reg[5]),
        .I1(LRCLK_Cnt_reg[4]),
        .O(LRCLK_Cnt1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    LRCLK_Cnt1_carry_i_6
       (.I0(LRCLK_Cnt_reg[2]),
        .I1(LRCLK_Cnt_reg[3]),
        .O(LRCLK_Cnt1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    LRCLK_Cnt1_carry_i_7
       (.I0(LRCLK_Cnt_reg[0]),
        .I1(LRCLK_Cnt_reg[1]),
        .O(LRCLK_Cnt1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \LRCLK_Cnt[0]_i_1 
       (.I0(ResetN_IBUF),
        .I1(Locked),
        .I2(LRCLK_Cnt1_carry__2_n_0),
        .O(LRCLK_Cnt));
  LUT1 #(
    .INIT(2'h1)) 
    \LRCLK_Cnt[0]_i_4 
       (.I0(LRCLK_Cnt_reg[0]),
        .O(\LRCLK_Cnt[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[0] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[0]_i_2_n_7 ),
        .Q(LRCLK_Cnt_reg[0]),
        .R(LRCLK_Cnt));
  CARRY4 \LRCLK_Cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\LRCLK_Cnt_reg[0]_i_2_n_0 ,\LRCLK_Cnt_reg[0]_i_2_n_1 ,\LRCLK_Cnt_reg[0]_i_2_n_2 ,\LRCLK_Cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\LRCLK_Cnt_reg[0]_i_2_n_4 ,\LRCLK_Cnt_reg[0]_i_2_n_5 ,\LRCLK_Cnt_reg[0]_i_2_n_6 ,\LRCLK_Cnt_reg[0]_i_2_n_7 }),
        .S({LRCLK_Cnt_reg[3:1],\LRCLK_Cnt[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[10] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[8]_i_1_n_5 ),
        .Q(LRCLK_Cnt_reg[10]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[11] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[8]_i_1_n_4 ),
        .Q(LRCLK_Cnt_reg[11]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[12] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[12]_i_1_n_7 ),
        .Q(LRCLK_Cnt_reg[12]),
        .R(LRCLK_Cnt));
  CARRY4 \LRCLK_Cnt_reg[12]_i_1 
       (.CI(\LRCLK_Cnt_reg[8]_i_1_n_0 ),
        .CO({\LRCLK_Cnt_reg[12]_i_1_n_0 ,\LRCLK_Cnt_reg[12]_i_1_n_1 ,\LRCLK_Cnt_reg[12]_i_1_n_2 ,\LRCLK_Cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\LRCLK_Cnt_reg[12]_i_1_n_4 ,\LRCLK_Cnt_reg[12]_i_1_n_5 ,\LRCLK_Cnt_reg[12]_i_1_n_6 ,\LRCLK_Cnt_reg[12]_i_1_n_7 }),
        .S(LRCLK_Cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[13] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[12]_i_1_n_6 ),
        .Q(LRCLK_Cnt_reg[13]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[14] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[12]_i_1_n_5 ),
        .Q(LRCLK_Cnt_reg[14]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[15] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[12]_i_1_n_4 ),
        .Q(LRCLK_Cnt_reg[15]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[16] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[16]_i_1_n_7 ),
        .Q(LRCLK_Cnt_reg[16]),
        .R(LRCLK_Cnt));
  CARRY4 \LRCLK_Cnt_reg[16]_i_1 
       (.CI(\LRCLK_Cnt_reg[12]_i_1_n_0 ),
        .CO({\LRCLK_Cnt_reg[16]_i_1_n_0 ,\LRCLK_Cnt_reg[16]_i_1_n_1 ,\LRCLK_Cnt_reg[16]_i_1_n_2 ,\LRCLK_Cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\LRCLK_Cnt_reg[16]_i_1_n_4 ,\LRCLK_Cnt_reg[16]_i_1_n_5 ,\LRCLK_Cnt_reg[16]_i_1_n_6 ,\LRCLK_Cnt_reg[16]_i_1_n_7 }),
        .S(LRCLK_Cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[17] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[16]_i_1_n_6 ),
        .Q(LRCLK_Cnt_reg[17]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[18] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[16]_i_1_n_5 ),
        .Q(LRCLK_Cnt_reg[18]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[19] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[16]_i_1_n_4 ),
        .Q(LRCLK_Cnt_reg[19]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[1] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[0]_i_2_n_6 ),
        .Q(LRCLK_Cnt_reg[1]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[20] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[20]_i_1_n_7 ),
        .Q(LRCLK_Cnt_reg[20]),
        .R(LRCLK_Cnt));
  CARRY4 \LRCLK_Cnt_reg[20]_i_1 
       (.CI(\LRCLK_Cnt_reg[16]_i_1_n_0 ),
        .CO({\LRCLK_Cnt_reg[20]_i_1_n_0 ,\LRCLK_Cnt_reg[20]_i_1_n_1 ,\LRCLK_Cnt_reg[20]_i_1_n_2 ,\LRCLK_Cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\LRCLK_Cnt_reg[20]_i_1_n_4 ,\LRCLK_Cnt_reg[20]_i_1_n_5 ,\LRCLK_Cnt_reg[20]_i_1_n_6 ,\LRCLK_Cnt_reg[20]_i_1_n_7 }),
        .S(LRCLK_Cnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[21] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[20]_i_1_n_6 ),
        .Q(LRCLK_Cnt_reg[21]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[22] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[20]_i_1_n_5 ),
        .Q(LRCLK_Cnt_reg[22]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[23] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[20]_i_1_n_4 ),
        .Q(LRCLK_Cnt_reg[23]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[24] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[24]_i_1_n_7 ),
        .Q(LRCLK_Cnt_reg[24]),
        .R(LRCLK_Cnt));
  CARRY4 \LRCLK_Cnt_reg[24]_i_1 
       (.CI(\LRCLK_Cnt_reg[20]_i_1_n_0 ),
        .CO({\LRCLK_Cnt_reg[24]_i_1_n_0 ,\LRCLK_Cnt_reg[24]_i_1_n_1 ,\LRCLK_Cnt_reg[24]_i_1_n_2 ,\LRCLK_Cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\LRCLK_Cnt_reg[24]_i_1_n_4 ,\LRCLK_Cnt_reg[24]_i_1_n_5 ,\LRCLK_Cnt_reg[24]_i_1_n_6 ,\LRCLK_Cnt_reg[24]_i_1_n_7 }),
        .S(LRCLK_Cnt_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[25] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[24]_i_1_n_6 ),
        .Q(LRCLK_Cnt_reg[25]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[26] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[24]_i_1_n_5 ),
        .Q(LRCLK_Cnt_reg[26]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[27] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[24]_i_1_n_4 ),
        .Q(LRCLK_Cnt_reg[27]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[28] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[28]_i_1_n_7 ),
        .Q(LRCLK_Cnt_reg[28]),
        .R(LRCLK_Cnt));
  CARRY4 \LRCLK_Cnt_reg[28]_i_1 
       (.CI(\LRCLK_Cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_LRCLK_Cnt_reg[28]_i_1_CO_UNCONNECTED [3],\LRCLK_Cnt_reg[28]_i_1_n_1 ,\LRCLK_Cnt_reg[28]_i_1_n_2 ,\LRCLK_Cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\LRCLK_Cnt_reg[28]_i_1_n_4 ,\LRCLK_Cnt_reg[28]_i_1_n_5 ,\LRCLK_Cnt_reg[28]_i_1_n_6 ,\LRCLK_Cnt_reg[28]_i_1_n_7 }),
        .S(LRCLK_Cnt_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[29] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[28]_i_1_n_6 ),
        .Q(LRCLK_Cnt_reg[29]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[2] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[0]_i_2_n_5 ),
        .Q(LRCLK_Cnt_reg[2]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[30] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[28]_i_1_n_5 ),
        .Q(LRCLK_Cnt_reg[30]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[31] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[28]_i_1_n_4 ),
        .Q(LRCLK_Cnt_reg[31]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[3] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[0]_i_2_n_4 ),
        .Q(LRCLK_Cnt_reg[3]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[4] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[4]_i_1_n_7 ),
        .Q(LRCLK_Cnt_reg[4]),
        .R(LRCLK_Cnt));
  CARRY4 \LRCLK_Cnt_reg[4]_i_1 
       (.CI(\LRCLK_Cnt_reg[0]_i_2_n_0 ),
        .CO({\LRCLK_Cnt_reg[4]_i_1_n_0 ,\LRCLK_Cnt_reg[4]_i_1_n_1 ,\LRCLK_Cnt_reg[4]_i_1_n_2 ,\LRCLK_Cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\LRCLK_Cnt_reg[4]_i_1_n_4 ,\LRCLK_Cnt_reg[4]_i_1_n_5 ,\LRCLK_Cnt_reg[4]_i_1_n_6 ,\LRCLK_Cnt_reg[4]_i_1_n_7 }),
        .S(LRCLK_Cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[5] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[4]_i_1_n_6 ),
        .Q(LRCLK_Cnt_reg[5]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[6] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[4]_i_1_n_5 ),
        .Q(LRCLK_Cnt_reg[6]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[7] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[4]_i_1_n_4 ),
        .Q(LRCLK_Cnt_reg[7]),
        .R(LRCLK_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[8] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[8]_i_1_n_7 ),
        .Q(LRCLK_Cnt_reg[8]),
        .R(LRCLK_Cnt));
  CARRY4 \LRCLK_Cnt_reg[8]_i_1 
       (.CI(\LRCLK_Cnt_reg[4]_i_1_n_0 ),
        .CO({\LRCLK_Cnt_reg[8]_i_1_n_0 ,\LRCLK_Cnt_reg[8]_i_1_n_1 ,\LRCLK_Cnt_reg[8]_i_1_n_2 ,\LRCLK_Cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\LRCLK_Cnt_reg[8]_i_1_n_4 ,\LRCLK_Cnt_reg[8]_i_1_n_5 ,\LRCLK_Cnt_reg[8]_i_1_n_6 ,\LRCLK_Cnt_reg[8]_i_1_n_7 }),
        .S(LRCLK_Cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \LRCLK_Cnt_reg[9] 
       (.C(Clock_Int_reg_0),
        .CE(sel),
        .D(\LRCLK_Cnt_reg[8]_i_1_n_6 ),
        .Q(LRCLK_Cnt_reg[9]),
        .R(LRCLK_Cnt));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    LRCLK_Int_i_1
       (.I0(LRCLK_Int_i_3_n_0),
        .I1(LRCLK_Int_i_4_n_0),
        .I2(LRCLK_Int_i_5_n_0),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Cnt_reg[4]),
        .I5(SR),
        .O(LRCLK_Int0));
  LUT5 #(
    .INIT(32'h00000008)) 
    LRCLK_Int_i_2
       (.I0(LRCLK_Cnt_reg[4]),
        .I1(LRCLK_Cnt_reg[3]),
        .I2(LRCLK_Int_i_5_n_0),
        .I3(LRCLK_Int_i_4_n_0),
        .I4(LRCLK_Int_i_3_n_0),
        .O(LRCLK_Int));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    LRCLK_Int_i_3
       (.I0(LRCLK_Cnt_reg[14]),
        .I1(LRCLK_Cnt_reg[15]),
        .I2(LRCLK_Cnt_reg[12]),
        .I3(LRCLK_Cnt_reg[13]),
        .I4(LRCLK_Int_i_6_n_0),
        .O(LRCLK_Int_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    LRCLK_Int_i_4
       (.I0(LRCLK_Cnt_reg[6]),
        .I1(LRCLK_Cnt_reg[7]),
        .I2(LRCLK_Cnt_reg[2]),
        .I3(LRCLK_Cnt_reg[5]),
        .I4(LRCLK_Int_i_7_n_0),
        .O(LRCLK_Int_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    LRCLK_Int_i_5
       (.I0(LRCLK_Int_i_8_n_0),
        .I1(LRCLK_Cnt_reg[21]),
        .I2(LRCLK_Cnt_reg[20]),
        .I3(LRCLK_Cnt_reg[23]),
        .I4(LRCLK_Cnt_reg[22]),
        .I5(LRCLK_Int_i_9_n_0),
        .O(LRCLK_Int_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    LRCLK_Int_i_6
       (.I0(LRCLK_Cnt_reg[17]),
        .I1(LRCLK_Cnt_reg[16]),
        .I2(LRCLK_Cnt_reg[19]),
        .I3(LRCLK_Cnt_reg[18]),
        .O(LRCLK_Int_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    LRCLK_Int_i_7
       (.I0(LRCLK_Cnt_reg[9]),
        .I1(LRCLK_Cnt_reg[8]),
        .I2(LRCLK_Cnt_reg[11]),
        .I3(LRCLK_Cnt_reg[10]),
        .O(LRCLK_Int_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    LRCLK_Int_i_8
       (.I0(LRCLK_Cnt_reg[25]),
        .I1(LRCLK_Cnt_reg[24]),
        .I2(LRCLK_Cnt_reg[27]),
        .I3(LRCLK_Cnt_reg[26]),
        .O(LRCLK_Int_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    LRCLK_Int_i_9
       (.I0(LRCLK_Cnt_reg[30]),
        .I1(LRCLK_Cnt_reg[31]),
        .I2(LRCLK_Cnt_reg[28]),
        .I3(LRCLK_Cnt_reg[29]),
        .I4(LRCLK_Cnt_reg[1]),
        .I5(LRCLK_Cnt_reg[0]),
        .O(LRCLK_Int_i_9_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    LRCLK_Int_reg
       (.C(Clock_Int_reg),
        .CE(LRCLK_Int),
        .D(LRCLK_Int),
        .Q(LRCLK_OBUF),
        .R(LRCLK_Int0));
  LUT2 #(
    .INIT(4'h8)) 
    Locked_OBUF_inst_i_1
       (.I0(ResetN_IBUF),
        .I1(Locked),
        .O(sel));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    SCLK_Int_reg
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(sel),
        .Q(SCLK_Int),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    SCLK_OBUF_inst_i_1
       (.I0(SCLK_Int),
        .I1(Clock_Int_reg),
        .O(SCLK_OBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    SD_Int_reg
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(p_1_in),
        .Q(SD_OBUF),
        .R(SR));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \ShiftRegister[0]_i_1 
       (.I0(LRCLK_Int_i_3_n_0),
        .I1(LRCLK_Int_i_4_n_0),
        .I2(LRCLK_Int_i_5_n_0),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Cnt_reg[4]),
        .I5(DataOut[0]),
        .O(\ShiftRegister[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[10]_i_1 
       (.I0(data2[10]),
        .I1(DataOut[10]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[11]_i_1 
       (.I0(data2[11]),
        .I1(DataOut[11]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[12]_i_1 
       (.I0(data2[12]),
        .I1(DataOut[12]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[13]_i_1 
       (.I0(data2[13]),
        .I1(DataOut[13]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[14]_i_1 
       (.I0(data2[14]),
        .I1(DataOut[14]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[15]_i_1 
       (.I0(data2[15]),
        .I1(DataOut[15]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[16]_i_1 
       (.I0(data2[16]),
        .I1(DataOut[16]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[17]_i_1 
       (.I0(data2[17]),
        .I1(DataOut[17]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[18]_i_1 
       (.I0(data2[18]),
        .I1(DataOut[18]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[19]_i_1 
       (.I0(data2[19]),
        .I1(DataOut[19]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[1]_i_1 
       (.I0(data2[1]),
        .I1(DataOut[1]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[20]_i_1 
       (.I0(data2[20]),
        .I1(DataOut[20]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[21]_i_1 
       (.I0(data2[21]),
        .I1(DataOut[21]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[22]_i_1 
       (.I0(data2[22]),
        .I1(DataOut[22]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ShiftRegister[23]_i_1 
       (.I0(Locked),
        .I1(ResetN_IBUF),
        .O(SR));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[23]_i_2 
       (.I0(data2[23]),
        .I1(DataOut[23]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ShiftRegister[23]_i_3 
       (.I0(LRCLK_Int_i_7_n_0),
        .I1(LRCLK_Cnt_reg[5]),
        .I2(LRCLK_Cnt_reg[2]),
        .I3(\ShiftRegister[23]_i_4_n_0 ),
        .I4(LRCLK_Int_i_6_n_0),
        .I5(\ShiftRegister[23]_i_5_n_0 ),
        .O(\ShiftRegister[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ShiftRegister[23]_i_4 
       (.I0(LRCLK_Cnt_reg[6]),
        .I1(LRCLK_Cnt_reg[7]),
        .O(\ShiftRegister[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ShiftRegister[23]_i_5 
       (.I0(LRCLK_Cnt_reg[13]),
        .I1(LRCLK_Cnt_reg[12]),
        .I2(LRCLK_Cnt_reg[15]),
        .I3(LRCLK_Cnt_reg[14]),
        .O(\ShiftRegister[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[2]_i_1 
       (.I0(data2[2]),
        .I1(DataOut[2]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[3]_i_1 
       (.I0(data2[3]),
        .I1(DataOut[3]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[4]_i_1 
       (.I0(data2[4]),
        .I1(DataOut[4]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[5]_i_1 
       (.I0(data2[5]),
        .I1(DataOut[5]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[6]_i_1 
       (.I0(data2[6]),
        .I1(DataOut[6]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[7]_i_1 
       (.I0(data2[7]),
        .I1(DataOut[7]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[8]_i_1 
       (.I0(data2[8]),
        .I1(DataOut[8]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACAA0)) 
    \ShiftRegister[9]_i_1 
       (.I0(data2[9]),
        .I1(DataOut[9]),
        .I2(LRCLK_Cnt_reg[4]),
        .I3(LRCLK_Cnt_reg[3]),
        .I4(LRCLK_Int_i_5_n_0),
        .I5(\ShiftRegister[23]_i_3_n_0 ),
        .O(\ShiftRegister[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[0] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[0]_i_1_n_0 ),
        .Q(data2[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[10] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[10]_i_1_n_0 ),
        .Q(data2[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[11] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[11]_i_1_n_0 ),
        .Q(data2[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[12] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[12]_i_1_n_0 ),
        .Q(data2[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[13] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[13]_i_1_n_0 ),
        .Q(data2[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[14] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[14]_i_1_n_0 ),
        .Q(data2[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[15] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[15]_i_1_n_0 ),
        .Q(data2[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[16] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[16]_i_1_n_0 ),
        .Q(data2[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[17] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[17]_i_1_n_0 ),
        .Q(data2[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[18] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[18]_i_1_n_0 ),
        .Q(data2[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[19] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[19]_i_1_n_0 ),
        .Q(data2[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[1] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[1]_i_1_n_0 ),
        .Q(data2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[20] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[20]_i_1_n_0 ),
        .Q(data2[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[21] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[21]_i_1_n_0 ),
        .Q(data2[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[22] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[22]_i_1_n_0 ),
        .Q(data2[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[23] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[23]_i_2_n_0 ),
        .Q(p_1_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[2] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[2]_i_1_n_0 ),
        .Q(data2[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[3] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[3]_i_1_n_0 ),
        .Q(data2[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[4] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[4]_i_1_n_0 ),
        .Q(data2[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[5] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[5]_i_1_n_0 ),
        .Q(data2[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[6] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[6]_i_1_n_0 ),
        .Q(data2[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[7] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[7]_i_1_n_0 ),
        .Q(data2[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[8] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[8]_i_1_n_0 ),
        .Q(data2[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \ShiftRegister_reg[9] 
       (.C(Clock_Int_reg),
        .CE(1'b1),
        .D(\ShiftRegister[9]_i_1_n_0 ),
        .Q(data2[10]),
        .R(SR));
endmodule

(* NotValidForBitStream *)
module Top
   (Clock,
    ResetN,
    Switch,
    Locked,
    MCLK,
    LRCLK,
    SCLK,
    SD);
  input Clock;
  input ResetN;
  input [2:0]Switch;
  output Locked;
  output MCLK;
  output LRCLK;
  output SCLK;
  output SD;

  wire Address;
  wire \Address[0]_i_11_n_0 ;
  wire \Address[0]_i_12_n_0 ;
  wire \Address[0]_i_13_n_0 ;
  wire \Address[0]_i_14_n_0 ;
  wire \Address[0]_i_16_n_0 ;
  wire \Address[0]_i_17_n_0 ;
  wire \Address[0]_i_18_n_0 ;
  wire \Address[0]_i_19_n_0 ;
  wire \Address[0]_i_20_n_0 ;
  wire \Address[0]_i_21_n_0 ;
  wire \Address[0]_i_22_n_0 ;
  wire \Address[0]_i_23_n_0 ;
  wire \Address[0]_i_24_n_0 ;
  wire \Address[0]_i_25_n_0 ;
  wire \Address[0]_i_26_n_0 ;
  wire \Address[0]_i_4_n_0 ;
  wire \Address[0]_i_6_n_0 ;
  wire \Address[0]_i_7_n_0 ;
  wire \Address[0]_i_8_n_0 ;
  wire \Address[0]_i_9_n_0 ;
  wire \Address_Cnt[0]_i_10_n_0 ;
  wire \Address_Cnt[0]_i_11_n_0 ;
  wire \Address_Cnt[0]_i_12_n_0 ;
  wire \Address_Cnt[0]_i_13_n_0 ;
  wire \Address_Cnt[0]_i_14_n_0 ;
  wire \Address_Cnt[0]_i_15_n_0 ;
  wire \Address_Cnt[0]_i_16_n_0 ;
  wire \Address_Cnt[0]_i_4_n_0 ;
  wire \Address_Cnt[0]_i_5_n_0 ;
  wire \Address_Cnt[0]_i_6_n_0 ;
  wire \Address_Cnt[0]_i_7_n_0 ;
  wire \Address_Cnt[0]_i_9_n_0 ;
  wire [31:0]Address_Cnt_reg;
  wire \Address_Cnt_reg[0]_i_1_n_1 ;
  wire \Address_Cnt_reg[0]_i_1_n_2 ;
  wire \Address_Cnt_reg[0]_i_1_n_3 ;
  wire \Address_Cnt_reg[0]_i_2_n_0 ;
  wire \Address_Cnt_reg[0]_i_2_n_1 ;
  wire \Address_Cnt_reg[0]_i_2_n_2 ;
  wire \Address_Cnt_reg[0]_i_2_n_3 ;
  wire \Address_Cnt_reg[0]_i_2_n_4 ;
  wire \Address_Cnt_reg[0]_i_2_n_5 ;
  wire \Address_Cnt_reg[0]_i_2_n_6 ;
  wire \Address_Cnt_reg[0]_i_2_n_7 ;
  wire \Address_Cnt_reg[0]_i_3_n_0 ;
  wire \Address_Cnt_reg[0]_i_3_n_1 ;
  wire \Address_Cnt_reg[0]_i_3_n_2 ;
  wire \Address_Cnt_reg[0]_i_3_n_3 ;
  wire \Address_Cnt_reg[0]_i_8_n_0 ;
  wire \Address_Cnt_reg[0]_i_8_n_1 ;
  wire \Address_Cnt_reg[0]_i_8_n_2 ;
  wire \Address_Cnt_reg[0]_i_8_n_3 ;
  wire \Address_Cnt_reg[12]_i_1_n_0 ;
  wire \Address_Cnt_reg[12]_i_1_n_1 ;
  wire \Address_Cnt_reg[12]_i_1_n_2 ;
  wire \Address_Cnt_reg[12]_i_1_n_3 ;
  wire \Address_Cnt_reg[12]_i_1_n_4 ;
  wire \Address_Cnt_reg[12]_i_1_n_5 ;
  wire \Address_Cnt_reg[12]_i_1_n_6 ;
  wire \Address_Cnt_reg[12]_i_1_n_7 ;
  wire \Address_Cnt_reg[16]_i_1_n_0 ;
  wire \Address_Cnt_reg[16]_i_1_n_1 ;
  wire \Address_Cnt_reg[16]_i_1_n_2 ;
  wire \Address_Cnt_reg[16]_i_1_n_3 ;
  wire \Address_Cnt_reg[16]_i_1_n_4 ;
  wire \Address_Cnt_reg[16]_i_1_n_5 ;
  wire \Address_Cnt_reg[16]_i_1_n_6 ;
  wire \Address_Cnt_reg[16]_i_1_n_7 ;
  wire \Address_Cnt_reg[20]_i_1_n_0 ;
  wire \Address_Cnt_reg[20]_i_1_n_1 ;
  wire \Address_Cnt_reg[20]_i_1_n_2 ;
  wire \Address_Cnt_reg[20]_i_1_n_3 ;
  wire \Address_Cnt_reg[20]_i_1_n_4 ;
  wire \Address_Cnt_reg[20]_i_1_n_5 ;
  wire \Address_Cnt_reg[20]_i_1_n_6 ;
  wire \Address_Cnt_reg[20]_i_1_n_7 ;
  wire \Address_Cnt_reg[24]_i_1_n_0 ;
  wire \Address_Cnt_reg[24]_i_1_n_1 ;
  wire \Address_Cnt_reg[24]_i_1_n_2 ;
  wire \Address_Cnt_reg[24]_i_1_n_3 ;
  wire \Address_Cnt_reg[24]_i_1_n_4 ;
  wire \Address_Cnt_reg[24]_i_1_n_5 ;
  wire \Address_Cnt_reg[24]_i_1_n_6 ;
  wire \Address_Cnt_reg[24]_i_1_n_7 ;
  wire \Address_Cnt_reg[28]_i_1_n_1 ;
  wire \Address_Cnt_reg[28]_i_1_n_2 ;
  wire \Address_Cnt_reg[28]_i_1_n_3 ;
  wire \Address_Cnt_reg[28]_i_1_n_4 ;
  wire \Address_Cnt_reg[28]_i_1_n_5 ;
  wire \Address_Cnt_reg[28]_i_1_n_6 ;
  wire \Address_Cnt_reg[28]_i_1_n_7 ;
  wire \Address_Cnt_reg[4]_i_1_n_0 ;
  wire \Address_Cnt_reg[4]_i_1_n_1 ;
  wire \Address_Cnt_reg[4]_i_1_n_2 ;
  wire \Address_Cnt_reg[4]_i_1_n_3 ;
  wire \Address_Cnt_reg[4]_i_1_n_4 ;
  wire \Address_Cnt_reg[4]_i_1_n_5 ;
  wire \Address_Cnt_reg[4]_i_1_n_6 ;
  wire \Address_Cnt_reg[4]_i_1_n_7 ;
  wire \Address_Cnt_reg[8]_i_1_n_0 ;
  wire \Address_Cnt_reg[8]_i_1_n_1 ;
  wire \Address_Cnt_reg[8]_i_1_n_2 ;
  wire \Address_Cnt_reg[8]_i_1_n_3 ;
  wire \Address_Cnt_reg[8]_i_1_n_4 ;
  wire \Address_Cnt_reg[8]_i_1_n_5 ;
  wire \Address_Cnt_reg[8]_i_1_n_6 ;
  wire \Address_Cnt_reg[8]_i_1_n_7 ;
  wire [10:0]Address_reg;
  wire \Address_reg[0]_i_10_n_0 ;
  wire \Address_reg[0]_i_10_n_1 ;
  wire \Address_reg[0]_i_10_n_2 ;
  wire \Address_reg[0]_i_10_n_3 ;
  wire \Address_reg[0]_i_15_n_0 ;
  wire \Address_reg[0]_i_15_n_1 ;
  wire \Address_reg[0]_i_15_n_2 ;
  wire \Address_reg[0]_i_15_n_3 ;
  wire \Address_reg[0]_i_2_n_0 ;
  wire \Address_reg[0]_i_2_n_1 ;
  wire \Address_reg[0]_i_2_n_2 ;
  wire \Address_reg[0]_i_2_n_3 ;
  wire \Address_reg[0]_i_2_n_4 ;
  wire \Address_reg[0]_i_2_n_5 ;
  wire \Address_reg[0]_i_2_n_6 ;
  wire \Address_reg[0]_i_2_n_7 ;
  wire \Address_reg[0]_i_3_n_0 ;
  wire \Address_reg[0]_i_3_n_1 ;
  wire \Address_reg[0]_i_3_n_2 ;
  wire \Address_reg[0]_i_3_n_3 ;
  wire \Address_reg[0]_i_5_n_0 ;
  wire \Address_reg[0]_i_5_n_1 ;
  wire \Address_reg[0]_i_5_n_2 ;
  wire \Address_reg[0]_i_5_n_3 ;
  wire \Address_reg[12]_i_1_n_0 ;
  wire \Address_reg[12]_i_1_n_1 ;
  wire \Address_reg[12]_i_1_n_2 ;
  wire \Address_reg[12]_i_1_n_3 ;
  wire \Address_reg[12]_i_1_n_4 ;
  wire \Address_reg[12]_i_1_n_5 ;
  wire \Address_reg[12]_i_1_n_6 ;
  wire \Address_reg[12]_i_1_n_7 ;
  wire \Address_reg[16]_i_1_n_0 ;
  wire \Address_reg[16]_i_1_n_1 ;
  wire \Address_reg[16]_i_1_n_2 ;
  wire \Address_reg[16]_i_1_n_3 ;
  wire \Address_reg[16]_i_1_n_4 ;
  wire \Address_reg[16]_i_1_n_5 ;
  wire \Address_reg[16]_i_1_n_6 ;
  wire \Address_reg[16]_i_1_n_7 ;
  wire \Address_reg[20]_i_1_n_0 ;
  wire \Address_reg[20]_i_1_n_1 ;
  wire \Address_reg[20]_i_1_n_2 ;
  wire \Address_reg[20]_i_1_n_3 ;
  wire \Address_reg[20]_i_1_n_4 ;
  wire \Address_reg[20]_i_1_n_5 ;
  wire \Address_reg[20]_i_1_n_6 ;
  wire \Address_reg[20]_i_1_n_7 ;
  wire \Address_reg[24]_i_1_n_0 ;
  wire \Address_reg[24]_i_1_n_1 ;
  wire \Address_reg[24]_i_1_n_2 ;
  wire \Address_reg[24]_i_1_n_3 ;
  wire \Address_reg[24]_i_1_n_4 ;
  wire \Address_reg[24]_i_1_n_5 ;
  wire \Address_reg[24]_i_1_n_6 ;
  wire \Address_reg[24]_i_1_n_7 ;
  wire \Address_reg[28]_i_1_n_1 ;
  wire \Address_reg[28]_i_1_n_2 ;
  wire \Address_reg[28]_i_1_n_3 ;
  wire \Address_reg[28]_i_1_n_4 ;
  wire \Address_reg[28]_i_1_n_5 ;
  wire \Address_reg[28]_i_1_n_6 ;
  wire \Address_reg[28]_i_1_n_7 ;
  wire \Address_reg[4]_i_1_n_0 ;
  wire \Address_reg[4]_i_1_n_1 ;
  wire \Address_reg[4]_i_1_n_2 ;
  wire \Address_reg[4]_i_1_n_3 ;
  wire \Address_reg[4]_i_1_n_4 ;
  wire \Address_reg[4]_i_1_n_5 ;
  wire \Address_reg[4]_i_1_n_6 ;
  wire \Address_reg[4]_i_1_n_7 ;
  wire \Address_reg[8]_i_1_n_0 ;
  wire \Address_reg[8]_i_1_n_1 ;
  wire \Address_reg[8]_i_1_n_2 ;
  wire \Address_reg[8]_i_1_n_3 ;
  wire \Address_reg[8]_i_1_n_4 ;
  wire \Address_reg[8]_i_1_n_5 ;
  wire \Address_reg[8]_i_1_n_6 ;
  wire \Address_reg[8]_i_1_n_7 ;
  wire [31:11]Address_reg__0;
  (* IBUF_LOW_PWR *) wire Clock;
  wire Clock_0;
  wire [11:7]Compare;
  wire \Compare[10]_i_1_n_0 ;
  wire \Compare[11]_i_1_n_0 ;
  wire \Compare[7]_i_1_n_0 ;
  wire \Compare[8]_i_1_n_0 ;
  wire \Compare[9]_i_1_n_0 ;
  wire [23:0]DataOut;
  wire LRCLK;
  wire \LRCLK_Cnt_reg[0]_i_3_n_0 ;
  wire LRCLK_OBUF;
  wire Locked;
  wire Locked_Int;
  wire Locked_OBUF;
  wire MCLK;
  wire MCLK_OBUF;
  wire ResetN;
  wire ResetN_IBUF;
  wire SCLK;
  wire SCLK_OBUF;
  wire SD;
  wire SD_OBUF;
  wire [2:0]Switch;
  wire [2:0]Switch_IBUF;
  wire [3:3]\NLW_Address_Cnt_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_Address_Cnt_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_Address_Cnt_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_Address_Cnt_reg[0]_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_Address_Cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_Address_reg[0]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_Address_reg[0]_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_Address_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_Address_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_Address_reg[28]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("I2S_TB_time_synth.sdf",,,,"tool_control");
end
  LUT2 #(
    .INIT(4'h2)) 
    \Address[0]_i_1 
       (.I0(\Address_Cnt_reg[0]_i_1_n_1 ),
        .I1(\Address_reg[0]_i_3_n_0 ),
        .O(Address));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_11 
       (.I0(Address_reg__0[22]),
        .I1(Address_reg__0[23]),
        .O(\Address[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_12 
       (.I0(Address_reg__0[20]),
        .I1(Address_reg__0[21]),
        .O(\Address[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_13 
       (.I0(Address_reg__0[18]),
        .I1(Address_reg__0[19]),
        .O(\Address[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_14 
       (.I0(Address_reg__0[16]),
        .I1(Address_reg__0[17]),
        .O(\Address[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_16 
       (.I0(Address_reg__0[14]),
        .I1(Address_reg__0[15]),
        .O(\Address[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_17 
       (.I0(Address_reg__0[12]),
        .I1(Address_reg__0[13]),
        .O(\Address[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_18 
       (.I0(Address_reg[10]),
        .I1(Address_reg__0[11]),
        .O(\Address[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_19 
       (.I0(Address_reg[8]),
        .I1(Address_reg[9]),
        .O(\Address[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_20 
       (.I0(Address_reg[6]),
        .I1(Address_reg[7]),
        .O(\Address[0]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Address[0]_i_21 
       (.I0(Address_reg[5]),
        .O(\Address[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \Address[0]_i_22 
       (.I0(Address_reg[0]),
        .I1(Address_reg[1]),
        .O(\Address[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Address[0]_i_23 
       (.I0(Address_reg[6]),
        .I1(Address_reg[7]),
        .O(\Address[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Address[0]_i_24 
       (.I0(Address_reg[5]),
        .I1(Address_reg[4]),
        .O(\Address[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_25 
       (.I0(Address_reg[2]),
        .I1(Address_reg[3]),
        .O(\Address[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Address[0]_i_26 
       (.I0(Address_reg[0]),
        .I1(Address_reg[1]),
        .O(\Address[0]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Address[0]_i_4 
       (.I0(Address_reg[0]),
        .O(\Address[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_6 
       (.I0(Address_reg__0[30]),
        .I1(Address_reg__0[31]),
        .O(\Address[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_7 
       (.I0(Address_reg__0[28]),
        .I1(Address_reg__0[29]),
        .O(\Address[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_8 
       (.I0(Address_reg__0[26]),
        .I1(Address_reg__0[27]),
        .O(\Address[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_9 
       (.I0(Address_reg__0[24]),
        .I1(Address_reg__0[25]),
        .O(\Address[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \Address_Cnt[0]_i_10 
       (.I0(Address_Cnt_reg[20]),
        .I1(Address_Cnt_reg[19]),
        .I2(Address_Cnt_reg[18]),
        .O(\Address_Cnt[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \Address_Cnt[0]_i_11 
       (.I0(Address_Cnt_reg[17]),
        .I1(Address_Cnt_reg[16]),
        .I2(Address_Cnt_reg[15]),
        .O(\Address_Cnt[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \Address_Cnt[0]_i_12 
       (.I0(Address_Cnt_reg[14]),
        .I1(Address_Cnt_reg[13]),
        .I2(Address_Cnt_reg[12]),
        .O(\Address_Cnt[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Address_Cnt[0]_i_13 
       (.I0(Address_Cnt_reg[9]),
        .I1(Compare[9]),
        .I2(Compare[11]),
        .I3(Address_Cnt_reg[11]),
        .I4(Compare[10]),
        .I5(Address_Cnt_reg[10]),
        .O(\Address_Cnt[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00009009)) 
    \Address_Cnt[0]_i_14 
       (.I0(Compare[8]),
        .I1(Address_Cnt_reg[8]),
        .I2(Compare[7]),
        .I3(Address_Cnt_reg[7]),
        .I4(Address_Cnt_reg[6]),
        .O(\Address_Cnt[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \Address_Cnt[0]_i_15 
       (.I0(Address_Cnt_reg[5]),
        .I1(Address_Cnt_reg[4]),
        .I2(Address_Cnt_reg[3]),
        .O(\Address_Cnt[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \Address_Cnt[0]_i_16 
       (.I0(Address_Cnt_reg[2]),
        .I1(Address_Cnt_reg[1]),
        .I2(Address_Cnt_reg[0]),
        .O(\Address_Cnt[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address_Cnt[0]_i_4 
       (.I0(Address_Cnt_reg[30]),
        .I1(Address_Cnt_reg[31]),
        .O(\Address_Cnt[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \Address_Cnt[0]_i_5 
       (.I0(Address_Cnt_reg[29]),
        .I1(Address_Cnt_reg[28]),
        .I2(Address_Cnt_reg[27]),
        .O(\Address_Cnt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \Address_Cnt[0]_i_6 
       (.I0(Address_Cnt_reg[26]),
        .I1(Address_Cnt_reg[25]),
        .I2(Address_Cnt_reg[24]),
        .O(\Address_Cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Address_Cnt[0]_i_7 
       (.I0(Address_Cnt_reg[0]),
        .O(\Address_Cnt[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \Address_Cnt[0]_i_9 
       (.I0(Address_Cnt_reg[23]),
        .I1(Address_Cnt_reg[22]),
        .I2(Address_Cnt_reg[21]),
        .O(\Address_Cnt[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[0] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[0]_i_2_n_7 ),
        .Q(Address_Cnt_reg[0]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  CARRY4 \Address_Cnt_reg[0]_i_1 
       (.CI(\Address_Cnt_reg[0]_i_3_n_0 ),
        .CO({\NLW_Address_Cnt_reg[0]_i_1_CO_UNCONNECTED [3],\Address_Cnt_reg[0]_i_1_n_1 ,\Address_Cnt_reg[0]_i_1_n_2 ,\Address_Cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Address_Cnt_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,\Address_Cnt[0]_i_4_n_0 ,\Address_Cnt[0]_i_5_n_0 ,\Address_Cnt[0]_i_6_n_0 }));
  CARRY4 \Address_Cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Address_Cnt_reg[0]_i_2_n_0 ,\Address_Cnt_reg[0]_i_2_n_1 ,\Address_Cnt_reg[0]_i_2_n_2 ,\Address_Cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Address_Cnt_reg[0]_i_2_n_4 ,\Address_Cnt_reg[0]_i_2_n_5 ,\Address_Cnt_reg[0]_i_2_n_6 ,\Address_Cnt_reg[0]_i_2_n_7 }),
        .S({Address_Cnt_reg[3:1],\Address_Cnt[0]_i_7_n_0 }));
  CARRY4 \Address_Cnt_reg[0]_i_3 
       (.CI(\Address_Cnt_reg[0]_i_8_n_0 ),
        .CO({\Address_Cnt_reg[0]_i_3_n_0 ,\Address_Cnt_reg[0]_i_3_n_1 ,\Address_Cnt_reg[0]_i_3_n_2 ,\Address_Cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Address_Cnt_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\Address_Cnt[0]_i_9_n_0 ,\Address_Cnt[0]_i_10_n_0 ,\Address_Cnt[0]_i_11_n_0 ,\Address_Cnt[0]_i_12_n_0 }));
  CARRY4 \Address_Cnt_reg[0]_i_8 
       (.CI(1'b0),
        .CO({\Address_Cnt_reg[0]_i_8_n_0 ,\Address_Cnt_reg[0]_i_8_n_1 ,\Address_Cnt_reg[0]_i_8_n_2 ,\Address_Cnt_reg[0]_i_8_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Address_Cnt_reg[0]_i_8_O_UNCONNECTED [3:0]),
        .S({\Address_Cnt[0]_i_13_n_0 ,\Address_Cnt[0]_i_14_n_0 ,\Address_Cnt[0]_i_15_n_0 ,\Address_Cnt[0]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[10] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[8]_i_1_n_5 ),
        .Q(Address_Cnt_reg[10]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[11] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[8]_i_1_n_4 ),
        .Q(Address_Cnt_reg[11]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[12] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[12]_i_1_n_7 ),
        .Q(Address_Cnt_reg[12]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  CARRY4 \Address_Cnt_reg[12]_i_1 
       (.CI(\Address_Cnt_reg[8]_i_1_n_0 ),
        .CO({\Address_Cnt_reg[12]_i_1_n_0 ,\Address_Cnt_reg[12]_i_1_n_1 ,\Address_Cnt_reg[12]_i_1_n_2 ,\Address_Cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_Cnt_reg[12]_i_1_n_4 ,\Address_Cnt_reg[12]_i_1_n_5 ,\Address_Cnt_reg[12]_i_1_n_6 ,\Address_Cnt_reg[12]_i_1_n_7 }),
        .S(Address_Cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[13] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[12]_i_1_n_6 ),
        .Q(Address_Cnt_reg[13]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[14] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[12]_i_1_n_5 ),
        .Q(Address_Cnt_reg[14]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[15] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[12]_i_1_n_4 ),
        .Q(Address_Cnt_reg[15]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[16] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[16]_i_1_n_7 ),
        .Q(Address_Cnt_reg[16]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  CARRY4 \Address_Cnt_reg[16]_i_1 
       (.CI(\Address_Cnt_reg[12]_i_1_n_0 ),
        .CO({\Address_Cnt_reg[16]_i_1_n_0 ,\Address_Cnt_reg[16]_i_1_n_1 ,\Address_Cnt_reg[16]_i_1_n_2 ,\Address_Cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_Cnt_reg[16]_i_1_n_4 ,\Address_Cnt_reg[16]_i_1_n_5 ,\Address_Cnt_reg[16]_i_1_n_6 ,\Address_Cnt_reg[16]_i_1_n_7 }),
        .S(Address_Cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[17] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[16]_i_1_n_6 ),
        .Q(Address_Cnt_reg[17]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[18] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[16]_i_1_n_5 ),
        .Q(Address_Cnt_reg[18]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[19] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[16]_i_1_n_4 ),
        .Q(Address_Cnt_reg[19]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[1] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[0]_i_2_n_6 ),
        .Q(Address_Cnt_reg[1]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[20] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[20]_i_1_n_7 ),
        .Q(Address_Cnt_reg[20]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  CARRY4 \Address_Cnt_reg[20]_i_1 
       (.CI(\Address_Cnt_reg[16]_i_1_n_0 ),
        .CO({\Address_Cnt_reg[20]_i_1_n_0 ,\Address_Cnt_reg[20]_i_1_n_1 ,\Address_Cnt_reg[20]_i_1_n_2 ,\Address_Cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_Cnt_reg[20]_i_1_n_4 ,\Address_Cnt_reg[20]_i_1_n_5 ,\Address_Cnt_reg[20]_i_1_n_6 ,\Address_Cnt_reg[20]_i_1_n_7 }),
        .S(Address_Cnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[21] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[20]_i_1_n_6 ),
        .Q(Address_Cnt_reg[21]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[22] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[20]_i_1_n_5 ),
        .Q(Address_Cnt_reg[22]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[23] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[20]_i_1_n_4 ),
        .Q(Address_Cnt_reg[23]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[24] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[24]_i_1_n_7 ),
        .Q(Address_Cnt_reg[24]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  CARRY4 \Address_Cnt_reg[24]_i_1 
       (.CI(\Address_Cnt_reg[20]_i_1_n_0 ),
        .CO({\Address_Cnt_reg[24]_i_1_n_0 ,\Address_Cnt_reg[24]_i_1_n_1 ,\Address_Cnt_reg[24]_i_1_n_2 ,\Address_Cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_Cnt_reg[24]_i_1_n_4 ,\Address_Cnt_reg[24]_i_1_n_5 ,\Address_Cnt_reg[24]_i_1_n_6 ,\Address_Cnt_reg[24]_i_1_n_7 }),
        .S(Address_Cnt_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[25] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[24]_i_1_n_6 ),
        .Q(Address_Cnt_reg[25]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[26] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[24]_i_1_n_5 ),
        .Q(Address_Cnt_reg[26]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[27] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[24]_i_1_n_4 ),
        .Q(Address_Cnt_reg[27]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[28] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[28]_i_1_n_7 ),
        .Q(Address_Cnt_reg[28]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  CARRY4 \Address_Cnt_reg[28]_i_1 
       (.CI(\Address_Cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_Address_Cnt_reg[28]_i_1_CO_UNCONNECTED [3],\Address_Cnt_reg[28]_i_1_n_1 ,\Address_Cnt_reg[28]_i_1_n_2 ,\Address_Cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_Cnt_reg[28]_i_1_n_4 ,\Address_Cnt_reg[28]_i_1_n_5 ,\Address_Cnt_reg[28]_i_1_n_6 ,\Address_Cnt_reg[28]_i_1_n_7 }),
        .S(Address_Cnt_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[29] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[28]_i_1_n_6 ),
        .Q(Address_Cnt_reg[29]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[2] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[0]_i_2_n_5 ),
        .Q(Address_Cnt_reg[2]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[30] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[28]_i_1_n_5 ),
        .Q(Address_Cnt_reg[30]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[31] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[28]_i_1_n_4 ),
        .Q(Address_Cnt_reg[31]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[3] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[0]_i_2_n_4 ),
        .Q(Address_Cnt_reg[3]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[4] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[4]_i_1_n_7 ),
        .Q(Address_Cnt_reg[4]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  CARRY4 \Address_Cnt_reg[4]_i_1 
       (.CI(\Address_Cnt_reg[0]_i_2_n_0 ),
        .CO({\Address_Cnt_reg[4]_i_1_n_0 ,\Address_Cnt_reg[4]_i_1_n_1 ,\Address_Cnt_reg[4]_i_1_n_2 ,\Address_Cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_Cnt_reg[4]_i_1_n_4 ,\Address_Cnt_reg[4]_i_1_n_5 ,\Address_Cnt_reg[4]_i_1_n_6 ,\Address_Cnt_reg[4]_i_1_n_7 }),
        .S(Address_Cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[5] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[4]_i_1_n_6 ),
        .Q(Address_Cnt_reg[5]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[6] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[4]_i_1_n_5 ),
        .Q(Address_Cnt_reg[6]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[7] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[4]_i_1_n_4 ),
        .Q(Address_Cnt_reg[7]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[8] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[8]_i_1_n_7 ),
        .Q(Address_Cnt_reg[8]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  CARRY4 \Address_Cnt_reg[8]_i_1 
       (.CI(\Address_Cnt_reg[4]_i_1_n_0 ),
        .CO({\Address_Cnt_reg[8]_i_1_n_0 ,\Address_Cnt_reg[8]_i_1_n_1 ,\Address_Cnt_reg[8]_i_1_n_2 ,\Address_Cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_Cnt_reg[8]_i_1_n_4 ,\Address_Cnt_reg[8]_i_1_n_5 ,\Address_Cnt_reg[8]_i_1_n_6 ,\Address_Cnt_reg[8]_i_1_n_7 }),
        .S(Address_Cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_Cnt_reg[9] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Address_Cnt_reg[8]_i_1_n_6 ),
        .Q(Address_Cnt_reg[9]),
        .R(\Address_Cnt_reg[0]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[0] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[0]_i_2_n_7 ),
        .Q(Address_reg[0]),
        .R(Address));
  CARRY4 \Address_reg[0]_i_10 
       (.CI(\Address_reg[0]_i_15_n_0 ),
        .CO({\Address_reg[0]_i_10_n_0 ,\Address_reg[0]_i_10_n_1 ,\Address_reg[0]_i_10_n_2 ,\Address_reg[0]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Address_reg[0]_i_10_O_UNCONNECTED [3:0]),
        .S({\Address[0]_i_16_n_0 ,\Address[0]_i_17_n_0 ,\Address[0]_i_18_n_0 ,\Address[0]_i_19_n_0 }));
  CARRY4 \Address_reg[0]_i_15 
       (.CI(1'b0),
        .CO({\Address_reg[0]_i_15_n_0 ,\Address_reg[0]_i_15_n_1 ,\Address_reg[0]_i_15_n_2 ,\Address_reg[0]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\Address[0]_i_20_n_0 ,\Address[0]_i_21_n_0 ,1'b0,\Address[0]_i_22_n_0 }),
        .O(\NLW_Address_reg[0]_i_15_O_UNCONNECTED [3:0]),
        .S({\Address[0]_i_23_n_0 ,\Address[0]_i_24_n_0 ,\Address[0]_i_25_n_0 ,\Address[0]_i_26_n_0 }));
  CARRY4 \Address_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Address_reg[0]_i_2_n_0 ,\Address_reg[0]_i_2_n_1 ,\Address_reg[0]_i_2_n_2 ,\Address_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Address_reg[0]_i_2_n_4 ,\Address_reg[0]_i_2_n_5 ,\Address_reg[0]_i_2_n_6 ,\Address_reg[0]_i_2_n_7 }),
        .S({Address_reg[3:1],\Address[0]_i_4_n_0 }));
  CARRY4 \Address_reg[0]_i_3 
       (.CI(\Address_reg[0]_i_5_n_0 ),
        .CO({\Address_reg[0]_i_3_n_0 ,\Address_reg[0]_i_3_n_1 ,\Address_reg[0]_i_3_n_2 ,\Address_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({Address_reg__0[31],1'b0,1'b0,1'b0}),
        .O(\NLW_Address_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\Address[0]_i_6_n_0 ,\Address[0]_i_7_n_0 ,\Address[0]_i_8_n_0 ,\Address[0]_i_9_n_0 }));
  CARRY4 \Address_reg[0]_i_5 
       (.CI(\Address_reg[0]_i_10_n_0 ),
        .CO({\Address_reg[0]_i_5_n_0 ,\Address_reg[0]_i_5_n_1 ,\Address_reg[0]_i_5_n_2 ,\Address_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Address_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\Address[0]_i_11_n_0 ,\Address[0]_i_12_n_0 ,\Address[0]_i_13_n_0 ,\Address[0]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[10] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[8]_i_1_n_5 ),
        .Q(Address_reg[10]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[11] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[8]_i_1_n_4 ),
        .Q(Address_reg__0[11]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[12] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[12]_i_1_n_7 ),
        .Q(Address_reg__0[12]),
        .R(Address));
  CARRY4 \Address_reg[12]_i_1 
       (.CI(\Address_reg[8]_i_1_n_0 ),
        .CO({\Address_reg[12]_i_1_n_0 ,\Address_reg[12]_i_1_n_1 ,\Address_reg[12]_i_1_n_2 ,\Address_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[12]_i_1_n_4 ,\Address_reg[12]_i_1_n_5 ,\Address_reg[12]_i_1_n_6 ,\Address_reg[12]_i_1_n_7 }),
        .S(Address_reg__0[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[13] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[12]_i_1_n_6 ),
        .Q(Address_reg__0[13]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[14] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[12]_i_1_n_5 ),
        .Q(Address_reg__0[14]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[15] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[12]_i_1_n_4 ),
        .Q(Address_reg__0[15]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[16] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[16]_i_1_n_7 ),
        .Q(Address_reg__0[16]),
        .R(Address));
  CARRY4 \Address_reg[16]_i_1 
       (.CI(\Address_reg[12]_i_1_n_0 ),
        .CO({\Address_reg[16]_i_1_n_0 ,\Address_reg[16]_i_1_n_1 ,\Address_reg[16]_i_1_n_2 ,\Address_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[16]_i_1_n_4 ,\Address_reg[16]_i_1_n_5 ,\Address_reg[16]_i_1_n_6 ,\Address_reg[16]_i_1_n_7 }),
        .S(Address_reg__0[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[17] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[16]_i_1_n_6 ),
        .Q(Address_reg__0[17]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[18] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[16]_i_1_n_5 ),
        .Q(Address_reg__0[18]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[19] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[16]_i_1_n_4 ),
        .Q(Address_reg__0[19]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[1] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[0]_i_2_n_6 ),
        .Q(Address_reg[1]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[20] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[20]_i_1_n_7 ),
        .Q(Address_reg__0[20]),
        .R(Address));
  CARRY4 \Address_reg[20]_i_1 
       (.CI(\Address_reg[16]_i_1_n_0 ),
        .CO({\Address_reg[20]_i_1_n_0 ,\Address_reg[20]_i_1_n_1 ,\Address_reg[20]_i_1_n_2 ,\Address_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[20]_i_1_n_4 ,\Address_reg[20]_i_1_n_5 ,\Address_reg[20]_i_1_n_6 ,\Address_reg[20]_i_1_n_7 }),
        .S(Address_reg__0[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[21] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[20]_i_1_n_6 ),
        .Q(Address_reg__0[21]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[22] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[20]_i_1_n_5 ),
        .Q(Address_reg__0[22]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[23] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[20]_i_1_n_4 ),
        .Q(Address_reg__0[23]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[24] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[24]_i_1_n_7 ),
        .Q(Address_reg__0[24]),
        .R(Address));
  CARRY4 \Address_reg[24]_i_1 
       (.CI(\Address_reg[20]_i_1_n_0 ),
        .CO({\Address_reg[24]_i_1_n_0 ,\Address_reg[24]_i_1_n_1 ,\Address_reg[24]_i_1_n_2 ,\Address_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[24]_i_1_n_4 ,\Address_reg[24]_i_1_n_5 ,\Address_reg[24]_i_1_n_6 ,\Address_reg[24]_i_1_n_7 }),
        .S(Address_reg__0[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[25] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[24]_i_1_n_6 ),
        .Q(Address_reg__0[25]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[26] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[24]_i_1_n_5 ),
        .Q(Address_reg__0[26]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[27] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[24]_i_1_n_4 ),
        .Q(Address_reg__0[27]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[28] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[28]_i_1_n_7 ),
        .Q(Address_reg__0[28]),
        .R(Address));
  CARRY4 \Address_reg[28]_i_1 
       (.CI(\Address_reg[24]_i_1_n_0 ),
        .CO({\NLW_Address_reg[28]_i_1_CO_UNCONNECTED [3],\Address_reg[28]_i_1_n_1 ,\Address_reg[28]_i_1_n_2 ,\Address_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[28]_i_1_n_4 ,\Address_reg[28]_i_1_n_5 ,\Address_reg[28]_i_1_n_6 ,\Address_reg[28]_i_1_n_7 }),
        .S(Address_reg__0[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[29] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[28]_i_1_n_6 ),
        .Q(Address_reg__0[29]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[2] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[0]_i_2_n_5 ),
        .Q(Address_reg[2]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[30] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[28]_i_1_n_5 ),
        .Q(Address_reg__0[30]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[31] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[28]_i_1_n_4 ),
        .Q(Address_reg__0[31]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[3] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[0]_i_2_n_4 ),
        .Q(Address_reg[3]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[4] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[4]_i_1_n_7 ),
        .Q(Address_reg[4]),
        .R(Address));
  CARRY4 \Address_reg[4]_i_1 
       (.CI(\Address_reg[0]_i_2_n_0 ),
        .CO({\Address_reg[4]_i_1_n_0 ,\Address_reg[4]_i_1_n_1 ,\Address_reg[4]_i_1_n_2 ,\Address_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[4]_i_1_n_4 ,\Address_reg[4]_i_1_n_5 ,\Address_reg[4]_i_1_n_6 ,\Address_reg[4]_i_1_n_7 }),
        .S(Address_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[5] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[4]_i_1_n_6 ),
        .Q(Address_reg[5]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[6] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[4]_i_1_n_5 ),
        .Q(Address_reg[6]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[7] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[4]_i_1_n_4 ),
        .Q(Address_reg[7]),
        .R(Address));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[8] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[8]_i_1_n_7 ),
        .Q(Address_reg[8]),
        .R(Address));
  CARRY4 \Address_reg[8]_i_1 
       (.CI(\Address_reg[4]_i_1_n_0 ),
        .CO({\Address_reg[8]_i_1_n_0 ,\Address_reg[8]_i_1_n_1 ,\Address_reg[8]_i_1_n_2 ,\Address_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[8]_i_1_n_4 ,\Address_reg[8]_i_1_n_5 ,\Address_reg[8]_i_1_n_6 ,\Address_reg[8]_i_1_n_7 }),
        .S({Address_reg__0[11],Address_reg[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \Address_reg[9] 
       (.C(MCLK_OBUF),
        .CE(\Address_Cnt_reg[0]_i_1_n_1 ),
        .D(\Address_reg[8]_i_1_n_6 ),
        .Q(Address_reg[9]),
        .R(Address));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h9C)) 
    \Compare[10]_i_1 
       (.I0(Switch_IBUF[0]),
        .I1(Switch_IBUF[1]),
        .I2(Switch_IBUF[2]),
        .O(\Compare[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \Compare[11]_i_1 
       (.I0(Switch_IBUF[2]),
        .I1(Switch_IBUF[1]),
        .I2(Switch_IBUF[0]),
        .O(\Compare[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Compare[7]_i_1 
       (.I0(Switch_IBUF[0]),
        .O(\Compare[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Compare[8]_i_1 
       (.I0(Switch_IBUF[1]),
        .O(\Compare[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Compare[9]_i_1 
       (.I0(Switch_IBUF[0]),
        .I1(Switch_IBUF[2]),
        .O(\Compare[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Compare_reg[10] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Compare[10]_i_1_n_0 ),
        .Q(Compare[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Compare_reg[11] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Compare[11]_i_1_n_0 ),
        .Q(Compare[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \Compare_reg[7] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Compare[7]_i_1_n_0 ),
        .Q(Compare[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \Compare_reg[8] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Compare[8]_i_1_n_0 ),
        .Q(Compare[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Compare_reg[9] 
       (.C(MCLK_OBUF),
        .CE(1'b1),
        .D(\Compare[9]_i_1_n_0 ),
        .Q(Compare[9]),
        .R(1'b0));
  (* hw_handoff = "DataROM.hwdef" *) 
  DataROM Data
       (.Address(Address_reg),
        .Clock(MCLK_OBUF),
        .DataOut(DataOut));
  I2S I2S_Transmitter
       (.Clock(Clock_0),
        .ClockOut(MCLK_OBUF),
        .Clock_Int_reg_0(\LRCLK_Cnt_reg[0]_i_3_n_0 ),
        .DataOut(DataOut),
        .LRCLK_OBUF(LRCLK_OBUF),
        .Locked(Locked_Int),
        .Locked_OBUF(Locked_OBUF),
        .ResetN_IBUF(ResetN_IBUF),
        .SCLK_OBUF(SCLK_OBUF),
        .SD_OBUF(SD_OBUF));
  (* hw_handoff = "ClockGeneration.hwdef" *) 
  ClockGeneration InputClock
       (.ClockIn(Clock),
        .ClockOut(MCLK_OBUF),
        .Locked(Locked_Int));
  LUT1 #(
    .INIT(2'h1)) 
    \LRCLK_Cnt_reg[0]_i_3 
       (.I0(Clock_0),
        .O(\LRCLK_Cnt_reg[0]_i_3_n_0 ));
  OBUF LRCLK_OBUF_inst
       (.I(LRCLK_OBUF),
        .O(LRCLK));
  OBUF Locked_OBUF_inst
       (.I(Locked_OBUF),
        .O(Locked));
  OBUF MCLK_OBUF_inst
       (.I(MCLK_OBUF),
        .O(MCLK));
  IBUF ResetN_IBUF_inst
       (.I(ResetN),
        .O(ResetN_IBUF));
  OBUF SCLK_OBUF_inst
       (.I(SCLK_OBUF),
        .O(SCLK));
  OBUF SD_OBUF_inst
       (.I(SD_OBUF),
        .O(SD));
  IBUF \Switch_IBUF[0]_inst 
       (.I(Switch[0]),
        .O(Switch_IBUF[0]));
  IBUF \Switch_IBUF[1]_inst 
       (.I(Switch[1]),
        .O(Switch_IBUF[1]));
  IBUF \Switch_IBUF[2]_inst 
       (.I(Switch[2]),
        .O(Switch_IBUF[2]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module DataROM_blk_mem_gen_0_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [23:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [23:0]douta;

  DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[8:0]));
  DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[23:9]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [8:0]douta;

  DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0
   (douta,
    clka,
    addra);
  output [14:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [14:0]douta;

  DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [8:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [8:0]douta;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h000000000000000000000000000000000000000067BD8222F5C01B38DF75BD78),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h37E61BD30CC6FFB7EFA7E19EE1AD04EA647625766F167289620477C3EE020500),
    .INIT_01(256'h7C3546A7544472D56720F7E6E4E9EEE9D3A555DD355537D32220C40AED677410),
    .INIT_02(256'hCE4BF9DF05722B389E638C1E1D8F75D3AD03D82D035930865AAB76B86E942620),
    .INIT_03(256'h000000000000000000000000000000000000000000000000000000002930487A),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta,
    clka,
    addra);
  output [14:0]douta;
  input clka;
  input [10:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [10:0]addra;
  wire clka;
  wire [14:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00330031002E002B002800250022001E001B00170013000F000B000800040000),
    .INIT_01(256'h003B003C003E003E003F003F003F003F003F003E003D003C003B003900380035),
    .INIT_02(256'h000C001000140017001B001F002200250029002C002E0031003300360038003A),
    .INIT_03(256'h005100540057005A005E006100650068006C007000740078007C000000040008),
    .INIT_04(256'h0041004100400040004000400040004100420043004400460048004A004C004F),
    .INIT_05(256'h006B006700630060005D0059005600530050004E004B00490047004500440042),
    .INIT_06(256'h000000000000000000000000000000000000000000000000007B00770073006F),
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
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_20 ,douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module DataROM_blk_mem_gen_0_0_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [23:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [23:0]douta;

  DataROM_blk_mem_gen_0_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "11" *) (* C_ADDRB_WIDTH = "11" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.66155 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "NONE" *) 
(* C_INIT_FILE_NAME = "DataROM_blk_mem_gen_0_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "2048" *) (* C_READ_DEPTH_B = "2048" *) (* C_READ_WIDTH_A = "24" *) 
(* C_READ_WIDTH_B = "24" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "2048" *) (* C_WRITE_DEPTH_B = "2048" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "24" *) (* C_WRITE_WIDTH_B = "24" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [23:0]dina;
  output [23:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [10:0]addrb;
  input [23:0]dinb;
  output [23:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [10:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [23:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [23:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [10:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [10:0]addra;
  wire clka;
  wire [23:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    addra);
  output [23:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [23:0]douta;

  DataROM_blk_mem_gen_0_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
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
