//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Feb 13 15:29:50 2020
//Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
//Command     : generate_target AXIMaster.bd
//Design      : AXIMaster
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "AXIMaster,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=AXIMaster,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "AXIMaster.hwdef" *) 
module AXIMaster
   (ClockIn,
    GPIO_tri_i,
    ResetN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLOCKIN, CLK_DOMAIN AXIMaster_ClockIn, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input ClockIn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) input [1:0]GPIO_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ResetN;

  wire [31:0]AXIMaster_M_AXI_ARADDR;
  wire AXIMaster_M_AXI_ARREADY;
  wire AXIMaster_M_AXI_ARVALID;
  wire [31:0]AXIMaster_M_AXI_AWADDR;
  wire AXIMaster_M_AXI_AWREADY;
  wire AXIMaster_M_AXI_AWVALID;
  wire AXIMaster_M_AXI_BREADY;
  wire AXIMaster_M_AXI_BVALID;
  wire [31:0]AXIMaster_M_AXI_RDATA;
  wire AXIMaster_M_AXI_RREADY;
  wire AXIMaster_M_AXI_RVALID;
  wire [31:0]AXIMaster_M_AXI_WDATA;
  wire AXIMaster_M_AXI_WREADY;
  wire AXIMaster_M_AXI_WVALID;
  wire ClockIn_1;
  wire [1:0]axi_gpio_0_GPIO_TRI_I;
  wire ext_reset_in_0_1;
  wire [0:0]rst_ClockingWizard_8M_peripheral_aresetn;

  assign ClockIn_1 = ClockIn;
  assign axi_gpio_0_GPIO_TRI_I = GPIO_tri_i[1:0];
  assign ext_reset_in_0_1 = ResetN;
  AXIMaster_axi_gpio_0_0 AXIGPIO
       (.gpio_io_i(axi_gpio_0_GPIO_TRI_I),
        .s_axi_aclk(ClockIn_1),
        .s_axi_araddr(AXIMaster_M_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ClockingWizard_8M_peripheral_aresetn),
        .s_axi_arready(AXIMaster_M_AXI_ARREADY),
        .s_axi_arvalid(AXIMaster_M_AXI_ARVALID),
        .s_axi_awaddr(AXIMaster_M_AXI_AWADDR[8:0]),
        .s_axi_awready(AXIMaster_M_AXI_AWREADY),
        .s_axi_awvalid(AXIMaster_M_AXI_AWVALID),
        .s_axi_bready(AXIMaster_M_AXI_BREADY),
        .s_axi_bvalid(AXIMaster_M_AXI_BVALID),
        .s_axi_rdata(AXIMaster_M_AXI_RDATA),
        .s_axi_rready(AXIMaster_M_AXI_RREADY),
        .s_axi_rvalid(AXIMaster_M_AXI_RVALID),
        .s_axi_wdata(AXIMaster_M_AXI_WDATA),
        .s_axi_wready(AXIMaster_M_AXI_WREADY),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid(AXIMaster_M_AXI_WVALID));
  AXIMaster_axi_vip_0_0 AXIMaster
       (.aclk(ClockIn_1),
        .aresetn(rst_ClockingWizard_8M_peripheral_aresetn),
        .m_axi_araddr(AXIMaster_M_AXI_ARADDR),
        .m_axi_arready(AXIMaster_M_AXI_ARREADY),
        .m_axi_arvalid(AXIMaster_M_AXI_ARVALID),
        .m_axi_awaddr(AXIMaster_M_AXI_AWADDR),
        .m_axi_awready(AXIMaster_M_AXI_AWREADY),
        .m_axi_awvalid(AXIMaster_M_AXI_AWVALID),
        .m_axi_bready(AXIMaster_M_AXI_BREADY),
        .m_axi_bvalid(AXIMaster_M_AXI_BVALID),
        .m_axi_rdata(AXIMaster_M_AXI_RDATA),
        .m_axi_rready(AXIMaster_M_AXI_RREADY),
        .m_axi_rvalid(AXIMaster_M_AXI_RVALID),
        .m_axi_wdata(AXIMaster_M_AXI_WDATA),
        .m_axi_wready(AXIMaster_M_AXI_WREADY),
        .m_axi_wvalid(AXIMaster_M_AXI_WVALID));
  AXIMaster_rst_ClockingWizard_8M_0 Reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ClockingWizard_8M_peripheral_aresetn),
        .slowest_sync_clk(ClockIn_1));
endmodule
