// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jul 17 11:54:06 2019
// Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S_Audio/WithoutBus/I2S_Audio.sim/sim_1/impl/timing/xsim/I2S_TB_time_impl.v
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
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_ClockGeneration_clk_wiz_0_0),
        .O(clk_out1));
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  (* box_type = "PRIMITIVE" *) 
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLOCK, CLK_DOMAIN DataROM_Clock, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input Clock;
  output [15:0]DataOut;

  wire [10:0]Address;
  wire Clock;
  wire [15:0]DataOut;

  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
  DataROM_blk_mem_gen_0_0 AudioData
       (.addra(Address),
        .clka(Clock),
        .douta(DataOut));
endmodule

(* CHECK_LICENSE_TYPE = "DataROM_blk_mem_gen_0_0,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
module DataROM_blk_mem_gen_0_0
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [15:0]douta;
  wire NLW_U0_clkb_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_deepsleep_UNCONNECTED;
  wire NLW_U0_eccpipece_UNCONNECTED;
  wire NLW_U0_ena_UNCONNECTED;
  wire NLW_U0_enb_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_regcea_UNCONNECTED;
  wire NLW_U0_regceb_UNCONNECTED;
  wire NLW_U0_rsta_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectdbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectsbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_shutdown_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire [10:0]NLW_U0_addrb_UNCONNECTED;
  wire [15:0]NLW_U0_dina_UNCONNECTED;
  wire [15:0]NLW_U0_dinb_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_wea_UNCONNECTED;
  wire [0:0]NLW_U0_web_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.43555 mW" *) 
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
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  DataROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb(NLW_U0_addrb_UNCONNECTED[10:0]),
        .clka(clka),
        .clkb(NLW_U0_clkb_UNCONNECTED),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(NLW_U0_deepsleep_UNCONNECTED),
        .dina(NLW_U0_dina_UNCONNECTED[15:0]),
        .dinb(NLW_U0_dinb_UNCONNECTED[15:0]),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(NLW_U0_eccpipece_UNCONNECTED),
        .ena(NLW_U0_ena_UNCONNECTED),
        .enb(NLW_U0_enb_UNCONNECTED),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(NLW_U0_regcea_UNCONNECTED),
        .regceb(NLW_U0_regceb_UNCONNECTED),
        .rsta(NLW_U0_rsta_UNCONNECTED),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(NLW_U0_rstb_UNCONNECTED),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[3:0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[3:0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(NLW_U0_s_axi_injectdbiterr_UNCONNECTED),
        .s_axi_injectsbiterr(NLW_U0_s_axi_injectsbiterr_UNCONNECTED),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[15:0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(NLW_U0_shutdown_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .wea(NLW_U0_wea_UNCONNECTED[0]),
        .web(NLW_U0_web_UNCONNECTED[0]));
endmodule

module I2S
   (SCLK_OBUF,
    O,
    TREADY,
    SD_OBUF,
    ClockOut,
    Locked,
    Resetn_IBUF,
    DataOut,
    out,
    SCLK_OBUF_BUFG);
  output SCLK_OBUF;
  output [0:0]O;
  output TREADY;
  output SD_OBUF;
  input ClockOut;
  input Locked;
  input Resetn_IBUF;
  input [15:0]DataOut;
  input [31:0]out;
  input SCLK_OBUF_BUFG;

  wire ClockOut;
  wire Clock_Int_i_1_n_0;
  wire [15:0]DataOut;
  wire \FSM_sequential_NextState[1]_i_10_n_0 ;
  wire \FSM_sequential_NextState[1]_i_12_n_0 ;
  wire \FSM_sequential_NextState[1]_i_13_n_0 ;
  wire \FSM_sequential_NextState[1]_i_14_n_0 ;
  wire \FSM_sequential_NextState[1]_i_3_n_0 ;
  wire \FSM_sequential_NextState[1]_i_4_n_0 ;
  wire \FSM_sequential_NextState[1]_i_6_n_0 ;
  wire \FSM_sequential_NextState[1]_i_7_n_0 ;
  wire \FSM_sequential_NextState[1]_i_8_n_0 ;
  wire \FSM_sequential_NextState[1]_i_9_n_0 ;
  wire Locked;
  wire [31:0]MCLK_Cnt;
  wire \MCLK_Cnt[31]_i_10_n_0 ;
  wire \MCLK_Cnt[31]_i_11_n_0 ;
  wire \MCLK_Cnt[31]_i_12_n_0 ;
  wire \MCLK_Cnt[31]_i_1_n_0 ;
  wire \MCLK_Cnt[31]_i_4_n_0 ;
  wire \MCLK_Cnt[31]_i_5_n_0 ;
  wire \MCLK_Cnt[31]_i_6_n_0 ;
  wire \MCLK_Cnt[31]_i_7_n_0 ;
  wire \MCLK_Cnt[31]_i_8_n_0 ;
  wire \MCLK_Cnt[31]_i_9_n_0 ;
  wire [31:0]MCLK_Cnt_0;
  wire \MCLK_Cnt_reg[12]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[12]_i_2_n_4 ;
  wire \MCLK_Cnt_reg[12]_i_2_n_5 ;
  wire \MCLK_Cnt_reg[12]_i_2_n_6 ;
  wire \MCLK_Cnt_reg[12]_i_2_n_7 ;
  wire \MCLK_Cnt_reg[16]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[16]_i_2_n_4 ;
  wire \MCLK_Cnt_reg[16]_i_2_n_5 ;
  wire \MCLK_Cnt_reg[16]_i_2_n_6 ;
  wire \MCLK_Cnt_reg[16]_i_2_n_7 ;
  wire \MCLK_Cnt_reg[20]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[20]_i_2_n_4 ;
  wire \MCLK_Cnt_reg[20]_i_2_n_5 ;
  wire \MCLK_Cnt_reg[20]_i_2_n_6 ;
  wire \MCLK_Cnt_reg[20]_i_2_n_7 ;
  wire \MCLK_Cnt_reg[24]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[24]_i_2_n_4 ;
  wire \MCLK_Cnt_reg[24]_i_2_n_5 ;
  wire \MCLK_Cnt_reg[24]_i_2_n_6 ;
  wire \MCLK_Cnt_reg[24]_i_2_n_7 ;
  wire \MCLK_Cnt_reg[28]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[28]_i_2_n_4 ;
  wire \MCLK_Cnt_reg[28]_i_2_n_5 ;
  wire \MCLK_Cnt_reg[28]_i_2_n_6 ;
  wire \MCLK_Cnt_reg[28]_i_2_n_7 ;
  wire \MCLK_Cnt_reg[31]_i_3_n_5 ;
  wire \MCLK_Cnt_reg[31]_i_3_n_6 ;
  wire \MCLK_Cnt_reg[31]_i_3_n_7 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_4 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_5 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_6 ;
  wire \MCLK_Cnt_reg[4]_i_2_n_7 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_0 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_4 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_5 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_6 ;
  wire \MCLK_Cnt_reg[8]_i_2_n_7 ;
  wire [1:0]NextState__0;
  wire [0:0]O;
  wire Resetn_IBUF;
  wire SCLK_OBUF;
  wire SCLK_OBUF_BUFG;
  wire SD_OBUF;
  wire TREADY;
  wire Transmitter_n_1;
  wire Transmitter_n_2;
  wire [31:0]out;
  wire [2:0]\NLW_MCLK_Cnt_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[24]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_MCLK_Cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_MCLK_Cnt_reg[31]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_MCLK_Cnt_reg[8]_i_2_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h7F80)) 
    Clock_Int_i_1
       (.I0(Resetn_IBUF),
        .I1(Locked),
        .I2(\MCLK_Cnt[31]_i_4_n_0 ),
        .I3(SCLK_OBUF),
        .O(Clock_Int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Clock_Int_reg
       (.C(ClockOut),
        .CE(1'b1),
        .D(Clock_Int_i_1_n_0),
        .Q(SCLK_OBUF),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_NextState[1]_i_10 
       (.I0(out[6]),
        .I1(out[7]),
        .I2(out[28]),
        .I3(out[29]),
        .O(\FSM_sequential_NextState[1]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_NextState[1]_i_12 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\FSM_sequential_NextState[1]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_NextState[1]_i_13 
       (.I0(out[11]),
        .I1(out[10]),
        .O(\FSM_sequential_NextState[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_NextState[1]_i_14 
       (.I0(out[16]),
        .I1(out[17]),
        .I2(out[24]),
        .I3(out[25]),
        .O(\FSM_sequential_NextState[1]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_NextState[1]_i_3 
       (.I0(out[19]),
        .I1(out[18]),
        .I2(out[3]),
        .I3(out[2]),
        .I4(\FSM_sequential_NextState[1]_i_6_n_0 ),
        .O(\FSM_sequential_NextState[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \FSM_sequential_NextState[1]_i_4 
       (.I0(\FSM_sequential_NextState[1]_i_7_n_0 ),
        .I1(\FSM_sequential_NextState[1]_i_8_n_0 ),
        .I2(\FSM_sequential_NextState[1]_i_9_n_0 ),
        .I3(out[4]),
        .I4(out[5]),
        .I5(\FSM_sequential_NextState[1]_i_10_n_0 ),
        .O(\FSM_sequential_NextState[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_NextState[1]_i_6 
       (.I0(out[9]),
        .I1(out[8]),
        .I2(\FSM_sequential_NextState[1]_i_12_n_0 ),
        .I3(\FSM_sequential_NextState[1]_i_13_n_0 ),
        .I4(out[15]),
        .I5(out[14]),
        .O(\FSM_sequential_NextState[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \FSM_sequential_NextState[1]_i_7 
       (.I0(out[12]),
        .I1(out[13]),
        .I2(NextState__0[0]),
        .I3(NextState__0[1]),
        .I4(out[31]),
        .I5(out[30]),
        .O(\FSM_sequential_NextState[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_NextState[1]_i_8 
       (.I0(out[21]),
        .I1(out[20]),
        .I2(out[23]),
        .I3(out[22]),
        .I4(\FSM_sequential_NextState[1]_i_14_n_0 ),
        .O(\FSM_sequential_NextState[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_NextState[1]_i_9 
       (.I0(out[27]),
        .I1(out[26]),
        .O(\FSM_sequential_NextState[1]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "reset:00,transmit:10,stop:11,idle:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_NextState_reg[0] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(Transmitter_n_2),
        .Q(NextState__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:00,transmit:10,stop:11,idle:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_NextState_reg[1] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(Transmitter_n_1),
        .Q(NextState__0[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \MCLK_Cnt[0]_i_1 
       (.I0(MCLK_Cnt[0]),
        .O(MCLK_Cnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[10]_i_1 
       (.I0(\MCLK_Cnt_reg[12]_i_2_n_6 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[11]_i_1 
       (.I0(\MCLK_Cnt_reg[12]_i_2_n_5 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[12]_i_1 
       (.I0(\MCLK_Cnt_reg[12]_i_2_n_4 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[13]_i_1 
       (.I0(\MCLK_Cnt_reg[16]_i_2_n_7 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[14]_i_1 
       (.I0(\MCLK_Cnt_reg[16]_i_2_n_6 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[15]_i_1 
       (.I0(\MCLK_Cnt_reg[16]_i_2_n_5 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[16]_i_1 
       (.I0(\MCLK_Cnt_reg[16]_i_2_n_4 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[17]_i_1 
       (.I0(\MCLK_Cnt_reg[20]_i_2_n_7 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[18]_i_1 
       (.I0(\MCLK_Cnt_reg[20]_i_2_n_6 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[19]_i_1 
       (.I0(\MCLK_Cnt_reg[20]_i_2_n_5 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[1]_i_1 
       (.I0(\MCLK_Cnt_reg[4]_i_2_n_7 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[20]_i_1 
       (.I0(\MCLK_Cnt_reg[20]_i_2_n_4 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[21]_i_1 
       (.I0(\MCLK_Cnt_reg[24]_i_2_n_7 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[22]_i_1 
       (.I0(\MCLK_Cnt_reg[24]_i_2_n_6 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[23]_i_1 
       (.I0(\MCLK_Cnt_reg[24]_i_2_n_5 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[24]_i_1 
       (.I0(\MCLK_Cnt_reg[24]_i_2_n_4 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[25]_i_1 
       (.I0(\MCLK_Cnt_reg[28]_i_2_n_7 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[26]_i_1 
       (.I0(\MCLK_Cnt_reg[28]_i_2_n_6 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[27]_i_1 
       (.I0(\MCLK_Cnt_reg[28]_i_2_n_5 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[28]_i_1 
       (.I0(\MCLK_Cnt_reg[28]_i_2_n_4 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[29]_i_1 
       (.I0(\MCLK_Cnt_reg[31]_i_3_n_7 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[2]_i_1 
       (.I0(\MCLK_Cnt_reg[4]_i_2_n_6 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[30]_i_1 
       (.I0(\MCLK_Cnt_reg[31]_i_3_n_6 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[30]));
  LUT2 #(
    .INIT(4'h7)) 
    \MCLK_Cnt[31]_i_1 
       (.I0(Resetn_IBUF),
        .I1(Locked),
        .O(\MCLK_Cnt[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \MCLK_Cnt[31]_i_10 
       (.I0(MCLK_Cnt[1]),
        .I1(MCLK_Cnt[25]),
        .I2(MCLK_Cnt[10]),
        .I3(MCLK_Cnt[30]),
        .O(\MCLK_Cnt[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \MCLK_Cnt[31]_i_11 
       (.I0(MCLK_Cnt[13]),
        .I1(MCLK_Cnt[17]),
        .I2(MCLK_Cnt[5]),
        .I3(MCLK_Cnt[27]),
        .O(\MCLK_Cnt[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \MCLK_Cnt[31]_i_12 
       (.I0(MCLK_Cnt[11]),
        .I1(MCLK_Cnt[23]),
        .I2(MCLK_Cnt[18]),
        .I3(MCLK_Cnt[20]),
        .O(\MCLK_Cnt[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[31]_i_2 
       (.I0(\MCLK_Cnt_reg[31]_i_3_n_5 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[31]));
  LUT4 #(
    .INIT(16'h0004)) 
    \MCLK_Cnt[31]_i_4 
       (.I0(\MCLK_Cnt[31]_i_5_n_0 ),
        .I1(\MCLK_Cnt[31]_i_6_n_0 ),
        .I2(\MCLK_Cnt[31]_i_7_n_0 ),
        .I3(\MCLK_Cnt[31]_i_8_n_0 ),
        .O(\MCLK_Cnt[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \MCLK_Cnt[31]_i_5 
       (.I0(MCLK_Cnt[26]),
        .I1(MCLK_Cnt[22]),
        .I2(MCLK_Cnt[16]),
        .I3(MCLK_Cnt[3]),
        .I4(\MCLK_Cnt[31]_i_9_n_0 ),
        .O(\MCLK_Cnt[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \MCLK_Cnt[31]_i_6 
       (.I0(MCLK_Cnt[24]),
        .I1(MCLK_Cnt[7]),
        .I2(MCLK_Cnt[12]),
        .I3(MCLK_Cnt[6]),
        .I4(\MCLK_Cnt[31]_i_10_n_0 ),
        .O(\MCLK_Cnt[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \MCLK_Cnt[31]_i_7 
       (.I0(MCLK_Cnt[21]),
        .I1(MCLK_Cnt[19]),
        .I2(MCLK_Cnt[15]),
        .I3(MCLK_Cnt[9]),
        .I4(\MCLK_Cnt[31]_i_11_n_0 ),
        .O(\MCLK_Cnt[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \MCLK_Cnt[31]_i_8 
       (.I0(MCLK_Cnt[14]),
        .I1(MCLK_Cnt[8]),
        .I2(MCLK_Cnt[29]),
        .I3(MCLK_Cnt[2]),
        .I4(\MCLK_Cnt[31]_i_12_n_0 ),
        .O(\MCLK_Cnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \MCLK_Cnt[31]_i_9 
       (.I0(MCLK_Cnt[0]),
        .I1(MCLK_Cnt[31]),
        .I2(MCLK_Cnt[4]),
        .I3(MCLK_Cnt[28]),
        .O(\MCLK_Cnt[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[3]_i_1 
       (.I0(\MCLK_Cnt_reg[4]_i_2_n_5 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[4]_i_1 
       (.I0(\MCLK_Cnt_reg[4]_i_2_n_4 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[5]_i_1 
       (.I0(\MCLK_Cnt_reg[8]_i_2_n_7 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[6]_i_1 
       (.I0(\MCLK_Cnt_reg[8]_i_2_n_6 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[7]_i_1 
       (.I0(\MCLK_Cnt_reg[8]_i_2_n_5 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[8]_i_1 
       (.I0(\MCLK_Cnt_reg[8]_i_2_n_4 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MCLK_Cnt[9]_i_1 
       (.I0(\MCLK_Cnt_reg[12]_i_2_n_7 ),
        .I1(\MCLK_Cnt[31]_i_4_n_0 ),
        .O(MCLK_Cnt_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[0] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[0]),
        .Q(MCLK_Cnt[0]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[10] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[10]),
        .Q(MCLK_Cnt[10]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[11] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[11]),
        .Q(MCLK_Cnt[11]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[12] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[12]),
        .Q(MCLK_Cnt[12]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[12]_i_2 
       (.CI(\MCLK_Cnt_reg[8]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[12]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\MCLK_Cnt_reg[12]_i_2_n_4 ,\MCLK_Cnt_reg[12]_i_2_n_5 ,\MCLK_Cnt_reg[12]_i_2_n_6 ,\MCLK_Cnt_reg[12]_i_2_n_7 }),
        .S(MCLK_Cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[13] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[13]),
        .Q(MCLK_Cnt[13]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[14] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[14]),
        .Q(MCLK_Cnt[14]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[15] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[15]),
        .Q(MCLK_Cnt[15]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[16] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[16]),
        .Q(MCLK_Cnt[16]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[16]_i_2 
       (.CI(\MCLK_Cnt_reg[12]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[16]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\MCLK_Cnt_reg[16]_i_2_n_4 ,\MCLK_Cnt_reg[16]_i_2_n_5 ,\MCLK_Cnt_reg[16]_i_2_n_6 ,\MCLK_Cnt_reg[16]_i_2_n_7 }),
        .S(MCLK_Cnt[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[17] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[17]),
        .Q(MCLK_Cnt[17]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[18] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[18]),
        .Q(MCLK_Cnt[18]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[19] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[19]),
        .Q(MCLK_Cnt[19]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[1] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[1]),
        .Q(MCLK_Cnt[1]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[20] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[20]),
        .Q(MCLK_Cnt[20]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[20]_i_2 
       (.CI(\MCLK_Cnt_reg[16]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[20]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\MCLK_Cnt_reg[20]_i_2_n_4 ,\MCLK_Cnt_reg[20]_i_2_n_5 ,\MCLK_Cnt_reg[20]_i_2_n_6 ,\MCLK_Cnt_reg[20]_i_2_n_7 }),
        .S(MCLK_Cnt[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[21] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[21]),
        .Q(MCLK_Cnt[21]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[22] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[22]),
        .Q(MCLK_Cnt[22]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[23] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[23]),
        .Q(MCLK_Cnt[23]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[24] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[24]),
        .Q(MCLK_Cnt[24]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[24]_i_2 
       (.CI(\MCLK_Cnt_reg[20]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[24]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\MCLK_Cnt_reg[24]_i_2_n_4 ,\MCLK_Cnt_reg[24]_i_2_n_5 ,\MCLK_Cnt_reg[24]_i_2_n_6 ,\MCLK_Cnt_reg[24]_i_2_n_7 }),
        .S(MCLK_Cnt[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[25] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[25]),
        .Q(MCLK_Cnt[25]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[26] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[26]),
        .Q(MCLK_Cnt[26]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[27] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[27]),
        .Q(MCLK_Cnt[27]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[28] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[28]),
        .Q(MCLK_Cnt[28]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[28]_i_2 
       (.CI(\MCLK_Cnt_reg[24]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[28]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[28]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\MCLK_Cnt_reg[28]_i_2_n_4 ,\MCLK_Cnt_reg[28]_i_2_n_5 ,\MCLK_Cnt_reg[28]_i_2_n_6 ,\MCLK_Cnt_reg[28]_i_2_n_7 }),
        .S(MCLK_Cnt[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[29] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[29]),
        .Q(MCLK_Cnt[29]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[2] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[2]),
        .Q(MCLK_Cnt[2]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[30] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[30]),
        .Q(MCLK_Cnt[30]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[31] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[31]),
        .Q(MCLK_Cnt[31]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[31]_i_3 
       (.CI(\MCLK_Cnt_reg[28]_i_2_n_0 ),
        .CO(\NLW_MCLK_Cnt_reg[31]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_MCLK_Cnt_reg[31]_i_3_O_UNCONNECTED [3],\MCLK_Cnt_reg[31]_i_3_n_5 ,\MCLK_Cnt_reg[31]_i_3_n_6 ,\MCLK_Cnt_reg[31]_i_3_n_7 }),
        .S({1'b0,MCLK_Cnt[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[3] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[3]),
        .Q(MCLK_Cnt[3]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[4] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[4]),
        .Q(MCLK_Cnt[4]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\MCLK_Cnt_reg[4]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(MCLK_Cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\MCLK_Cnt_reg[4]_i_2_n_4 ,\MCLK_Cnt_reg[4]_i_2_n_5 ,\MCLK_Cnt_reg[4]_i_2_n_6 ,\MCLK_Cnt_reg[4]_i_2_n_7 }),
        .S(MCLK_Cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[5] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[5]),
        .Q(MCLK_Cnt[5]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[6] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[6]),
        .Q(MCLK_Cnt[6]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[7] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[7]),
        .Q(MCLK_Cnt[7]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[8] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[8]),
        .Q(MCLK_Cnt[8]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \MCLK_Cnt_reg[8]_i_2 
       (.CI(\MCLK_Cnt_reg[4]_i_2_n_0 ),
        .CO({\MCLK_Cnt_reg[8]_i_2_n_0 ,\NLW_MCLK_Cnt_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\MCLK_Cnt_reg[8]_i_2_n_4 ,\MCLK_Cnt_reg[8]_i_2_n_5 ,\MCLK_Cnt_reg[8]_i_2_n_6 ,\MCLK_Cnt_reg[8]_i_2_n_7 }),
        .S(MCLK_Cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_Cnt_reg[9] 
       (.C(ClockOut),
        .CE(1'b1),
        .D(MCLK_Cnt_0[9]),
        .Q(MCLK_Cnt[9]),
        .R(\MCLK_Cnt[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    TREADY_BUFG_inst_i_1
       (.I0(NextState__0[0]),
        .I1(NextState__0[1]),
        .O(TREADY));
  I2S_Transmitter Transmitter
       (.DataOut(DataOut),
        .\FSM_sequential_NextState_reg[1] (Transmitter_n_1),
        .\FSM_sequential_NextState_reg[1]_0 (Transmitter_n_2),
        .\FSM_sequential_NextState_reg[1]_1 (\FSM_sequential_NextState[1]_i_3_n_0 ),
        .\FSM_sequential_NextState_reg[1]_2 (\FSM_sequential_NextState[1]_i_4_n_0 ),
        .Locked(Locked),
        .NextState__0(NextState__0),
        .O(O),
        .Resetn_IBUF(Resetn_IBUF),
        .SCLK_OBUF_BUFG(SCLK_OBUF_BUFG),
        .SD_OBUF(SD_OBUF),
        .SR(\MCLK_Cnt[31]_i_1_n_0 ));
endmodule

module I2S_Transmitter
   (O,
    \FSM_sequential_NextState_reg[1] ,
    \FSM_sequential_NextState_reg[1]_0 ,
    SD_OBUF,
    Locked,
    Resetn_IBUF,
    NextState__0,
    DataOut,
    \FSM_sequential_NextState_reg[1]_1 ,
    \FSM_sequential_NextState_reg[1]_2 ,
    SR,
    SCLK_OBUF_BUFG);
  output [0:0]O;
  output \FSM_sequential_NextState_reg[1] ;
  output \FSM_sequential_NextState_reg[1]_0 ;
  output SD_OBUF;
  input Locked;
  input Resetn_IBUF;
  input [1:0]NextState__0;
  input [15:0]DataOut;
  input \FSM_sequential_NextState_reg[1]_1 ;
  input \FSM_sequential_NextState_reg[1]_2 ;
  input [0:0]SR;
  input SCLK_OBUF_BUFG;

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
  wire [31:0]BitCounter_Int_reg;
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
  wire [15:0]DataOut;
  wire \FSM_sequential_NextState[0]_i_2_n_0 ;
  wire \FSM_sequential_NextState[0]_i_3_n_0 ;
  wire \FSM_sequential_NextState[0]_i_4_n_0 ;
  wire \FSM_sequential_NextState[0]_i_5_n_0 ;
  wire \FSM_sequential_NextState[1]_i_11_n_0 ;
  wire \FSM_sequential_NextState[1]_i_2_n_0 ;
  wire \FSM_sequential_NextState[1]_i_5_n_0 ;
  wire \FSM_sequential_NextState_reg[1] ;
  wire \FSM_sequential_NextState_reg[1]_0 ;
  wire \FSM_sequential_NextState_reg[1]_1 ;
  wire \FSM_sequential_NextState_reg[1]_2 ;
  wire LRCLK_OBUF_inst_i_10_n_0;
  wire LRCLK_OBUF_inst_i_11_n_0;
  wire LRCLK_OBUF_inst_i_12_n_0;
  wire LRCLK_OBUF_inst_i_13_n_0;
  wire LRCLK_OBUF_inst_i_14_n_0;
  wire LRCLK_OBUF_inst_i_15_n_0;
  wire LRCLK_OBUF_inst_i_16_n_0;
  wire LRCLK_OBUF_inst_i_17_n_0;
  wire LRCLK_OBUF_inst_i_18_n_0;
  wire LRCLK_OBUF_inst_i_19_n_0;
  wire LRCLK_OBUF_inst_i_2_n_0;
  wire LRCLK_OBUF_inst_i_3_n_0;
  wire LRCLK_OBUF_inst_i_4_n_0;
  wire LRCLK_OBUF_inst_i_5_n_0;
  wire LRCLK_OBUF_inst_i_6_n_0;
  wire LRCLK_OBUF_inst_i_7_n_0;
  wire LRCLK_OBUF_inst_i_8_n_0;
  wire LRCLK_OBUF_inst_i_9_n_0;
  wire Locked;
  wire [1:0]NextState__0;
  wire [0:0]O;
  wire Resetn_IBUF;
  wire SCLK_OBUF_BUFG;
  wire SD_OBUF;
  wire [0:0]SR;
  wire [15:0]ShiftReg;
  wire \ShiftReg[31]_i_1_n_0 ;
  wire \ShiftReg[31]_i_2_n_0 ;
  wire \ShiftReg[31]_i_3_n_0 ;
  wire \ShiftReg[31]_i_4_n_0 ;
  wire \ShiftReg[31]_i_5_n_0 ;
  wire \ShiftReg[31]_i_6_n_0 ;
  wire \ShiftReg[31]_i_7_n_0 ;
  wire \ShiftReg[31]_i_8_n_0 ;
  wire \ShiftReg[31]_i_9_n_0 ;
  wire [31:1]data1;
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
  wire [3:0]NLW_LRCLK_OBUF_inst_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_OBUF_inst_i_1_O_UNCONNECTED;
  wire [2:0]NLW_LRCLK_OBUF_inst_i_10_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_OBUF_inst_i_10_O_UNCONNECTED;
  wire [2:0]NLW_LRCLK_OBUF_inst_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_OBUF_inst_i_2_O_UNCONNECTED;
  wire [2:0]NLW_LRCLK_OBUF_inst_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_OBUF_inst_i_5_O_UNCONNECTED;

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
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 BitCounter_Int1_carry__2
       (.CI(BitCounter_Int1_carry__1_n_0),
        .CO({BitCounter_Int1,NLW_BitCounter_Int1_carry__2_CO_UNCONNECTED[2:0]}),
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
       (.I0(BitCounter_Int_reg[28]),
        .I1(BitCounter_Int_reg[29]),
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
        .I1(BitCounter_Int_reg[5]),
        .O(BitCounter_Int1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    BitCounter_Int1_carry_i_2
       (.I0(BitCounter_Int_reg[3]),
        .I1(BitCounter_Int_reg[2]),
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
        .I1(BitCounter_Int_reg[5]),
        .O(BitCounter_Int1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    BitCounter_Int1_carry_i_6
       (.I0(BitCounter_Int_reg[2]),
        .I1(BitCounter_Int_reg[3]),
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
       (.I0(Locked),
        .I1(Resetn_IBUF),
        .I2(BitCounter_Int1),
        .O(\BitCounter_Int[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \BitCounter_Int[0]_i_3 
       (.I0(BitCounter_Int_reg[0]),
        .O(\BitCounter_Int[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[0] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_7 ),
        .Q(BitCounter_Int_reg[0]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\BitCounter_Int_reg[0]_i_2_n_0 ,\NLW_BitCounter_Int_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\BitCounter_Int_reg[0]_i_2_n_4 ,\BitCounter_Int_reg[0]_i_2_n_5 ,\BitCounter_Int_reg[0]_i_2_n_6 ,\BitCounter_Int_reg[0]_i_2_n_7 }),
        .S({BitCounter_Int_reg[3:1],\BitCounter_Int[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[10] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[10]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[11] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[11]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[12] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[12]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[12]_i_1 
       (.CI(\BitCounter_Int_reg[8]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[12]_i_1_n_0 ,\NLW_BitCounter_Int_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[12]_i_1_n_4 ,\BitCounter_Int_reg[12]_i_1_n_5 ,\BitCounter_Int_reg[12]_i_1_n_6 ,\BitCounter_Int_reg[12]_i_1_n_7 }),
        .S(BitCounter_Int_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[13] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[13]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[14] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[14]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[15] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[12]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[15]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[16] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[16]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[16]_i_1 
       (.CI(\BitCounter_Int_reg[12]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[16]_i_1_n_0 ,\NLW_BitCounter_Int_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[16]_i_1_n_4 ,\BitCounter_Int_reg[16]_i_1_n_5 ,\BitCounter_Int_reg[16]_i_1_n_6 ,\BitCounter_Int_reg[16]_i_1_n_7 }),
        .S(BitCounter_Int_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[17] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[17]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[18] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[18]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[19] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[16]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[19]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[1] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_6 ),
        .Q(BitCounter_Int_reg[1]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[20] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[20]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[20]_i_1 
       (.CI(\BitCounter_Int_reg[16]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[20]_i_1_n_0 ,\NLW_BitCounter_Int_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[20]_i_1_n_4 ,\BitCounter_Int_reg[20]_i_1_n_5 ,\BitCounter_Int_reg[20]_i_1_n_6 ,\BitCounter_Int_reg[20]_i_1_n_7 }),
        .S(BitCounter_Int_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[21] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[21]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[22] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[22]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[23] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[20]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[23]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[24] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[24]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[24]_i_1 
       (.CI(\BitCounter_Int_reg[20]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[24]_i_1_n_0 ,\NLW_BitCounter_Int_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[24]_i_1_n_4 ,\BitCounter_Int_reg[24]_i_1_n_5 ,\BitCounter_Int_reg[24]_i_1_n_6 ,\BitCounter_Int_reg[24]_i_1_n_7 }),
        .S(BitCounter_Int_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[25] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[25]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[26] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[26]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[27] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[24]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[27]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[28] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[28]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[28]_i_1 
       (.CI(\BitCounter_Int_reg[24]_i_1_n_0 ),
        .CO(\NLW_BitCounter_Int_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[28]_i_1_n_4 ,\BitCounter_Int_reg[28]_i_1_n_5 ,\BitCounter_Int_reg[28]_i_1_n_6 ,\BitCounter_Int_reg[28]_i_1_n_7 }),
        .S(BitCounter_Int_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[29] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[29]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[2] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_5 ),
        .Q(BitCounter_Int_reg[2]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[30] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[30]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[31] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[28]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[31]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[3] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[0]_i_2_n_4 ),
        .Q(BitCounter_Int_reg[3]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[4] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[4]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[4]_i_1 
       (.CI(\BitCounter_Int_reg[0]_i_2_n_0 ),
        .CO({\BitCounter_Int_reg[4]_i_1_n_0 ,\NLW_BitCounter_Int_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[4]_i_1_n_4 ,\BitCounter_Int_reg[4]_i_1_n_5 ,\BitCounter_Int_reg[4]_i_1_n_6 ,\BitCounter_Int_reg[4]_i_1_n_7 }),
        .S(BitCounter_Int_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[5] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[5]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[6] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_5 ),
        .Q(BitCounter_Int_reg[6]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[7] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[4]_i_1_n_4 ),
        .Q(BitCounter_Int_reg[7]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[8] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_7 ),
        .Q(BitCounter_Int_reg[8]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \BitCounter_Int_reg[8]_i_1 
       (.CI(\BitCounter_Int_reg[4]_i_1_n_0 ),
        .CO({\BitCounter_Int_reg[8]_i_1_n_0 ,\NLW_BitCounter_Int_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BitCounter_Int_reg[8]_i_1_n_4 ,\BitCounter_Int_reg[8]_i_1_n_5 ,\BitCounter_Int_reg[8]_i_1_n_6 ,\BitCounter_Int_reg[8]_i_1_n_7 }),
        .S(BitCounter_Int_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \BitCounter_Int_reg[9] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(\BitCounter_Int_reg[8]_i_1_n_6 ),
        .Q(BitCounter_Int_reg[9]),
        .R(\BitCounter_Int[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008B88)) 
    \FSM_sequential_NextState[0]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(\FSM_sequential_NextState[0]_i_2_n_0 ),
        .I3(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .I4(SR),
        .O(\FSM_sequential_NextState_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FSM_sequential_NextState[0]_i_2 
       (.I0(BitCounter_Int_reg[4]),
        .I1(BitCounter_Int_reg[5]),
        .I2(NextState__0[0]),
        .I3(BitCounter_Int_reg[0]),
        .I4(BitCounter_Int_reg[3]),
        .I5(BitCounter_Int_reg[2]),
        .O(\FSM_sequential_NextState[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_NextState[0]_i_3 
       (.I0(\ShiftReg[31]_i_3_n_0 ),
        .I1(BitCounter_Int_reg[1]),
        .I2(BitCounter_Int_reg[30]),
        .I3(BitCounter_Int_reg[31]),
        .I4(\FSM_sequential_NextState[0]_i_4_n_0 ),
        .I5(\FSM_sequential_NextState[0]_i_5_n_0 ),
        .O(\FSM_sequential_NextState[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_NextState[0]_i_4 
       (.I0(BitCounter_Int_reg[17]),
        .I1(BitCounter_Int_reg[16]),
        .I2(BitCounter_Int_reg[19]),
        .I3(BitCounter_Int_reg[18]),
        .I4(\ShiftReg[31]_i_7_n_0 ),
        .O(\FSM_sequential_NextState[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_NextState[0]_i_5 
       (.I0(BitCounter_Int_reg[11]),
        .I1(BitCounter_Int_reg[10]),
        .I2(BitCounter_Int_reg[29]),
        .I3(BitCounter_Int_reg[28]),
        .I4(\ShiftReg[31]_i_5_n_0 ),
        .O(\FSM_sequential_NextState[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066E622E2)) 
    \FSM_sequential_NextState[1]_i_1 
       (.I0(NextState__0[1]),
        .I1(\FSM_sequential_NextState[1]_i_2_n_0 ),
        .I2(\FSM_sequential_NextState_reg[1]_1 ),
        .I3(\FSM_sequential_NextState_reg[1]_2 ),
        .I4(NextState__0[0]),
        .I5(SR),
        .O(\FSM_sequential_NextState_reg[1] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_NextState[1]_i_11 
       (.I0(BitCounter_Int_reg[26]),
        .I1(BitCounter_Int_reg[27]),
        .I2(BitCounter_Int_reg[24]),
        .I3(BitCounter_Int_reg[25]),
        .O(\FSM_sequential_NextState[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h10300030FFFF0030)) 
    \FSM_sequential_NextState[1]_i_2 
       (.I0(\ShiftReg[31]_i_4_n_0 ),
        .I1(\ShiftReg[31]_i_2_n_0 ),
        .I2(\FSM_sequential_NextState[1]_i_5_n_0 ),
        .I3(\FSM_sequential_NextState[0]_i_2_n_0 ),
        .I4(NextState__0[0]),
        .I5(NextState__0[1]),
        .O(\FSM_sequential_NextState[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_NextState[1]_i_5 
       (.I0(BitCounter_Int_reg[31]),
        .I1(BitCounter_Int_reg[30]),
        .I2(BitCounter_Int_reg[1]),
        .I3(\ShiftReg[31]_i_9_n_0 ),
        .I4(\FSM_sequential_NextState[1]_i_11_n_0 ),
        .O(\FSM_sequential_NextState[1]_i_5_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 LRCLK_OBUF_inst_i_1
       (.CI(LRCLK_OBUF_inst_i_2_n_0),
        .CO(NLW_LRCLK_OBUF_inst_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,BitCounter_Int_reg[31],1'b0}),
        .O({NLW_LRCLK_OBUF_inst_i_1_O_UNCONNECTED[3],O,NLW_LRCLK_OBUF_inst_i_1_O_UNCONNECTED[1:0]}),
        .S({1'b0,1'b1,LRCLK_OBUF_inst_i_3_n_0,LRCLK_OBUF_inst_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 LRCLK_OBUF_inst_i_10
       (.CI(1'b0),
        .CO({LRCLK_OBUF_inst_i_10_n_0,NLW_LRCLK_OBUF_inst_i_10_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,LRCLK_OBUF_inst_i_15_n_0}),
        .O(NLW_LRCLK_OBUF_inst_i_10_O_UNCONNECTED[3:0]),
        .S({LRCLK_OBUF_inst_i_16_n_0,LRCLK_OBUF_inst_i_17_n_0,LRCLK_OBUF_inst_i_18_n_0,LRCLK_OBUF_inst_i_19_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_11
       (.I0(BitCounter_Int_reg[18]),
        .I1(BitCounter_Int_reg[19]),
        .O(LRCLK_OBUF_inst_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_12
       (.I0(BitCounter_Int_reg[16]),
        .I1(BitCounter_Int_reg[17]),
        .O(LRCLK_OBUF_inst_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_13
       (.I0(BitCounter_Int_reg[14]),
        .I1(BitCounter_Int_reg[15]),
        .O(LRCLK_OBUF_inst_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_14
       (.I0(BitCounter_Int_reg[12]),
        .I1(BitCounter_Int_reg[13]),
        .O(LRCLK_OBUF_inst_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_15
       (.I0(BitCounter_Int_reg[4]),
        .I1(BitCounter_Int_reg[5]),
        .O(LRCLK_OBUF_inst_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_16
       (.I0(BitCounter_Int_reg[10]),
        .I1(BitCounter_Int_reg[11]),
        .O(LRCLK_OBUF_inst_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_17
       (.I0(BitCounter_Int_reg[8]),
        .I1(BitCounter_Int_reg[9]),
        .O(LRCLK_OBUF_inst_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_18
       (.I0(BitCounter_Int_reg[6]),
        .I1(BitCounter_Int_reg[7]),
        .O(LRCLK_OBUF_inst_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LRCLK_OBUF_inst_i_19
       (.I0(BitCounter_Int_reg[4]),
        .I1(BitCounter_Int_reg[5]),
        .O(LRCLK_OBUF_inst_i_19_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 LRCLK_OBUF_inst_i_2
       (.CI(LRCLK_OBUF_inst_i_5_n_0),
        .CO({LRCLK_OBUF_inst_i_2_n_0,NLW_LRCLK_OBUF_inst_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_OBUF_inst_i_2_O_UNCONNECTED[3:0]),
        .S({LRCLK_OBUF_inst_i_6_n_0,LRCLK_OBUF_inst_i_7_n_0,LRCLK_OBUF_inst_i_8_n_0,LRCLK_OBUF_inst_i_9_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_3
       (.I0(BitCounter_Int_reg[30]),
        .I1(BitCounter_Int_reg[31]),
        .O(LRCLK_OBUF_inst_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_4
       (.I0(BitCounter_Int_reg[28]),
        .I1(BitCounter_Int_reg[29]),
        .O(LRCLK_OBUF_inst_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 LRCLK_OBUF_inst_i_5
       (.CI(LRCLK_OBUF_inst_i_10_n_0),
        .CO({LRCLK_OBUF_inst_i_5_n_0,NLW_LRCLK_OBUF_inst_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_OBUF_inst_i_5_O_UNCONNECTED[3:0]),
        .S({LRCLK_OBUF_inst_i_11_n_0,LRCLK_OBUF_inst_i_12_n_0,LRCLK_OBUF_inst_i_13_n_0,LRCLK_OBUF_inst_i_14_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_6
       (.I0(BitCounter_Int_reg[26]),
        .I1(BitCounter_Int_reg[27]),
        .O(LRCLK_OBUF_inst_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_7
       (.I0(BitCounter_Int_reg[24]),
        .I1(BitCounter_Int_reg[25]),
        .O(LRCLK_OBUF_inst_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_8
       (.I0(BitCounter_Int_reg[22]),
        .I1(BitCounter_Int_reg[23]),
        .O(LRCLK_OBUF_inst_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_OBUF_inst_i_9
       (.I0(BitCounter_Int_reg[20]),
        .I1(BitCounter_Int_reg[21]),
        .O(LRCLK_OBUF_inst_i_9_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    \ShiftReg[0]_i_1 
       (.I0(DataOut[0]),
        .I1(\ShiftReg[31]_i_1_n_0 ),
        .I2(NextState__0[0]),
        .I3(NextState__0[1]),
        .O(ShiftReg[0]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[10]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[10]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[10]),
        .O(ShiftReg[10]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[11]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[11]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[11]),
        .O(ShiftReg[11]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[12]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[12]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[12]),
        .O(ShiftReg[12]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[13]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[13]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[13]),
        .O(ShiftReg[13]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[14]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[14]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[14]),
        .O(ShiftReg[14]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[15]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[15]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[15]),
        .O(ShiftReg[15]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[1]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[1]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[1]),
        .O(ShiftReg[1]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[2]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[2]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[2]),
        .O(ShiftReg[2]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ShiftReg[31]_i_1 
       (.I0(\ShiftReg[31]_i_2_n_0 ),
        .I1(BitCounter_Int_reg[31]),
        .I2(BitCounter_Int_reg[30]),
        .I3(BitCounter_Int_reg[1]),
        .I4(\ShiftReg[31]_i_3_n_0 ),
        .I5(\ShiftReg[31]_i_4_n_0 ),
        .O(\ShiftReg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ShiftReg[31]_i_2 
       (.I0(\ShiftReg[31]_i_5_n_0 ),
        .I1(BitCounter_Int_reg[28]),
        .I2(BitCounter_Int_reg[29]),
        .I3(\ShiftReg[31]_i_6_n_0 ),
        .I4(\ShiftReg[31]_i_7_n_0 ),
        .I5(\ShiftReg[31]_i_8_n_0 ),
        .O(\ShiftReg[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ShiftReg[31]_i_3 
       (.I0(BitCounter_Int_reg[25]),
        .I1(BitCounter_Int_reg[24]),
        .I2(BitCounter_Int_reg[27]),
        .I3(BitCounter_Int_reg[26]),
        .I4(\ShiftReg[31]_i_9_n_0 ),
        .O(\ShiftReg[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ShiftReg[31]_i_4 
       (.I0(BitCounter_Int_reg[4]),
        .I1(BitCounter_Int_reg[5]),
        .I2(BitCounter_Int_reg[0]),
        .I3(BitCounter_Int_reg[3]),
        .I4(BitCounter_Int_reg[2]),
        .O(\ShiftReg[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ShiftReg[31]_i_5 
       (.I0(BitCounter_Int_reg[14]),
        .I1(BitCounter_Int_reg[15]),
        .I2(BitCounter_Int_reg[12]),
        .I3(BitCounter_Int_reg[13]),
        .O(\ShiftReg[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ShiftReg[31]_i_6 
       (.I0(BitCounter_Int_reg[11]),
        .I1(BitCounter_Int_reg[10]),
        .O(\ShiftReg[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ShiftReg[31]_i_7 
       (.I0(BitCounter_Int_reg[20]),
        .I1(BitCounter_Int_reg[21]),
        .I2(BitCounter_Int_reg[8]),
        .I3(BitCounter_Int_reg[9]),
        .O(\ShiftReg[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ShiftReg[31]_i_8 
       (.I0(BitCounter_Int_reg[18]),
        .I1(BitCounter_Int_reg[19]),
        .I2(BitCounter_Int_reg[16]),
        .I3(BitCounter_Int_reg[17]),
        .O(\ShiftReg[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ShiftReg[31]_i_9 
       (.I0(BitCounter_Int_reg[6]),
        .I1(BitCounter_Int_reg[7]),
        .I2(BitCounter_Int_reg[22]),
        .I3(BitCounter_Int_reg[23]),
        .O(\ShiftReg[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[3]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[3]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[3]),
        .O(ShiftReg[3]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[4]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[4]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[4]),
        .O(ShiftReg[4]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[5]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[5]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[5]),
        .O(ShiftReg[5]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[6]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[6]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[6]),
        .O(ShiftReg[6]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[7]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[7]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[7]),
        .O(ShiftReg[7]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[8]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[8]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[8]),
        .O(ShiftReg[8]));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \ShiftReg[9]_i_1 
       (.I0(NextState__0[1]),
        .I1(NextState__0[0]),
        .I2(DataOut[9]),
        .I3(\ShiftReg[31]_i_1_n_0 ),
        .I4(data1[9]),
        .O(ShiftReg[9]));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[0] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[0]),
        .Q(data1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[10] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[10]),
        .Q(data1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[11] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[11]),
        .Q(data1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[12] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[12]),
        .Q(data1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[13] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[13]),
        .Q(data1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[14] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[14]),
        .Q(data1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[15] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[15]),
        .Q(data1[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[16] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[16]),
        .Q(data1[17]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[17] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[17]),
        .Q(data1[18]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[18] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[18]),
        .Q(data1[19]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[19] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[19]),
        .Q(data1[20]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[1] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[1]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[20] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[20]),
        .Q(data1[21]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[21] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[21]),
        .Q(data1[22]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[22] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[22]),
        .Q(data1[23]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[23] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[23]),
        .Q(data1[24]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[24] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[24]),
        .Q(data1[25]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[25] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[25]),
        .Q(data1[26]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[26] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[26]),
        .Q(data1[27]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[27] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[27]),
        .Q(data1[28]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[28] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[28]),
        .Q(data1[29]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[29] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[29]),
        .Q(data1[30]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[2] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[2]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[30] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[30]),
        .Q(data1[31]),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[31] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(data1[31]),
        .Q(SD_OBUF),
        .R(\ShiftReg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[3] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[3]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[4] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[4]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[5] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[5]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[6] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[6]),
        .Q(data1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[7] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[7]),
        .Q(data1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[8] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[8]),
        .Q(data1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ShiftReg_reg[9] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(ShiftReg[9]),
        .Q(data1[10]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "57a7e629" *) (* POWER_OPT_BRAM_CDC = "1" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) (* WIDTH = "16" *) 
(* NotValidForBitStream *)
module Top
   (Clock,
    Resetn,
    MCLK,
    LRCLK,
    SCLK,
    SD);
  input Clock;
  input Resetn;
  output MCLK;
  output LRCLK;
  output SCLK;
  output SD;

  wire Address1;
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
  wire [31:0]Address_reg;
  wire \Address_reg[0]_i_10_n_0 ;
  wire \Address_reg[0]_i_15_n_0 ;
  wire \Address_reg[0]_i_2_n_0 ;
  wire \Address_reg[0]_i_2_n_4 ;
  wire \Address_reg[0]_i_2_n_5 ;
  wire \Address_reg[0]_i_2_n_6 ;
  wire \Address_reg[0]_i_2_n_7 ;
  wire \Address_reg[0]_i_5_n_0 ;
  wire \Address_reg[12]_i_1_n_0 ;
  wire \Address_reg[12]_i_1_n_4 ;
  wire \Address_reg[12]_i_1_n_5 ;
  wire \Address_reg[12]_i_1_n_6 ;
  wire \Address_reg[12]_i_1_n_7 ;
  wire \Address_reg[16]_i_1_n_0 ;
  wire \Address_reg[16]_i_1_n_4 ;
  wire \Address_reg[16]_i_1_n_5 ;
  wire \Address_reg[16]_i_1_n_6 ;
  wire \Address_reg[16]_i_1_n_7 ;
  wire \Address_reg[20]_i_1_n_0 ;
  wire \Address_reg[20]_i_1_n_4 ;
  wire \Address_reg[20]_i_1_n_5 ;
  wire \Address_reg[20]_i_1_n_6 ;
  wire \Address_reg[20]_i_1_n_7 ;
  wire \Address_reg[24]_i_1_n_0 ;
  wire \Address_reg[24]_i_1_n_4 ;
  wire \Address_reg[24]_i_1_n_5 ;
  wire \Address_reg[24]_i_1_n_6 ;
  wire \Address_reg[24]_i_1_n_7 ;
  wire \Address_reg[28]_i_1_n_4 ;
  wire \Address_reg[28]_i_1_n_5 ;
  wire \Address_reg[28]_i_1_n_6 ;
  wire \Address_reg[28]_i_1_n_7 ;
  wire \Address_reg[4]_i_1_n_0 ;
  wire \Address_reg[4]_i_1_n_4 ;
  wire \Address_reg[4]_i_1_n_5 ;
  wire \Address_reg[4]_i_1_n_6 ;
  wire \Address_reg[4]_i_1_n_7 ;
  wire \Address_reg[8]_i_1_n_0 ;
  wire \Address_reg[8]_i_1_n_4 ;
  wire \Address_reg[8]_i_1_n_5 ;
  wire \Address_reg[8]_i_1_n_6 ;
  wire \Address_reg[8]_i_1_n_7 ;
  (* IBUF_LOW_PWR *) wire Clock;
  wire [15:0]DataOut;
  wire LRCLK;
  wire LRCLK_OBUF;
  wire Locked;
  wire MCLK;
  wire MCLK_OBUF;
  wire [10:0]ROM_Address;
  wire Resetn;
  wire Resetn_IBUF;
  wire SCLK;
  wire SCLK_OBUF;
  wire SCLK_OBUF_BUFG;
  wire SD;
  wire SD_OBUF;
  wire TREADY;
  wire TREADY_BUFG;
  wire clear;
  wire [3:0]\NLW_Address_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_Address_reg[0]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[0]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_Address_reg[0]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[0]_i_15_CO_UNCONNECTED ;
  wire [3:0]\NLW_Address_reg[0]_i_15_O_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_Address_reg[0]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[0]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_Address_reg[0]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_Address_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Address_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("I2S_TB_time_impl.sdf",,,,"tool_control");
end
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_11 
       (.I0(Address_reg[22]),
        .I1(Address_reg[23]),
        .O(\Address[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_12 
       (.I0(Address_reg[20]),
        .I1(Address_reg[21]),
        .O(\Address[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_13 
       (.I0(Address_reg[18]),
        .I1(Address_reg[19]),
        .O(\Address[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_14 
       (.I0(Address_reg[16]),
        .I1(Address_reg[17]),
        .O(\Address[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_16 
       (.I0(Address_reg[14]),
        .I1(Address_reg[15]),
        .O(\Address[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_17 
       (.I0(Address_reg[12]),
        .I1(Address_reg[13]),
        .O(\Address[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_18 
       (.I0(Address_reg[10]),
        .I1(Address_reg[11]),
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
       (.I0(Address_reg[7]),
        .I1(Address_reg[6]),
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
       (.I0(Address_reg[3]),
        .I1(Address_reg[2]),
        .O(\Address[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Address[0]_i_26 
       (.I0(Address_reg[1]),
        .I1(Address_reg[0]),
        .O(\Address[0]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Address[0]_i_4 
       (.I0(Address_reg[0]),
        .O(\Address[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_6 
       (.I0(Address_reg[30]),
        .I1(Address_reg[31]),
        .O(\Address[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_7 
       (.I0(Address_reg[28]),
        .I1(Address_reg[29]),
        .O(\Address[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_8 
       (.I0(Address_reg[26]),
        .I1(Address_reg[27]),
        .O(\Address[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Address[0]_i_9 
       (.I0(Address_reg[24]),
        .I1(Address_reg[25]),
        .O(\Address[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[0] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[0]_i_2_n_7 ),
        .Q(Address_reg[0]),
        .R(clear));
  CARRY4 \Address_reg[0]_i_1 
       (.CI(Address1),
        .CO(\NLW_Address_reg[0]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Address_reg[0]_i_1_O_UNCONNECTED [3:1],clear}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[0]_i_10 
       (.CI(\Address_reg[0]_i_15_n_0 ),
        .CO({\Address_reg[0]_i_10_n_0 ,\NLW_Address_reg[0]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Address_reg[0]_i_10_O_UNCONNECTED [3:0]),
        .S({\Address[0]_i_16_n_0 ,\Address[0]_i_17_n_0 ,\Address[0]_i_18_n_0 ,\Address[0]_i_19_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[0]_i_15 
       (.CI(1'b0),
        .CO({\Address_reg[0]_i_15_n_0 ,\NLW_Address_reg[0]_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\Address[0]_i_20_n_0 ,\Address[0]_i_21_n_0 ,1'b0,\Address[0]_i_22_n_0 }),
        .O(\NLW_Address_reg[0]_i_15_O_UNCONNECTED [3:0]),
        .S({\Address[0]_i_23_n_0 ,\Address[0]_i_24_n_0 ,\Address[0]_i_25_n_0 ,\Address[0]_i_26_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Address_reg[0]_i_2_n_0 ,\NLW_Address_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Address_reg[0]_i_2_n_4 ,\Address_reg[0]_i_2_n_5 ,\Address_reg[0]_i_2_n_6 ,\Address_reg[0]_i_2_n_7 }),
        .S({Address_reg[3:1],\Address[0]_i_4_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[0]_i_3 
       (.CI(\Address_reg[0]_i_5_n_0 ),
        .CO({Address1,\NLW_Address_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({Address_reg[31],1'b0,1'b0,1'b0}),
        .O(\NLW_Address_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\Address[0]_i_6_n_0 ,\Address[0]_i_7_n_0 ,\Address[0]_i_8_n_0 ,\Address[0]_i_9_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[0]_i_5 
       (.CI(\Address_reg[0]_i_10_n_0 ),
        .CO({\Address_reg[0]_i_5_n_0 ,\NLW_Address_reg[0]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Address_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\Address[0]_i_11_n_0 ,\Address[0]_i_12_n_0 ,\Address[0]_i_13_n_0 ,\Address[0]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[10] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[8]_i_1_n_5 ),
        .Q(Address_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[11] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[8]_i_1_n_4 ),
        .Q(Address_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[12] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[12]_i_1_n_7 ),
        .Q(Address_reg[12]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[12]_i_1 
       (.CI(\Address_reg[8]_i_1_n_0 ),
        .CO({\Address_reg[12]_i_1_n_0 ,\NLW_Address_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[12]_i_1_n_4 ,\Address_reg[12]_i_1_n_5 ,\Address_reg[12]_i_1_n_6 ,\Address_reg[12]_i_1_n_7 }),
        .S(Address_reg[15:12]));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[13] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[12]_i_1_n_6 ),
        .Q(Address_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[14] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[12]_i_1_n_5 ),
        .Q(Address_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[15] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[12]_i_1_n_4 ),
        .Q(Address_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[16] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[16]_i_1_n_7 ),
        .Q(Address_reg[16]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[16]_i_1 
       (.CI(\Address_reg[12]_i_1_n_0 ),
        .CO({\Address_reg[16]_i_1_n_0 ,\NLW_Address_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[16]_i_1_n_4 ,\Address_reg[16]_i_1_n_5 ,\Address_reg[16]_i_1_n_6 ,\Address_reg[16]_i_1_n_7 }),
        .S(Address_reg[19:16]));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[17] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[16]_i_1_n_6 ),
        .Q(Address_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[18] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[16]_i_1_n_5 ),
        .Q(Address_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[19] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[16]_i_1_n_4 ),
        .Q(Address_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[1] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[0]_i_2_n_6 ),
        .Q(Address_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[20] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[20]_i_1_n_7 ),
        .Q(Address_reg[20]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[20]_i_1 
       (.CI(\Address_reg[16]_i_1_n_0 ),
        .CO({\Address_reg[20]_i_1_n_0 ,\NLW_Address_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[20]_i_1_n_4 ,\Address_reg[20]_i_1_n_5 ,\Address_reg[20]_i_1_n_6 ,\Address_reg[20]_i_1_n_7 }),
        .S(Address_reg[23:20]));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[21] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[20]_i_1_n_6 ),
        .Q(Address_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[22] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[20]_i_1_n_5 ),
        .Q(Address_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[23] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[20]_i_1_n_4 ),
        .Q(Address_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[24] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[24]_i_1_n_7 ),
        .Q(Address_reg[24]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[24]_i_1 
       (.CI(\Address_reg[20]_i_1_n_0 ),
        .CO({\Address_reg[24]_i_1_n_0 ,\NLW_Address_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[24]_i_1_n_4 ,\Address_reg[24]_i_1_n_5 ,\Address_reg[24]_i_1_n_6 ,\Address_reg[24]_i_1_n_7 }),
        .S(Address_reg[27:24]));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[25] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[24]_i_1_n_6 ),
        .Q(Address_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[26] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[24]_i_1_n_5 ),
        .Q(Address_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[27] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[24]_i_1_n_4 ),
        .Q(Address_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[28] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[28]_i_1_n_7 ),
        .Q(Address_reg[28]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[28]_i_1 
       (.CI(\Address_reg[24]_i_1_n_0 ),
        .CO(\NLW_Address_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[28]_i_1_n_4 ,\Address_reg[28]_i_1_n_5 ,\Address_reg[28]_i_1_n_6 ,\Address_reg[28]_i_1_n_7 }),
        .S(Address_reg[31:28]));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[29] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[28]_i_1_n_6 ),
        .Q(Address_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[2] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[0]_i_2_n_5 ),
        .Q(Address_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[30] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[28]_i_1_n_5 ),
        .Q(Address_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[31] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[28]_i_1_n_4 ),
        .Q(Address_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[3] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[0]_i_2_n_4 ),
        .Q(Address_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[4] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[4]_i_1_n_7 ),
        .Q(Address_reg[4]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[4]_i_1 
       (.CI(\Address_reg[0]_i_2_n_0 ),
        .CO({\Address_reg[4]_i_1_n_0 ,\NLW_Address_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[4]_i_1_n_4 ,\Address_reg[4]_i_1_n_5 ,\Address_reg[4]_i_1_n_6 ,\Address_reg[4]_i_1_n_7 }),
        .S(Address_reg[7:4]));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[5] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[4]_i_1_n_6 ),
        .Q(Address_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[6] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[4]_i_1_n_5 ),
        .Q(Address_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[7] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[4]_i_1_n_4 ),
        .Q(Address_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[8] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[8]_i_1_n_7 ),
        .Q(Address_reg[8]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \Address_reg[8]_i_1 
       (.CI(\Address_reg[4]_i_1_n_0 ),
        .CO({\Address_reg[8]_i_1_n_0 ,\NLW_Address_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Address_reg[8]_i_1_n_4 ,\Address_reg[8]_i_1_n_5 ,\Address_reg[8]_i_1_n_6 ,\Address_reg[8]_i_1_n_7 }),
        .S(Address_reg[11:8]));
  FDRE #(
    .INIT(1'b1)) 
    \Address_reg[9] 
       (.C(TREADY_BUFG),
        .CE(1'b1),
        .D(\Address_reg[8]_i_1_n_6 ),
        .Q(Address_reg[9]),
        .R(clear));
  (* hw_handoff = "DataROM.hwdef" *) 
  DataROM Data
       (.Address(ROM_Address),
        .Clock(MCLK_OBUF),
        .DataOut(DataOut));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_1
       (.I0(Address_reg[10]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[10]));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_10
       (.I0(Address_reg[1]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[1]));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_11
       (.I0(Address_reg[0]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[0]));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_2
       (.I0(Address_reg[9]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[9]));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_3
       (.I0(Address_reg[8]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[8]));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_4
       (.I0(Address_reg[7]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[7]));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_5
       (.I0(Address_reg[6]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[6]));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_6
       (.I0(Address_reg[5]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[5]));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_7
       (.I0(Address_reg[4]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[4]));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_8
       (.I0(Address_reg[3]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[3]));
  LUT3 #(
    .INIT(8'h80)) 
    Data_i_9
       (.I0(Address_reg[2]),
        .I1(Locked),
        .I2(Resetn_IBUF),
        .O(ROM_Address[2]));
  I2S I2S_Transmitter
       (.ClockOut(MCLK_OBUF),
        .DataOut(DataOut),
        .Locked(Locked),
        .O(LRCLK_OBUF),
        .Resetn_IBUF(Resetn_IBUF),
        .SCLK_OBUF(SCLK_OBUF),
        .SCLK_OBUF_BUFG(SCLK_OBUF_BUFG),
        .SD_OBUF(SD_OBUF),
        .TREADY(TREADY),
        .out(Address_reg));
  (* hw_handoff = "ClockGeneration.hwdef" *) 
  ClockGeneration InputClock
       (.ClockIn(Clock),
        .ClockOut(MCLK_OBUF),
        .Locked(Locked));
  OBUF LRCLK_OBUF_inst
       (.I(LRCLK_OBUF),
        .O(LRCLK));
  OBUF MCLK_OBUF_inst
       (.I(MCLK_OBUF),
        .O(MCLK));
  IBUF Resetn_IBUF_inst
       (.I(Resetn),
        .O(Resetn_IBUF));
  BUFG SCLK_OBUF_BUFG_inst
       (.I(SCLK_OBUF),
        .O(SCLK_OBUF_BUFG));
  OBUF SCLK_OBUF_inst
       (.I(SCLK_OBUF_BUFG),
        .O(SCLK));
  OBUF SD_OBUF_inst
       (.I(SD_OBUF),
        .O(SD));
  BUFG TREADY_BUFG_inst
       (.I(TREADY),
        .O(TREADY_BUFG));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module DataROM_blk_mem_gen_0_0__blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [15:0]douta;

  DataROM_blk_mem_gen_0_0__blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DataROM_blk_mem_gen_0_0__blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [15:0]douta;

  DataROM_blk_mem_gen_0_0__blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DataROM_blk_mem_gen_0_0__blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [15:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* OPT_MODIFIED = "SWEEP " *) 
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
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
module DataROM_blk_mem_gen_0_0__blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [15:0]douta;

  DataROM_blk_mem_gen_0_0__blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "11" *) (* C_ADDRB_WIDTH = "11" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.43555 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "NONE" *) 
(* C_INIT_FILE_NAME = "DataROM_blk_mem_gen_0_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "2048" *) (* C_READ_DEPTH_B = "2048" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "2048" *) 
(* C_WRITE_DEPTH_B = "2048" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module DataROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_2
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
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [10:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
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
  input [15:0]s_axi_wdata;
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
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [10:0]s_axi_rdaddrecc;

  wire [10:0]addra;
  wire clka;
  wire [15:0]douta;

  DataROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module DataROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [15:0]douta;

  DataROM_blk_mem_gen_0_0__blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
