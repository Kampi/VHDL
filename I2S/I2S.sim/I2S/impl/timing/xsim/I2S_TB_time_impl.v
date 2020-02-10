// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Feb 10 12:50:57 2020
// Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/I2S.sim/I2S/impl/timing/xsim/I2S_TB_time_impl.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module I2S
   (LRCLK_OBUF,
    SD_OBUF,
    SCLK_Int_reg,
    SCLK_OBUF,
    Clock,
    SCLK_Int,
    MCLK,
    LED_OBUF);
  output LRCLK_OBUF;
  output SD_OBUF;
  output SCLK_Int_reg;
  output SCLK_OBUF;
  input Clock;
  input SCLK_Int;
  input MCLK;
  input [1:0]LED_OBUF;

  wire [6:0]Address;
  wire Clock;
  wire Counter1;
  wire Counter1_carry__0_i_1__0_n_0;
  wire Counter1_carry__0_i_2__0_n_0;
  wire Counter1_carry__0_i_3__0_n_0;
  wire Counter1_carry__0_i_4__0_n_0;
  wire Counter1_carry__0_n_0;
  wire Counter1_carry__1_i_1__0_n_0;
  wire Counter1_carry__1_i_2__0_n_0;
  wire Counter1_carry__1_i_3__0_n_0;
  wire Counter1_carry__1_i_4__0_n_0;
  wire Counter1_carry__1_n_0;
  wire Counter1_carry__2_i_1__0_n_0;
  wire Counter1_carry__2_i_2__0_n_0;
  wire Counter1_carry__2_i_3__0_n_0;
  wire Counter1_carry__2_i_4__0_n_0;
  wire Counter1_carry_i_1__0_n_0;
  wire Counter1_carry_i_2_n_0;
  wire Counter1_carry_i_3__0_n_0;
  wire Counter1_carry_i_4__0_n_0;
  wire Counter1_carry_i_5__0_n_0;
  wire Counter1_carry_i_6_n_0;
  wire Counter1_carry_i_7_n_0;
  wire Counter1_carry_n_0;
  wire \Counter[0]_i_3__0_n_0 ;
  wire \Counter[0]_i_4__0_n_0 ;
  wire \Counter[0]_i_5__0_n_0 ;
  wire \Counter[0]_i_6_n_0 ;
  wire \Counter[12]_i_2__0_n_0 ;
  wire \Counter[12]_i_3__0_n_0 ;
  wire \Counter[12]_i_4__0_n_0 ;
  wire \Counter[12]_i_5__0_n_0 ;
  wire \Counter[16]_i_2__0_n_0 ;
  wire \Counter[16]_i_3__0_n_0 ;
  wire \Counter[16]_i_4__0_n_0 ;
  wire \Counter[16]_i_5__0_n_0 ;
  wire \Counter[20]_i_2__0_n_0 ;
  wire \Counter[20]_i_3__0_n_0 ;
  wire \Counter[20]_i_4__0_n_0 ;
  wire \Counter[20]_i_5__0_n_0 ;
  wire \Counter[24]_i_2__0_n_0 ;
  wire \Counter[24]_i_3__0_n_0 ;
  wire \Counter[24]_i_4__0_n_0 ;
  wire \Counter[24]_i_5__0_n_0 ;
  wire \Counter[28]_i_2__0_n_0 ;
  wire \Counter[28]_i_3__0_n_0 ;
  wire \Counter[28]_i_4__0_n_0 ;
  wire \Counter[28]_i_5__0_n_0 ;
  wire \Counter[4]_i_2__0_n_0 ;
  wire \Counter[4]_i_3__0_n_0 ;
  wire \Counter[4]_i_4__0_n_0 ;
  wire \Counter[4]_i_5__0_n_0 ;
  wire \Counter[8]_i_2__0_n_0 ;
  wire \Counter[8]_i_3__0_n_0 ;
  wire \Counter[8]_i_4__0_n_0 ;
  wire \Counter[8]_i_5__0_n_0 ;
  wire [6:0]Counter_reg;
  wire \Counter_reg[0]_i_2_n_0 ;
  wire \Counter_reg[0]_i_2_n_4 ;
  wire \Counter_reg[0]_i_2_n_5 ;
  wire \Counter_reg[0]_i_2_n_6 ;
  wire \Counter_reg[0]_i_2_n_7 ;
  wire \Counter_reg[12]_i_1__0_n_0 ;
  wire \Counter_reg[12]_i_1__0_n_4 ;
  wire \Counter_reg[12]_i_1__0_n_5 ;
  wire \Counter_reg[12]_i_1__0_n_6 ;
  wire \Counter_reg[12]_i_1__0_n_7 ;
  wire \Counter_reg[16]_i_1__0_n_0 ;
  wire \Counter_reg[16]_i_1__0_n_4 ;
  wire \Counter_reg[16]_i_1__0_n_5 ;
  wire \Counter_reg[16]_i_1__0_n_6 ;
  wire \Counter_reg[16]_i_1__0_n_7 ;
  wire \Counter_reg[20]_i_1__0_n_0 ;
  wire \Counter_reg[20]_i_1__0_n_4 ;
  wire \Counter_reg[20]_i_1__0_n_5 ;
  wire \Counter_reg[20]_i_1__0_n_6 ;
  wire \Counter_reg[20]_i_1__0_n_7 ;
  wire \Counter_reg[24]_i_1__0_n_0 ;
  wire \Counter_reg[24]_i_1__0_n_4 ;
  wire \Counter_reg[24]_i_1__0_n_5 ;
  wire \Counter_reg[24]_i_1__0_n_6 ;
  wire \Counter_reg[24]_i_1__0_n_7 ;
  wire \Counter_reg[28]_i_1__0_n_4 ;
  wire \Counter_reg[28]_i_1__0_n_5 ;
  wire \Counter_reg[28]_i_1__0_n_6 ;
  wire \Counter_reg[28]_i_1__0_n_7 ;
  wire \Counter_reg[4]_i_1__0_n_0 ;
  wire \Counter_reg[4]_i_1__0_n_4 ;
  wire \Counter_reg[4]_i_1__0_n_5 ;
  wire \Counter_reg[4]_i_1__0_n_6 ;
  wire \Counter_reg[4]_i_1__0_n_7 ;
  wire \Counter_reg[8]_i_1__0_n_0 ;
  wire \Counter_reg[8]_i_1__0_n_4 ;
  wire \Counter_reg[8]_i_1__0_n_5 ;
  wire \Counter_reg[8]_i_1__0_n_6 ;
  wire \Counter_reg[8]_i_1__0_n_7 ;
  wire [31:7]Counter_reg__0;
  wire [1:0]CurrentState;
  wire [1:0]CurrentState__0;
  wire [15:0]DataOut;
  wire [31:16]FIFO;
  wire [1:0]LED_OBUF;
  wire LRCLK_OBUF;
  wire MCLK;
  wire ROM_Address;
  wire Ready;
  wire SCLK_Int;
  wire SCLK_Int_reg;
  wire SCLK_OBUF;
  wire SD_OBUF;
  wire Transmitter_n_1;
  wire Transmitter_n_5;
  wire Transmitter_n_6;
  wire Valid_reg_n_0;
  wire [2:0]NLW_Counter1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry_O_UNCONNECTED;
  wire [2:0]NLW_Counter1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_Counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_Counter1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_Counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_Counter_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[8]_i_1__0_CO_UNCONNECTED ;

  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Counter1_carry
       (.CI(1'b0),
        .CO({Counter1_carry_n_0,NLW_Counter1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({Counter1_carry_i_1__0_n_0,Counter1_carry_i_2_n_0,1'b0,Counter1_carry_i_3__0_n_0}),
        .O(NLW_Counter1_carry_O_UNCONNECTED[3:0]),
        .S({Counter1_carry_i_4__0_n_0,Counter1_carry_i_5__0_n_0,Counter1_carry_i_6_n_0,Counter1_carry_i_7_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Counter1_carry__0
       (.CI(Counter1_carry_n_0),
        .CO({Counter1_carry__0_n_0,NLW_Counter1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({Counter1_carry__0_i_1__0_n_0,Counter1_carry__0_i_2__0_n_0,Counter1_carry__0_i_3__0_n_0,Counter1_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__0_i_1__0
       (.I0(Counter_reg__0[14]),
        .I1(Counter_reg__0[15]),
        .O(Counter1_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__0_i_2__0
       (.I0(Counter_reg__0[12]),
        .I1(Counter_reg__0[13]),
        .O(Counter1_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__0_i_3__0
       (.I0(Counter_reg__0[10]),
        .I1(Counter_reg__0[11]),
        .O(Counter1_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__0_i_4__0
       (.I0(Counter_reg__0[8]),
        .I1(Counter_reg__0[9]),
        .O(Counter1_carry__0_i_4__0_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Counter1_carry__1
       (.CI(Counter1_carry__0_n_0),
        .CO({Counter1_carry__1_n_0,NLW_Counter1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({Counter1_carry__1_i_1__0_n_0,Counter1_carry__1_i_2__0_n_0,Counter1_carry__1_i_3__0_n_0,Counter1_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__1_i_1__0
       (.I0(Counter_reg__0[22]),
        .I1(Counter_reg__0[23]),
        .O(Counter1_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__1_i_2__0
       (.I0(Counter_reg__0[20]),
        .I1(Counter_reg__0[21]),
        .O(Counter1_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__1_i_3__0
       (.I0(Counter_reg__0[18]),
        .I1(Counter_reg__0[19]),
        .O(Counter1_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__1_i_4__0
       (.I0(Counter_reg__0[16]),
        .I1(Counter_reg__0[17]),
        .O(Counter1_carry__1_i_4__0_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Counter1_carry__2
       (.CI(Counter1_carry__1_n_0),
        .CO({Counter1,NLW_Counter1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({Counter_reg__0[31],1'b0,1'b0,1'b0}),
        .O(NLW_Counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({Counter1_carry__2_i_1__0_n_0,Counter1_carry__2_i_2__0_n_0,Counter1_carry__2_i_3__0_n_0,Counter1_carry__2_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__2_i_1__0
       (.I0(Counter_reg__0[30]),
        .I1(Counter_reg__0[31]),
        .O(Counter1_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__2_i_2__0
       (.I0(Counter_reg__0[28]),
        .I1(Counter_reg__0[29]),
        .O(Counter1_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__2_i_3__0
       (.I0(Counter_reg__0[26]),
        .I1(Counter_reg__0[27]),
        .O(Counter1_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry__2_i_4__0
       (.I0(Counter_reg__0[24]),
        .I1(Counter_reg__0[25]),
        .O(Counter1_carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry_i_1__0
       (.I0(Counter_reg[6]),
        .I1(Counter_reg__0[7]),
        .O(Counter1_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Counter1_carry_i_2
       (.I0(Counter_reg[5]),
        .O(Counter1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    Counter1_carry_i_3__0
       (.I0(Counter_reg[0]),
        .I1(Counter_reg[1]),
        .O(Counter1_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Counter1_carry_i_4__0
       (.I0(Counter_reg[6]),
        .I1(Counter_reg__0[7]),
        .O(Counter1_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Counter1_carry_i_5__0
       (.I0(Counter_reg[5]),
        .I1(Counter_reg[4]),
        .O(Counter1_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Counter1_carry_i_6
       (.I0(Counter_reg[2]),
        .I1(Counter_reg[3]),
        .O(Counter1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    Counter1_carry_i_7
       (.I0(Counter_reg[0]),
        .I1(Counter_reg[1]),
        .O(Counter1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[0]_i_3__0 
       (.I0(Counter1),
        .I1(Counter_reg[3]),
        .O(\Counter[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[0]_i_4__0 
       (.I0(Counter1),
        .I1(Counter_reg[2]),
        .O(\Counter[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[0]_i_5__0 
       (.I0(Counter1),
        .I1(Counter_reg[1]),
        .O(\Counter[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \Counter[0]_i_6 
       (.I0(Counter_reg[0]),
        .I1(Counter1),
        .O(\Counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[12]_i_2__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[15]),
        .O(\Counter[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[12]_i_3__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[14]),
        .O(\Counter[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[12]_i_4__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[13]),
        .O(\Counter[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[12]_i_5__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[12]),
        .O(\Counter[12]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[16]_i_2__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[19]),
        .O(\Counter[16]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[16]_i_3__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[18]),
        .O(\Counter[16]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[16]_i_4__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[17]),
        .O(\Counter[16]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[16]_i_5__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[16]),
        .O(\Counter[16]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[20]_i_2__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[23]),
        .O(\Counter[20]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[20]_i_3__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[22]),
        .O(\Counter[20]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[20]_i_4__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[21]),
        .O(\Counter[20]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[20]_i_5__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[20]),
        .O(\Counter[20]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[24]_i_2__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[27]),
        .O(\Counter[24]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[24]_i_3__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[26]),
        .O(\Counter[24]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[24]_i_4__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[25]),
        .O(\Counter[24]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[24]_i_5__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[24]),
        .O(\Counter[24]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[28]_i_2__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[31]),
        .O(\Counter[28]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[28]_i_3__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[30]),
        .O(\Counter[28]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[28]_i_4__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[29]),
        .O(\Counter[28]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[28]_i_5__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[28]),
        .O(\Counter[28]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[4]_i_2__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[7]),
        .O(\Counter[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[4]_i_3__0 
       (.I0(Counter1),
        .I1(Counter_reg[6]),
        .O(\Counter[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[4]_i_4__0 
       (.I0(Counter1),
        .I1(Counter_reg[5]),
        .O(\Counter[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[4]_i_5__0 
       (.I0(Counter1),
        .I1(Counter_reg[4]),
        .O(\Counter[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[8]_i_2__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[11]),
        .O(\Counter[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[8]_i_3__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[10]),
        .O(\Counter[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[8]_i_4__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[9]),
        .O(\Counter[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[8]_i_5__0 
       (.I0(Counter1),
        .I1(Counter_reg__0[8]),
        .O(\Counter[8]_i_5__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[0] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[0]_i_2_n_7 ),
        .Q(Counter_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Counter_reg[0]_i_2_n_0 ,\NLW_Counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Counter1}),
        .O({\Counter_reg[0]_i_2_n_4 ,\Counter_reg[0]_i_2_n_5 ,\Counter_reg[0]_i_2_n_6 ,\Counter_reg[0]_i_2_n_7 }),
        .S({\Counter[0]_i_3__0_n_0 ,\Counter[0]_i_4__0_n_0 ,\Counter[0]_i_5__0_n_0 ,\Counter[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[10] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[8]_i_1__0_n_5 ),
        .Q(Counter_reg__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[11] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[8]_i_1__0_n_4 ),
        .Q(Counter_reg__0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[12] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[12]_i_1__0_n_7 ),
        .Q(Counter_reg__0[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[12]_i_1__0 
       (.CI(\Counter_reg[8]_i_1__0_n_0 ),
        .CO({\Counter_reg[12]_i_1__0_n_0 ,\NLW_Counter_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[12]_i_1__0_n_4 ,\Counter_reg[12]_i_1__0_n_5 ,\Counter_reg[12]_i_1__0_n_6 ,\Counter_reg[12]_i_1__0_n_7 }),
        .S({\Counter[12]_i_2__0_n_0 ,\Counter[12]_i_3__0_n_0 ,\Counter[12]_i_4__0_n_0 ,\Counter[12]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[13] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[12]_i_1__0_n_6 ),
        .Q(Counter_reg__0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[14] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[12]_i_1__0_n_5 ),
        .Q(Counter_reg__0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[15] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[12]_i_1__0_n_4 ),
        .Q(Counter_reg__0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[16] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[16]_i_1__0_n_7 ),
        .Q(Counter_reg__0[16]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[16]_i_1__0 
       (.CI(\Counter_reg[12]_i_1__0_n_0 ),
        .CO({\Counter_reg[16]_i_1__0_n_0 ,\NLW_Counter_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[16]_i_1__0_n_4 ,\Counter_reg[16]_i_1__0_n_5 ,\Counter_reg[16]_i_1__0_n_6 ,\Counter_reg[16]_i_1__0_n_7 }),
        .S({\Counter[16]_i_2__0_n_0 ,\Counter[16]_i_3__0_n_0 ,\Counter[16]_i_4__0_n_0 ,\Counter[16]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[17] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[16]_i_1__0_n_6 ),
        .Q(Counter_reg__0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[18] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[16]_i_1__0_n_5 ),
        .Q(Counter_reg__0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[19] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[16]_i_1__0_n_4 ),
        .Q(Counter_reg__0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[1] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[0]_i_2_n_6 ),
        .Q(Counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[20] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[20]_i_1__0_n_7 ),
        .Q(Counter_reg__0[20]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[20]_i_1__0 
       (.CI(\Counter_reg[16]_i_1__0_n_0 ),
        .CO({\Counter_reg[20]_i_1__0_n_0 ,\NLW_Counter_reg[20]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[20]_i_1__0_n_4 ,\Counter_reg[20]_i_1__0_n_5 ,\Counter_reg[20]_i_1__0_n_6 ,\Counter_reg[20]_i_1__0_n_7 }),
        .S({\Counter[20]_i_2__0_n_0 ,\Counter[20]_i_3__0_n_0 ,\Counter[20]_i_4__0_n_0 ,\Counter[20]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[21] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[20]_i_1__0_n_6 ),
        .Q(Counter_reg__0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[22] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[20]_i_1__0_n_5 ),
        .Q(Counter_reg__0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[23] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[20]_i_1__0_n_4 ),
        .Q(Counter_reg__0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[24] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[24]_i_1__0_n_7 ),
        .Q(Counter_reg__0[24]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[24]_i_1__0 
       (.CI(\Counter_reg[20]_i_1__0_n_0 ),
        .CO({\Counter_reg[24]_i_1__0_n_0 ,\NLW_Counter_reg[24]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[24]_i_1__0_n_4 ,\Counter_reg[24]_i_1__0_n_5 ,\Counter_reg[24]_i_1__0_n_6 ,\Counter_reg[24]_i_1__0_n_7 }),
        .S({\Counter[24]_i_2__0_n_0 ,\Counter[24]_i_3__0_n_0 ,\Counter[24]_i_4__0_n_0 ,\Counter[24]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[25] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[24]_i_1__0_n_6 ),
        .Q(Counter_reg__0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[26] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[24]_i_1__0_n_5 ),
        .Q(Counter_reg__0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[27] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[24]_i_1__0_n_4 ),
        .Q(Counter_reg__0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[28] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[28]_i_1__0_n_7 ),
        .Q(Counter_reg__0[28]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[28]_i_1__0 
       (.CI(\Counter_reg[24]_i_1__0_n_0 ),
        .CO(\NLW_Counter_reg[28]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[28]_i_1__0_n_4 ,\Counter_reg[28]_i_1__0_n_5 ,\Counter_reg[28]_i_1__0_n_6 ,\Counter_reg[28]_i_1__0_n_7 }),
        .S({\Counter[28]_i_2__0_n_0 ,\Counter[28]_i_3__0_n_0 ,\Counter[28]_i_4__0_n_0 ,\Counter[28]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[29] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[28]_i_1__0_n_6 ),
        .Q(Counter_reg__0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[2] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[0]_i_2_n_5 ),
        .Q(Counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[30] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[28]_i_1__0_n_5 ),
        .Q(Counter_reg__0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[31] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[28]_i_1__0_n_4 ),
        .Q(Counter_reg__0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[3] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[0]_i_2_n_4 ),
        .Q(Counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[4] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[4]_i_1__0_n_7 ),
        .Q(Counter_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[4]_i_1__0 
       (.CI(\Counter_reg[0]_i_2_n_0 ),
        .CO({\Counter_reg[4]_i_1__0_n_0 ,\NLW_Counter_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[4]_i_1__0_n_4 ,\Counter_reg[4]_i_1__0_n_5 ,\Counter_reg[4]_i_1__0_n_6 ,\Counter_reg[4]_i_1__0_n_7 }),
        .S({\Counter[4]_i_2__0_n_0 ,\Counter[4]_i_3__0_n_0 ,\Counter[4]_i_4__0_n_0 ,\Counter[4]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[5] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[4]_i_1__0_n_6 ),
        .Q(Counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[6] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[4]_i_1__0_n_5 ),
        .Q(Counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[7] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[4]_i_1__0_n_4 ),
        .Q(Counter_reg__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[8] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[8]_i_1__0_n_7 ),
        .Q(Counter_reg__0[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[8]_i_1__0 
       (.CI(\Counter_reg[4]_i_1__0_n_0 ),
        .CO({\Counter_reg[8]_i_1__0_n_0 ,\NLW_Counter_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[8]_i_1__0_n_4 ,\Counter_reg[8]_i_1__0_n_5 ,\Counter_reg[8]_i_1__0_n_6 ,\Counter_reg[8]_i_1__0_n_7 }),
        .S({\Counter[8]_i_2__0_n_0 ,\Counter[8]_i_3__0_n_0 ,\Counter[8]_i_4__0_n_0 ,\Counter[8]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Counter_reg[9] 
       (.C(Clock),
        .CE(ROM_Address),
        .CLR(Transmitter_n_1),
        .D(\Counter_reg[8]_i_1__0_n_6 ),
        .Q(Counter_reg__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[16] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[0]),
        .Q(FIFO[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[17] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[1]),
        .Q(FIFO[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[18] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[2]),
        .Q(FIFO[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[19] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[3]),
        .Q(FIFO[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[20] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[4]),
        .Q(FIFO[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[21] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[5]),
        .Q(FIFO[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[22] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[6]),
        .Q(FIFO[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[23] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[7]),
        .Q(FIFO[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[24] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[8]),
        .Q(FIFO[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[25] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[9]),
        .Q(FIFO[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[26] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[10]),
        .Q(FIFO[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[27] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[11]),
        .Q(FIFO[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[28] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[12]),
        .Q(FIFO[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[29] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[13]),
        .Q(FIFO[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[30] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[14]),
        .Q(FIFO[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_reg[31] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(DataOut[15]),
        .Q(FIFO[31]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h17)) 
    \FSM_sequential_CurrentState[0]_i_1 
       (.I0(CurrentState[1]),
        .I1(Ready),
        .I2(CurrentState[0]),
        .O(CurrentState__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \FSM_sequential_CurrentState[1]_i_1 
       (.I0(CurrentState[0]),
        .I1(CurrentState[1]),
        .I2(Ready),
        .O(CurrentState__0[1]));
  (* FSM_ENCODED_STATES = "reset:00,increase:10,waitforready:01" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Transmitter_n_1),
        .D(CurrentState__0[0]),
        .Q(CurrentState[0]));
  (* FSM_ENCODED_STATES = "reset:00,increase:10,waitforready:01" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Transmitter_n_1),
        .D(CurrentState__0[1]),
        .Q(CurrentState[1]));
  (* hw_handoff = "SineROM.hwdef" *) 
  SineROM ROM
       (.Address(Address),
        .Clock(Clock),
        .DataOut(DataOut),
        .pwropt(Transmitter_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \ROM_Address_reg[0] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(Counter_reg[0]),
        .Q(Address[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ROM_Address_reg[1] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(Counter_reg[1]),
        .Q(Address[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ROM_Address_reg[2] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(Counter_reg[2]),
        .Q(Address[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ROM_Address_reg[3] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(Counter_reg[3]),
        .Q(Address[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ROM_Address_reg[4] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(Counter_reg[4]),
        .Q(Address[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ROM_Address_reg[5] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(Counter_reg[5]),
        .Q(Address[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ROM_Address_reg[6] 
       (.C(Clock),
        .CE(Transmitter_n_6),
        .D(Counter_reg[6]),
        .Q(Address[6]),
        .R(1'b0));
  I2S_Transmitter Transmitter
       (.AR(Transmitter_n_1),
        .\Data_Int_reg[31]_0 (FIFO),
        .E(Transmitter_n_6),
        .\FSM_sequential_CurrentState_reg[0] (Transmitter_n_5),
        .LED_OBUF(LED_OBUF),
        .LRCLK_OBUF(LRCLK_OBUF),
        .MCLK(MCLK),
        .Q(CurrentState),
        .ROM_Address(ROM_Address),
        .Ready(Ready),
        .Ready_reg_0(Valid_reg_n_0),
        .SCLK_Int(SCLK_Int),
        .SCLK_Int_reg_0(SCLK_Int_reg),
        .SCLK_OBUF(SCLK_OBUF),
        .SD_OBUF(SD_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    Valid_reg
       (.C(Clock),
        .CE(1'b1),
        .CLR(Transmitter_n_1),
        .D(Transmitter_n_5),
        .Q(Valid_reg_n_0));
endmodule

module I2S_Transmitter
   (LRCLK_OBUF,
    AR,
    SD_OBUF,
    SCLK_Int_reg_0,
    Ready,
    \FSM_sequential_CurrentState_reg[0] ,
    E,
    SCLK_OBUF,
    ROM_Address,
    SCLK_Int,
    MCLK,
    Ready_reg_0,
    Q,
    LED_OBUF,
    \Data_Int_reg[31]_0 );
  output LRCLK_OBUF;
  output [0:0]AR;
  output SD_OBUF;
  output SCLK_Int_reg_0;
  output Ready;
  output \FSM_sequential_CurrentState_reg[0] ;
  output [0:0]E;
  output SCLK_OBUF;
  output ROM_Address;
  input SCLK_Int;
  input MCLK;
  input Ready_reg_0;
  input [1:0]Q;
  input [1:0]LED_OBUF;
  input [15:0]\Data_Int_reg[31]_0 ;

  wire [0:0]AR;
  wire [31:0]BitCounter;
  wire BitCounter0;
  wire BitCounter0_carry__0_n_0;
  wire BitCounter0_carry__1_n_0;
  wire BitCounter0_carry__2_n_0;
  wire BitCounter0_carry__3_n_0;
  wire BitCounter0_carry__4_n_0;
  wire BitCounter0_carry__5_n_0;
  wire BitCounter0_carry_n_0;
  wire \BitCounter[31]_i_1_n_0 ;
  wire ClockEnable;
  wire ClockEnable_i_1_n_0;
  wire ClockEnable_reg_n_0;
  wire Counter1_carry__0_i_1_n_0;
  wire Counter1_carry__0_i_2_n_0;
  wire Counter1_carry__0_i_3_n_0;
  wire Counter1_carry__0_i_4_n_0;
  wire Counter1_carry__0_n_0;
  wire Counter1_carry__1_i_1_n_0;
  wire Counter1_carry__1_i_2_n_0;
  wire Counter1_carry__1_i_3_n_0;
  wire Counter1_carry__1_i_4_n_0;
  wire Counter1_carry__1_n_0;
  wire Counter1_carry__2_i_1_n_0;
  wire Counter1_carry__2_i_2_n_0;
  wire Counter1_carry__2_i_3_n_0;
  wire Counter1_carry__2_i_4_n_0;
  wire Counter1_carry__2_n_0;
  wire Counter1_carry_i_1_n_0;
  wire Counter1_carry_i_2__0_n_0;
  wire Counter1_carry_i_3_n_0;
  wire Counter1_carry_i_4_n_0;
  wire Counter1_carry_i_5_n_0;
  wire Counter1_carry_n_0;
  wire \Counter[0]_i_2_n_0 ;
  wire \Counter[0]_i_3_n_0 ;
  wire \Counter[0]_i_4_n_0 ;
  wire \Counter[0]_i_5_n_0 ;
  wire \Counter[12]_i_2_n_0 ;
  wire \Counter[12]_i_3_n_0 ;
  wire \Counter[12]_i_4_n_0 ;
  wire \Counter[12]_i_5_n_0 ;
  wire \Counter[16]_i_2_n_0 ;
  wire \Counter[16]_i_3_n_0 ;
  wire \Counter[16]_i_4_n_0 ;
  wire \Counter[16]_i_5_n_0 ;
  wire \Counter[20]_i_2_n_0 ;
  wire \Counter[20]_i_3_n_0 ;
  wire \Counter[20]_i_4_n_0 ;
  wire \Counter[20]_i_5_n_0 ;
  wire \Counter[24]_i_2_n_0 ;
  wire \Counter[24]_i_3_n_0 ;
  wire \Counter[24]_i_4_n_0 ;
  wire \Counter[24]_i_5_n_0 ;
  wire \Counter[28]_i_2_n_0 ;
  wire \Counter[28]_i_3_n_0 ;
  wire \Counter[28]_i_4_n_0 ;
  wire \Counter[28]_i_5_n_0 ;
  wire \Counter[4]_i_2_n_0 ;
  wire \Counter[4]_i_3_n_0 ;
  wire \Counter[4]_i_4_n_0 ;
  wire \Counter[4]_i_5_n_0 ;
  wire \Counter[8]_i_2_n_0 ;
  wire \Counter[8]_i_3_n_0 ;
  wire \Counter[8]_i_4_n_0 ;
  wire \Counter[8]_i_5_n_0 ;
  wire [31:0]Counter_reg;
  wire \Counter_reg[0]_i_1_n_0 ;
  wire \Counter_reg[0]_i_1_n_4 ;
  wire \Counter_reg[0]_i_1_n_5 ;
  wire \Counter_reg[0]_i_1_n_6 ;
  wire \Counter_reg[0]_i_1_n_7 ;
  wire \Counter_reg[12]_i_1_n_0 ;
  wire \Counter_reg[12]_i_1_n_4 ;
  wire \Counter_reg[12]_i_1_n_5 ;
  wire \Counter_reg[12]_i_1_n_6 ;
  wire \Counter_reg[12]_i_1_n_7 ;
  wire \Counter_reg[16]_i_1_n_0 ;
  wire \Counter_reg[16]_i_1_n_4 ;
  wire \Counter_reg[16]_i_1_n_5 ;
  wire \Counter_reg[16]_i_1_n_6 ;
  wire \Counter_reg[16]_i_1_n_7 ;
  wire \Counter_reg[20]_i_1_n_0 ;
  wire \Counter_reg[20]_i_1_n_4 ;
  wire \Counter_reg[20]_i_1_n_5 ;
  wire \Counter_reg[20]_i_1_n_6 ;
  wire \Counter_reg[20]_i_1_n_7 ;
  wire \Counter_reg[24]_i_1_n_0 ;
  wire \Counter_reg[24]_i_1_n_4 ;
  wire \Counter_reg[24]_i_1_n_5 ;
  wire \Counter_reg[24]_i_1_n_6 ;
  wire \Counter_reg[24]_i_1_n_7 ;
  wire \Counter_reg[28]_i_1_n_4 ;
  wire \Counter_reg[28]_i_1_n_5 ;
  wire \Counter_reg[28]_i_1_n_6 ;
  wire \Counter_reg[28]_i_1_n_7 ;
  wire \Counter_reg[4]_i_1_n_0 ;
  wire \Counter_reg[4]_i_1_n_4 ;
  wire \Counter_reg[4]_i_1_n_5 ;
  wire \Counter_reg[4]_i_1_n_6 ;
  wire \Counter_reg[4]_i_1_n_7 ;
  wire \Counter_reg[8]_i_1_n_0 ;
  wire \Counter_reg[8]_i_1_n_4 ;
  wire \Counter_reg[8]_i_1_n_5 ;
  wire \Counter_reg[8]_i_1_n_6 ;
  wire \Counter_reg[8]_i_1_n_7 ;
  wire \Data_Int[10]_i_1_n_0 ;
  wire \Data_Int[11]_i_1_n_0 ;
  wire \Data_Int[12]_i_1_n_0 ;
  wire \Data_Int[13]_i_1_n_0 ;
  wire \Data_Int[14]_i_1_n_0 ;
  wire \Data_Int[15]_i_1_n_0 ;
  wire \Data_Int[16]_i_1_n_0 ;
  wire \Data_Int[17]_i_1_n_0 ;
  wire \Data_Int[18]_i_1_n_0 ;
  wire \Data_Int[19]_i_1_n_0 ;
  wire \Data_Int[20]_i_1_n_0 ;
  wire \Data_Int[21]_i_1_n_0 ;
  wire \Data_Int[22]_i_1_n_0 ;
  wire \Data_Int[23]_i_1_n_0 ;
  wire \Data_Int[24]_i_1_n_0 ;
  wire \Data_Int[25]_i_1_n_0 ;
  wire \Data_Int[26]_i_1_n_0 ;
  wire \Data_Int[27]_i_1_n_0 ;
  wire \Data_Int[28]_i_1_n_0 ;
  wire \Data_Int[29]_i_1_n_0 ;
  wire \Data_Int[2]_i_1_n_0 ;
  wire \Data_Int[30]_i_1_n_0 ;
  wire \Data_Int[31]_i_1_n_0 ;
  wire \Data_Int[3]_i_1_n_0 ;
  wire \Data_Int[4]_i_1_n_0 ;
  wire \Data_Int[5]_i_1_n_0 ;
  wire \Data_Int[6]_i_1_n_0 ;
  wire \Data_Int[7]_i_1_n_0 ;
  wire \Data_Int[8]_i_1_n_0 ;
  wire \Data_Int[9]_i_1_n_0 ;
  wire [15:0]\Data_Int_reg[31]_0 ;
  wire [0:0]E;
  wire \FSM_onehot_CurrentState[1]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState[2]_i_1_n_0 ;
  wire \FSM_onehot_CurrentState_reg_n_0_[1] ;
  wire \FSM_onehot_CurrentState_reg_n_0_[2] ;
  wire \FSM_sequential_CurrentState_reg[0] ;
  wire [1:0]LED_OBUF;
  wire LRCLK1;
  wire LRCLK_OBUF;
  wire LRCLK_i_10_n_0;
  wire LRCLK_i_11_n_0;
  wire LRCLK_i_13_n_0;
  wire LRCLK_i_14_n_0;
  wire LRCLK_i_15_n_0;
  wire LRCLK_i_16_n_0;
  wire LRCLK_i_17_n_0;
  wire LRCLK_i_18_n_0;
  wire LRCLK_i_19_n_0;
  wire LRCLK_i_1_n_0;
  wire LRCLK_i_20_n_0;
  wire LRCLK_i_21_n_0;
  wire LRCLK_i_2_n_0;
  wire LRCLK_i_5_n_0;
  wire LRCLK_i_6_n_0;
  wire LRCLK_i_8_n_0;
  wire LRCLK_i_9_n_0;
  wire LRCLK_reg_i_12_n_0;
  wire LRCLK_reg_i_4_n_0;
  wire LRCLK_reg_i_7_n_0;
  wire MCLK;
  wire [1:0]Q;
  wire ROM_Address;
  wire Ready;
  wire Ready1_carry__0_i_1_n_0;
  wire Ready1_carry__0_i_2_n_0;
  wire Ready1_carry__0_i_3_n_0;
  wire Ready1_carry__0_i_4_n_0;
  wire Ready1_carry__0_n_0;
  wire Ready1_carry__1_i_1_n_0;
  wire Ready1_carry__1_i_2_n_0;
  wire Ready1_carry__1_i_3_n_0;
  wire Ready1_carry__1_i_4_n_0;
  wire Ready1_carry__1_n_0;
  wire Ready1_carry__2_i_1_n_0;
  wire Ready1_carry__2_i_2_n_0;
  wire Ready1_carry__2_i_3_n_0;
  wire Ready1_carry__2_i_4_n_0;
  wire Ready1_carry__2_n_0;
  wire Ready1_carry_i_1_n_0;
  wire Ready1_carry_i_2_n_0;
  wire Ready1_carry_i_3_n_0;
  wire Ready1_carry_i_4_n_0;
  wire Ready1_carry_i_5_n_0;
  wire Ready1_carry_i_6_n_0;
  wire Ready1_carry_i_7_n_0;
  wire Ready1_carry_n_0;
  wire Ready_i_1_n_0;
  wire Ready_reg_0;
  wire SCLK_Int;
  wire SCLK_Int_i_1_n_0;
  wire SCLK_Int_reg_0;
  wire SCLK_OBUF;
  wire SD_OBUF;
  wire [31:2]in5;
  wire [31:1]in8;
  wire [0:0]in8__0;
  wire p_1_in;
  wire [2:0]NLW_BitCounter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_BitCounter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_BitCounter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_BitCounter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_BitCounter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_BitCounter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_BitCounter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_BitCounter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_BitCounter0_carry__6_O_UNCONNECTED;
  wire [2:0]NLW_Counter1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry_O_UNCONNECTED;
  wire [2:0]NLW_Counter1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_Counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_Counter1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_Counter1_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_Counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_Counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_LRCLK_reg_i_12_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_reg_i_12_O_UNCONNECTED;
  wire [3:0]NLW_LRCLK_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_reg_i_3_O_UNCONNECTED;
  wire [2:0]NLW_LRCLK_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_reg_i_4_O_UNCONNECTED;
  wire [2:0]NLW_LRCLK_reg_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_LRCLK_reg_i_7_O_UNCONNECTED;
  wire [2:0]NLW_Ready1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_Ready1_carry_O_UNCONNECTED;
  wire [2:0]NLW_Ready1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_Ready1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_Ready1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_Ready1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_Ready1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_Ready1_carry__2_O_UNCONNECTED;

  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 BitCounter0_carry
       (.CI(1'b0),
        .CO({BitCounter0_carry_n_0,NLW_BitCounter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(BitCounter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[4:1]),
        .S(BitCounter[4:1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 BitCounter0_carry__0
       (.CI(BitCounter0_carry_n_0),
        .CO({BitCounter0_carry__0_n_0,NLW_BitCounter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[8:5]),
        .S(BitCounter[8:5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 BitCounter0_carry__1
       (.CI(BitCounter0_carry__0_n_0),
        .CO({BitCounter0_carry__1_n_0,NLW_BitCounter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[12:9]),
        .S(BitCounter[12:9]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 BitCounter0_carry__2
       (.CI(BitCounter0_carry__1_n_0),
        .CO({BitCounter0_carry__2_n_0,NLW_BitCounter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[16:13]),
        .S(BitCounter[16:13]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 BitCounter0_carry__3
       (.CI(BitCounter0_carry__2_n_0),
        .CO({BitCounter0_carry__3_n_0,NLW_BitCounter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[20:17]),
        .S(BitCounter[20:17]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 BitCounter0_carry__4
       (.CI(BitCounter0_carry__3_n_0),
        .CO({BitCounter0_carry__4_n_0,NLW_BitCounter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[24:21]),
        .S(BitCounter[24:21]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 BitCounter0_carry__5
       (.CI(BitCounter0_carry__4_n_0),
        .CO({BitCounter0_carry__5_n_0,NLW_BitCounter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[28:25]),
        .S(BitCounter[28:25]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 BitCounter0_carry__6
       (.CI(BitCounter0_carry__5_n_0),
        .CO(NLW_BitCounter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_BitCounter0_carry__6_O_UNCONNECTED[3],in8[31:29]}),
        .S({1'b0,BitCounter[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    \BitCounter[0]_i_1 
       (.I0(BitCounter[0]),
        .O(in8__0));
  LUT6 #(
    .INIT(64'h00000000EA000000)) 
    \BitCounter[31]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I2(Ready_reg_0),
        .I3(LED_OBUF[0]),
        .I4(LED_OBUF[1]),
        .I5(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\BitCounter[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888808080)) 
    \BitCounter[31]_i_2 
       (.I0(LED_OBUF[1]),
        .I1(LED_OBUF[0]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I3(Ready_reg_0),
        .I4(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I5(ClockEnable),
        .O(BitCounter0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[0] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8__0),
        .Q(BitCounter[0]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[10] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[10]),
        .Q(BitCounter[10]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[11] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[11]),
        .Q(BitCounter[11]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[12] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[12]),
        .Q(BitCounter[12]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[13] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[13]),
        .Q(BitCounter[13]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[14] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[14]),
        .Q(BitCounter[14]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[15] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[15]),
        .Q(BitCounter[15]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[16] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[16]),
        .Q(BitCounter[16]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[17] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[17]),
        .Q(BitCounter[17]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[18] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[18]),
        .Q(BitCounter[18]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[19] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[19]),
        .Q(BitCounter[19]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[1] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[1]),
        .Q(BitCounter[1]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[20] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[20]),
        .Q(BitCounter[20]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[21] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[21]),
        .Q(BitCounter[21]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[22] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[22]),
        .Q(BitCounter[22]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[23] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[23]),
        .Q(BitCounter[23]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[24] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[24]),
        .Q(BitCounter[24]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[25] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[25]),
        .Q(BitCounter[25]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[26] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[26]),
        .Q(BitCounter[26]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[27] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[27]),
        .Q(BitCounter[27]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[28] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[28]),
        .Q(BitCounter[28]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[29] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[29]),
        .Q(BitCounter[29]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[2] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[2]),
        .Q(BitCounter[2]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[30] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[30]),
        .Q(BitCounter[30]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[31] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[31]),
        .Q(BitCounter[31]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[3] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[3]),
        .Q(BitCounter[3]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[4] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[4]),
        .Q(BitCounter[4]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[5] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[5]),
        .Q(BitCounter[5]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[6] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[6]),
        .Q(BitCounter[6]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[7] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[7]),
        .Q(BitCounter[7]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[8] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[8]),
        .Q(BitCounter[8]),
        .R(\BitCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \BitCounter_reg[9] 
       (.C(SCLK_Int),
        .CE(BitCounter0),
        .D(in8[9]),
        .Q(BitCounter[9]),
        .R(\BitCounter[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    ClockEnable_i_1
       (.I0(ClockEnable),
        .I1(ClockEnable_reg_n_0),
        .O(ClockEnable_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    ClockEnable_reg
       (.C(SCLK_Int),
        .CE(1'b1),
        .CLR(AR),
        .D(ClockEnable_i_1_n_0),
        .Q(ClockEnable_reg_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Counter1_carry
       (.CI(1'b0),
        .CO({Counter1_carry_n_0,NLW_Counter1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Counter1_carry_i_1_n_0}),
        .O(NLW_Counter1_carry_O_UNCONNECTED[3:0]),
        .S({Counter1_carry_i_2__0_n_0,Counter1_carry_i_3_n_0,Counter1_carry_i_4_n_0,Counter1_carry_i_5_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Counter1_carry__0
       (.CI(Counter1_carry_n_0),
        .CO({Counter1_carry__0_n_0,NLW_Counter1_carry__0_CO_UNCONNECTED[2:0]}),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Counter1_carry__1
       (.CI(Counter1_carry__0_n_0),
        .CO({Counter1_carry__1_n_0,NLW_Counter1_carry__1_CO_UNCONNECTED[2:0]}),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Counter1_carry__2
       (.CI(Counter1_carry__1_n_0),
        .CO({Counter1_carry__2_n_0,NLW_Counter1_carry__2_CO_UNCONNECTED[2:0]}),
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
    Counter1_carry_i_2__0
       (.I0(Counter_reg[6]),
        .I1(Counter_reg[7]),
        .O(Counter1_carry_i_2__0_n_0));
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
  LUT3 #(
    .INIT(8'h40)) 
    \Counter[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Ready),
        .O(ROM_Address));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[0]_i_2 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[3]),
        .O(\Counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[0]_i_3 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[2]),
        .O(\Counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[0]_i_4 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[1]),
        .O(\Counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \Counter[0]_i_5 
       (.I0(Counter_reg[0]),
        .I1(Counter1_carry__2_n_0),
        .O(\Counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[12]_i_2 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[15]),
        .O(\Counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[12]_i_3 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[14]),
        .O(\Counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[12]_i_4 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[13]),
        .O(\Counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[12]_i_5 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[12]),
        .O(\Counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[16]_i_2 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[19]),
        .O(\Counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[16]_i_3 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[18]),
        .O(\Counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[16]_i_4 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[17]),
        .O(\Counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[16]_i_5 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[16]),
        .O(\Counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[20]_i_2 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[23]),
        .O(\Counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[20]_i_3 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[22]),
        .O(\Counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[20]_i_4 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[21]),
        .O(\Counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[20]_i_5 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[20]),
        .O(\Counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[24]_i_2 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[27]),
        .O(\Counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[24]_i_3 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[26]),
        .O(\Counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[24]_i_4 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[25]),
        .O(\Counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[24]_i_5 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[24]),
        .O(\Counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[28]_i_2 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[31]),
        .O(\Counter[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[28]_i_3 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[30]),
        .O(\Counter[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[28]_i_4 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[29]),
        .O(\Counter[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[28]_i_5 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[28]),
        .O(\Counter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[4]_i_2 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[7]),
        .O(\Counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[4]_i_3 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[6]),
        .O(\Counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[4]_i_4 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[5]),
        .O(\Counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[4]_i_5 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[4]),
        .O(\Counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[8]_i_2 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[11]),
        .O(\Counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[8]_i_3 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[10]),
        .O(\Counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[8]_i_4 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[9]),
        .O(\Counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Counter[8]_i_5 
       (.I0(Counter1_carry__2_n_0),
        .I1(Counter_reg[8]),
        .O(\Counter[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[0] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[0]_i_1_n_7 ),
        .Q(Counter_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\Counter_reg[0]_i_1_n_0 ,\NLW_Counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Counter1_carry__2_n_0}),
        .O({\Counter_reg[0]_i_1_n_4 ,\Counter_reg[0]_i_1_n_5 ,\Counter_reg[0]_i_1_n_6 ,\Counter_reg[0]_i_1_n_7 }),
        .S({\Counter[0]_i_2_n_0 ,\Counter[0]_i_3_n_0 ,\Counter[0]_i_4_n_0 ,\Counter[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[10] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[8]_i_1_n_5 ),
        .Q(Counter_reg[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[11] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[8]_i_1_n_4 ),
        .Q(Counter_reg[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[12] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[12]_i_1_n_7 ),
        .Q(Counter_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[12]_i_1 
       (.CI(\Counter_reg[8]_i_1_n_0 ),
        .CO({\Counter_reg[12]_i_1_n_0 ,\NLW_Counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[12]_i_1_n_4 ,\Counter_reg[12]_i_1_n_5 ,\Counter_reg[12]_i_1_n_6 ,\Counter_reg[12]_i_1_n_7 }),
        .S({\Counter[12]_i_2_n_0 ,\Counter[12]_i_3_n_0 ,\Counter[12]_i_4_n_0 ,\Counter[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[13] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[12]_i_1_n_6 ),
        .Q(Counter_reg[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[14] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[12]_i_1_n_5 ),
        .Q(Counter_reg[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[15] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[12]_i_1_n_4 ),
        .Q(Counter_reg[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[16] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[16]_i_1_n_7 ),
        .Q(Counter_reg[16]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[16]_i_1 
       (.CI(\Counter_reg[12]_i_1_n_0 ),
        .CO({\Counter_reg[16]_i_1_n_0 ,\NLW_Counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[16]_i_1_n_4 ,\Counter_reg[16]_i_1_n_5 ,\Counter_reg[16]_i_1_n_6 ,\Counter_reg[16]_i_1_n_7 }),
        .S({\Counter[16]_i_2_n_0 ,\Counter[16]_i_3_n_0 ,\Counter[16]_i_4_n_0 ,\Counter[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[17] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[16]_i_1_n_6 ),
        .Q(Counter_reg[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[18] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[16]_i_1_n_5 ),
        .Q(Counter_reg[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[19] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[16]_i_1_n_4 ),
        .Q(Counter_reg[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[1] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[0]_i_1_n_6 ),
        .Q(Counter_reg[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[20] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[20]_i_1_n_7 ),
        .Q(Counter_reg[20]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[20]_i_1 
       (.CI(\Counter_reg[16]_i_1_n_0 ),
        .CO({\Counter_reg[20]_i_1_n_0 ,\NLW_Counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[20]_i_1_n_4 ,\Counter_reg[20]_i_1_n_5 ,\Counter_reg[20]_i_1_n_6 ,\Counter_reg[20]_i_1_n_7 }),
        .S({\Counter[20]_i_2_n_0 ,\Counter[20]_i_3_n_0 ,\Counter[20]_i_4_n_0 ,\Counter[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[21] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[20]_i_1_n_6 ),
        .Q(Counter_reg[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[22] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[20]_i_1_n_5 ),
        .Q(Counter_reg[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[23] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[20]_i_1_n_4 ),
        .Q(Counter_reg[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[24] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[24]_i_1_n_7 ),
        .Q(Counter_reg[24]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[24]_i_1 
       (.CI(\Counter_reg[20]_i_1_n_0 ),
        .CO({\Counter_reg[24]_i_1_n_0 ,\NLW_Counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[24]_i_1_n_4 ,\Counter_reg[24]_i_1_n_5 ,\Counter_reg[24]_i_1_n_6 ,\Counter_reg[24]_i_1_n_7 }),
        .S({\Counter[24]_i_2_n_0 ,\Counter[24]_i_3_n_0 ,\Counter[24]_i_4_n_0 ,\Counter[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[25] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[24]_i_1_n_6 ),
        .Q(Counter_reg[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[26] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[24]_i_1_n_5 ),
        .Q(Counter_reg[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[27] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[24]_i_1_n_4 ),
        .Q(Counter_reg[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[28] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[28]_i_1_n_7 ),
        .Q(Counter_reg[28]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[28]_i_1 
       (.CI(\Counter_reg[24]_i_1_n_0 ),
        .CO(\NLW_Counter_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[28]_i_1_n_4 ,\Counter_reg[28]_i_1_n_5 ,\Counter_reg[28]_i_1_n_6 ,\Counter_reg[28]_i_1_n_7 }),
        .S({\Counter[28]_i_2_n_0 ,\Counter[28]_i_3_n_0 ,\Counter[28]_i_4_n_0 ,\Counter[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[29] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[28]_i_1_n_6 ),
        .Q(Counter_reg[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[2] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[0]_i_1_n_5 ),
        .Q(Counter_reg[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[30] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[28]_i_1_n_5 ),
        .Q(Counter_reg[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[31] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[28]_i_1_n_4 ),
        .Q(Counter_reg[31]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[3] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[0]_i_1_n_4 ),
        .Q(Counter_reg[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[4] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[4]_i_1_n_7 ),
        .Q(Counter_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[4]_i_1 
       (.CI(\Counter_reg[0]_i_1_n_0 ),
        .CO({\Counter_reg[4]_i_1_n_0 ,\NLW_Counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[4]_i_1_n_4 ,\Counter_reg[4]_i_1_n_5 ,\Counter_reg[4]_i_1_n_6 ,\Counter_reg[4]_i_1_n_7 }),
        .S({\Counter[4]_i_2_n_0 ,\Counter[4]_i_3_n_0 ,\Counter[4]_i_4_n_0 ,\Counter[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[5] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[4]_i_1_n_6 ),
        .Q(Counter_reg[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[6] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[4]_i_1_n_5 ),
        .Q(Counter_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[7] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[4]_i_1_n_4 ),
        .Q(Counter_reg[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[8] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[8]_i_1_n_7 ),
        .Q(Counter_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \Counter_reg[8]_i_1 
       (.CI(\Counter_reg[4]_i_1_n_0 ),
        .CO({\Counter_reg[8]_i_1_n_0 ,\NLW_Counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Counter_reg[8]_i_1_n_4 ,\Counter_reg[8]_i_1_n_5 ,\Counter_reg[8]_i_1_n_6 ,\Counter_reg[8]_i_1_n_7 }),
        .S({\Counter[8]_i_2_n_0 ,\Counter[8]_i_3_n_0 ,\Counter[8]_i_4_n_0 ,\Counter[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Counter_reg[9] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[8]_i_1_n_6 ),
        .Q(Counter_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[10]_i_1 
       (.I0(ClockEnable),
        .I1(in5[10]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[11]_i_1 
       (.I0(ClockEnable),
        .I1(in5[11]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[12]_i_1 
       (.I0(ClockEnable),
        .I1(in5[12]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[13]_i_1 
       (.I0(ClockEnable),
        .I1(in5[13]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[14]_i_1 
       (.I0(ClockEnable),
        .I1(in5[14]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[15]_i_1 
       (.I0(ClockEnable),
        .I1(in5[15]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[16]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[16]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [0]),
        .O(\Data_Int[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[17]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[17]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [1]),
        .O(\Data_Int[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[18]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[18]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [2]),
        .O(\Data_Int[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[19]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[19]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [3]),
        .O(\Data_Int[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[20]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[20]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [4]),
        .O(\Data_Int[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[21]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[21]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [5]),
        .O(\Data_Int[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[22]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[22]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [6]),
        .O(\Data_Int[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[23]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[23]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [7]),
        .O(\Data_Int[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[24]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[24]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [8]),
        .O(\Data_Int[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[25]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[25]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [9]),
        .O(\Data_Int[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[26]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[26]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [10]),
        .O(\Data_Int[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[27]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[27]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [11]),
        .O(\Data_Int[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[28]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[28]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [12]),
        .O(\Data_Int[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[29]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[29]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [13]),
        .O(\Data_Int[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[2]_i_1 
       (.I0(ClockEnable),
        .I1(in5[2]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[30]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[30]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [14]),
        .O(\Data_Int[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \Data_Int[31]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(in5[31]),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(\Data_Int_reg[31]_0 [15]),
        .O(\Data_Int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[3]_i_1 
       (.I0(ClockEnable),
        .I1(in5[3]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[4]_i_1 
       (.I0(ClockEnable),
        .I1(in5[4]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[5]_i_1 
       (.I0(ClockEnable),
        .I1(in5[5]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[6]_i_1 
       (.I0(ClockEnable),
        .I1(in5[6]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[7]_i_1 
       (.I0(ClockEnable),
        .I1(in5[7]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[8]_i_1 
       (.I0(ClockEnable),
        .I1(in5[8]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \Data_Int[9]_i_1 
       (.I0(ClockEnable),
        .I1(in5[9]),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\Data_Int[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[10] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[10]_i_1_n_0 ),
        .Q(in5[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[11] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[11]_i_1_n_0 ),
        .Q(in5[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[12] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[12]_i_1_n_0 ),
        .Q(in5[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[13] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[13]_i_1_n_0 ),
        .Q(in5[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[14] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[14]_i_1_n_0 ),
        .Q(in5[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[15] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[15]_i_1_n_0 ),
        .Q(in5[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[16] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[16]_i_1_n_0 ),
        .Q(in5[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[17] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[17]_i_1_n_0 ),
        .Q(in5[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[18] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[18]_i_1_n_0 ),
        .Q(in5[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[19] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[19]_i_1_n_0 ),
        .Q(in5[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[1] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(ClockEnable),
        .Q(in5[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[20] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[20]_i_1_n_0 ),
        .Q(in5[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[21] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[21]_i_1_n_0 ),
        .Q(in5[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[22] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[22]_i_1_n_0 ),
        .Q(in5[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[23] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[23]_i_1_n_0 ),
        .Q(in5[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[24] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[24]_i_1_n_0 ),
        .Q(in5[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[25] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[25]_i_1_n_0 ),
        .Q(in5[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[26] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[26]_i_1_n_0 ),
        .Q(in5[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[27] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[27]_i_1_n_0 ),
        .Q(in5[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[28] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[28]_i_1_n_0 ),
        .Q(in5[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[29] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[29]_i_1_n_0 ),
        .Q(in5[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[2] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[2]_i_1_n_0 ),
        .Q(in5[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[30] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[30]_i_1_n_0 ),
        .Q(in5[31]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[31] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[31]_i_1_n_0 ),
        .Q(p_1_in));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[3] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[3]_i_1_n_0 ),
        .Q(in5[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[4] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[4]_i_1_n_0 ),
        .Q(in5[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[5] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[5]_i_1_n_0 ),
        .Q(in5[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[6] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[6]_i_1_n_0 ),
        .Q(in5[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[7] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[7]_i_1_n_0 ),
        .Q(in5[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[8] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[8]_i_1_n_0 ),
        .Q(in5[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Data_Int_reg[9] 
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .CLR(AR),
        .D(\Data_Int[9]_i_1_n_0 ),
        .Q(in5[10]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \FIFO[31]_i_1 
       (.I0(LED_OBUF[1]),
        .I1(LED_OBUF[0]),
        .I2(Ready),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \FSM_onehot_CurrentState[1]_i_1 
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(Ready1_carry__2_n_0),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(Ready_reg_0),
        .O(\FSM_onehot_CurrentState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_CurrentState[2]_i_1 
       (.I0(Ready_reg_0),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I2(Ready1_carry__2_n_0),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .O(\FSM_onehot_CurrentState[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_CurrentState[2]_i_3 
       (.I0(LED_OBUF[1]),
        .I1(LED_OBUF[0]),
        .O(AR));
  (* FSM_ENCODED_STATES = "reset:001,idle:010,transmit:100" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_CurrentState_reg[0] 
       (.C(SCLK_Int),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AR),
        .Q(ClockEnable));
  (* FSM_ENCODED_STATES = "reset:001,idle:010,transmit:100" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_CurrentState_reg[1] 
       (.C(SCLK_Int),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_CurrentState[1]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "reset:001,idle:010,transmit:100" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_CurrentState_reg[2] 
       (.C(SCLK_Int),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_CurrentState[2]_i_1_n_0 ),
        .Q(\FSM_onehot_CurrentState_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hEA)) 
    LRCLK_i_1
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(Ready_reg_0),
        .I2(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .O(LRCLK_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_10
       (.I0(in8[22]),
        .I1(in8[23]),
        .O(LRCLK_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_11
       (.I0(in8[20]),
        .I1(in8[21]),
        .O(LRCLK_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_13
       (.I0(in8[18]),
        .I1(in8[19]),
        .O(LRCLK_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_14
       (.I0(in8[16]),
        .I1(in8[17]),
        .O(LRCLK_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_15
       (.I0(in8[14]),
        .I1(in8[15]),
        .O(LRCLK_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_16
       (.I0(in8[12]),
        .I1(in8[13]),
        .O(LRCLK_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_17
       (.I0(in8[4]),
        .I1(in8[5]),
        .O(LRCLK_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_18
       (.I0(in8[10]),
        .I1(in8[11]),
        .O(LRCLK_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_19
       (.I0(in8[8]),
        .I1(in8[9]),
        .O(LRCLK_i_19_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LRCLK_i_2
       (.I0(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I1(LRCLK1),
        .O(LRCLK_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_20
       (.I0(in8[6]),
        .I1(in8[7]),
        .O(LRCLK_i_20_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LRCLK_i_21
       (.I0(in8[4]),
        .I1(in8[5]),
        .O(LRCLK_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_5
       (.I0(in8[30]),
        .I1(in8[31]),
        .O(LRCLK_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_6
       (.I0(in8[28]),
        .I1(in8[29]),
        .O(LRCLK_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_8
       (.I0(in8[26]),
        .I1(in8[27]),
        .O(LRCLK_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LRCLK_i_9
       (.I0(in8[24]),
        .I1(in8[25]),
        .O(LRCLK_i_9_n_0));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    LRCLK_reg
       (.C(SCLK_Int),
        .CE(LRCLK_i_1_n_0),
        .D(LRCLK_i_2_n_0),
        .PRE(AR),
        .Q(LRCLK_OBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 LRCLK_reg_i_12
       (.CI(1'b0),
        .CO({LRCLK_reg_i_12_n_0,NLW_LRCLK_reg_i_12_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,LRCLK_i_17_n_0}),
        .O(NLW_LRCLK_reg_i_12_O_UNCONNECTED[3:0]),
        .S({LRCLK_i_18_n_0,LRCLK_i_19_n_0,LRCLK_i_20_n_0,LRCLK_i_21_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 LRCLK_reg_i_3
       (.CI(LRCLK_reg_i_4_n_0),
        .CO({NLW_LRCLK_reg_i_3_CO_UNCONNECTED[3:2],LRCLK1,NLW_LRCLK_reg_i_3_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in8[31],1'b0}),
        .O(NLW_LRCLK_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,LRCLK_i_5_n_0,LRCLK_i_6_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 LRCLK_reg_i_4
       (.CI(LRCLK_reg_i_7_n_0),
        .CO({LRCLK_reg_i_4_n_0,NLW_LRCLK_reg_i_4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_reg_i_4_O_UNCONNECTED[3:0]),
        .S({LRCLK_i_8_n_0,LRCLK_i_9_n_0,LRCLK_i_10_n_0,LRCLK_i_11_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 LRCLK_reg_i_7
       (.CI(LRCLK_reg_i_12_n_0),
        .CO({LRCLK_reg_i_7_n_0,NLW_LRCLK_reg_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LRCLK_reg_i_7_O_UNCONNECTED[3:0]),
        .S({LRCLK_i_13_n_0,LRCLK_i_14_n_0,LRCLK_i_15_n_0,LRCLK_i_16_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Ready1_carry
       (.CI(1'b0),
        .CO({Ready1_carry_n_0,NLW_Ready1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,Ready1_carry_i_1_n_0,Ready1_carry_i_2_n_0,Ready1_carry_i_3_n_0}),
        .O(NLW_Ready1_carry_O_UNCONNECTED[3:0]),
        .S({Ready1_carry_i_4_n_0,Ready1_carry_i_5_n_0,Ready1_carry_i_6_n_0,Ready1_carry_i_7_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Ready1_carry__0
       (.CI(Ready1_carry_n_0),
        .CO({Ready1_carry__0_n_0,NLW_Ready1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Ready1_carry__0_O_UNCONNECTED[3:0]),
        .S({Ready1_carry__0_i_1_n_0,Ready1_carry__0_i_2_n_0,Ready1_carry__0_i_3_n_0,Ready1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__0_i_1
       (.I0(in8[14]),
        .I1(in8[15]),
        .O(Ready1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__0_i_2
       (.I0(in8[12]),
        .I1(in8[13]),
        .O(Ready1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__0_i_3
       (.I0(in8[10]),
        .I1(in8[11]),
        .O(Ready1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__0_i_4
       (.I0(in8[8]),
        .I1(in8[9]),
        .O(Ready1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Ready1_carry__1
       (.CI(Ready1_carry__0_n_0),
        .CO({Ready1_carry__1_n_0,NLW_Ready1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Ready1_carry__1_O_UNCONNECTED[3:0]),
        .S({Ready1_carry__1_i_1_n_0,Ready1_carry__1_i_2_n_0,Ready1_carry__1_i_3_n_0,Ready1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__1_i_1
       (.I0(in8[22]),
        .I1(in8[23]),
        .O(Ready1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__1_i_2
       (.I0(in8[20]),
        .I1(in8[21]),
        .O(Ready1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__1_i_3
       (.I0(in8[18]),
        .I1(in8[19]),
        .O(Ready1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__1_i_4
       (.I0(in8[16]),
        .I1(in8[17]),
        .O(Ready1_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Ready1_carry__2
       (.CI(Ready1_carry__1_n_0),
        .CO({Ready1_carry__2_n_0,NLW_Ready1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({in8[31],1'b0,1'b0,1'b0}),
        .O(NLW_Ready1_carry__2_O_UNCONNECTED[3:0]),
        .S({Ready1_carry__2_i_1_n_0,Ready1_carry__2_i_2_n_0,Ready1_carry__2_i_3_n_0,Ready1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__2_i_1
       (.I0(in8[30]),
        .I1(in8[31]),
        .O(Ready1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__2_i_2
       (.I0(in8[28]),
        .I1(in8[29]),
        .O(Ready1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__2_i_3
       (.I0(in8[26]),
        .I1(in8[27]),
        .O(Ready1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry__2_i_4
       (.I0(in8[24]),
        .I1(in8[25]),
        .O(Ready1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry_i_1
       (.I0(in8[4]),
        .I1(in8[5]),
        .O(Ready1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    Ready1_carry_i_2
       (.I0(in8[2]),
        .I1(in8[3]),
        .O(Ready1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    Ready1_carry_i_3
       (.I0(BitCounter[0]),
        .I1(in8[1]),
        .O(Ready1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Ready1_carry_i_4
       (.I0(in8[6]),
        .I1(in8[7]),
        .O(Ready1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Ready1_carry_i_5
       (.I0(in8[4]),
        .I1(in8[5]),
        .O(Ready1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    Ready1_carry_i_6
       (.I0(in8[2]),
        .I1(in8[3]),
        .O(Ready1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Ready1_carry_i_7
       (.I0(in8[1]),
        .I1(BitCounter[0]),
        .O(Ready1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hEEFFFFFFEEAEAEAE)) 
    Ready_i_1
       (.I0(ClockEnable),
        .I1(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .I2(Ready1_carry__2_n_0),
        .I3(\FSM_onehot_CurrentState_reg_n_0_[1] ),
        .I4(Ready_reg_0),
        .I5(Ready),
        .O(Ready_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Ready_reg
       (.C(SCLK_Int),
        .CE(1'b1),
        .CLR(AR),
        .D(Ready_i_1_n_0),
        .Q(Ready));
  LUT4 #(
    .INIT(16'hBF40)) 
    SCLK_Int_i_1
       (.I0(Counter1_carry__2_n_0),
        .I1(LED_OBUF[0]),
        .I2(LED_OBUF[1]),
        .I3(SCLK_Int_reg_0),
        .O(SCLK_Int_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    SCLK_Int_reg
       (.C(MCLK),
        .CE(1'b1),
        .D(SCLK_Int_i_1_n_0),
        .Q(SCLK_Int_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    SCLK_OBUF_inst_i_1
       (.I0(SCLK_Int_reg_0),
        .I1(ClockEnable_reg_n_0),
        .O(SCLK_OBUF));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    SD_reg
       (.C(SCLK_Int),
        .CE(\FSM_onehot_CurrentState_reg_n_0_[2] ),
        .CLR(AR),
        .D(p_1_in),
        .Q(SD_OBUF));
  LUT4 #(
    .INIT(16'hFB20)) 
    Valid_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Ready),
        .I3(Ready_reg_0),
        .O(\FSM_sequential_CurrentState_reg[0] ));
endmodule

(* HW_HANDOFF = "SineROM.hwdef" *) 
module SineROM
   (Address,
    Clock,
    DataOut,
    pwropt);
  input [6:0]Address;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLOCK, CLK_DOMAIN SineROM_clka_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input Clock;
  output [15:0]DataOut;
  input pwropt;

  wire [6:0]Address;
  wire Clock;
  wire [15:0]DataOut;
  wire pwropt;

  (* IMPORTED_FROM = "c:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/I2S.srcs/sources_1/bd/SineROM/ip/SineROM_blk_mem_gen_0_0/SineROM_blk_mem_gen_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
  SineROM_blk_mem_gen_0_0 SineROM
       (.addra(Address),
        .clka(Clock),
        .douta(DataOut),
        .pwropt(pwropt));
endmodule

(* CHECK_LICENSE_TYPE = "SineROM_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
module SineROM_blk_mem_gen_0_0
   (clka,
    addra,
    douta,
    pwropt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  input pwropt;

  wire [6:0]addra;
  wire clka;
  wire [15:0]douta;
  wire pwropt;
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
  wire [6:0]NLW_U0_addrb_UNCONNECTED;
  wire [15:0]NLW_U0_dina_UNCONNECTED;
  wire [15:0]NLW_U0_dinb_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
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
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_wea_UNCONNECTED;
  wire [0:0]NLW_U0_web_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
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
  (* C_INIT_FILE_NAME = "SineROM_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "100" *) 
  (* C_READ_DEPTH_B = "100" *) 
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
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "100" *) 
  (* C_WRITE_DEPTH_B = "100" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(NLW_U0_addrb_UNCONNECTED[6:0]),
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
        .pwropt(pwropt),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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

(* HW_HANDOFF = "SystemClock.hwdef" *) 
module SystemClock
   (ClockIn,
    Locked,
    MCLK,
    ResetN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLOCKIN, CLK_DOMAIN SystemClock_ClockIn, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input ClockIn;
  output Locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MCLK, CLK_DOMAIN /ClockingWizard_clk_out1, FREQ_HZ 12288013, INSERT_VIP 0, PHASE 0.0" *) output MCLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ResetN;

  wire ClockIn;
  wire Locked;
  wire MCLK;
  wire ResetN;

  (* IMPORTED_FROM = "c:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/I2S.srcs/sources_1/bd/SystemClock/ip/SystemClock_clk_wiz_0_0/SystemClock_clk_wiz_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  SystemClock_clk_wiz_0_0 ClockingWizard
       (.MCLK(MCLK),
        .clk_in1(ClockIn),
        .locked(Locked),
        .resetn(ResetN));
endmodule

module SystemClock_clk_wiz_0_0
   (MCLK,
    resetn,
    locked,
    clk_in1);
  output MCLK;
  input resetn;
  output locked;
  input clk_in1;

  wire MCLK;
  (* IBUF_LOW_PWR *) wire clk_in1;
  wire locked;
  wire resetn;

  SystemClock_clk_wiz_0_0__SystemClock_clk_wiz_0_0_clk_wiz inst
       (.MCLK(MCLK),
        .clk_in1(clk_in1),
        .locked(locked),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "SystemClock_clk_wiz_0_0_clk_wiz" *) 
module SystemClock_clk_wiz_0_0__SystemClock_clk_wiz_0_0_clk_wiz
   (MCLK,
    resetn,
    locked,
    clk_in1);
  output MCLK;
  input resetn;
  output locked;
  input clk_in1;

  wire MCLK;
  wire MCLK_SystemClock_clk_wiz_0_0;
  wire clk_in1;
  wire clkfbout_SystemClock_clk_wiz_0_0;
  wire clkfbout_buf_SystemClock_clk_wiz_0_0;
  wire locked;
  wire resetn;
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
       (.I(clkfbout_SystemClock_clk_wiz_0_0),
        .O(clkfbout_buf_SystemClock_clk_wiz_0_0));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(MCLK_SystemClock_clk_wiz_0_0),
        .O(MCLK));
  (* OPT_MODIFIED = "MLO RETARGET" *) 
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
    .COMPENSATION("BUF_IN"),
    .DIVCLK_DIVIDE(7),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b1),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_SystemClock_clk_wiz_0_0),
        .CLKFBOUT(clkfbout_SystemClock_clk_wiz_0_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(MCLK_SystemClock_clk_wiz_0_0),
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
        .RST(resetn));
endmodule

(* ECO_CHECKSUM = "85503913" *) (* MULT = "8" *) (* POWER_OPT_BRAM_CDC = "0" *) 
(* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) (* WIDTH = "16" *) 
(* NotValidForBitStream *)
module Top
   (Clock,
    ResetN,
    MCLK,
    LRCLK,
    SCLK,
    SD,
    LED);
  input Clock;
  input ResetN;
  output MCLK;
  output LRCLK;
  output SCLK;
  output SD;
  output [3:0]LED;

  wire Clock;
  wire Clock_IBUF;
  wire Clock_IBUF_BUFG;
  wire I2S_Module_n_2;
  wire [3:0]LED;
  wire [1:0]LED_OBUF;
  wire LRCLK;
  wire LRCLK_OBUF;
  wire MCLK;
  wire MCLK_OBUF;
  wire ResetN;
  wire SCLK;
  wire SCLK_OBUF;
  wire SD;
  wire SD_OBUF;
  wire \Transmitter/SCLK_Int ;

initial begin
 $sdf_annotate("I2S_TB_time_impl.sdf",,,,"tool_control");
end
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  (* SPLIT_LOADS_ON_BUFG *) 
  BUFG Clock_IBUF_BUFG_inst
       (.I(Clock_IBUF),
        .O(Clock_IBUF_BUFG));
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO BUFG_OPT" *) 
  IBUF Clock_IBUF_inst
       (.I(Clock),
        .O(Clock_IBUF));
  BUFG \FSM_onehot_CurrentState_reg[2]_i_2 
       (.I(I2S_Module_n_2),
        .O(\Transmitter/SCLK_Int ));
  I2S I2S_Module
       (.Clock(Clock_IBUF_BUFG),
        .LED_OBUF(LED_OBUF),
        .LRCLK_OBUF(LRCLK_OBUF),
        .MCLK(MCLK_OBUF),
        .SCLK_Int(\Transmitter/SCLK_Int ),
        .SCLK_Int_reg(I2S_Module_n_2),
        .SCLK_OBUF(SCLK_OBUF),
        .SD_OBUF(SD_OBUF));
  (* hw_handoff = "SystemClock.hwdef" *) 
  SystemClock InputClock
       (.ClockIn(Clock_IBUF_BUFG),
        .Locked(LED_OBUF[1]),
        .MCLK(MCLK_OBUF),
        .ResetN(LED_OBUF[0]));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUFT \LED_OBUF[2]_inst 
       (.I(1'b0),
        .O(LED[2]),
        .T(1'b1));
  OBUFT \LED_OBUF[3]_inst 
       (.I(1'b0),
        .O(LED[3]),
        .T(1'b1));
  OBUF LRCLK_OBUF_inst
       (.I(LRCLK_OBUF),
        .O(LRCLK));
  OBUF MCLK_OBUF_inst
       (.I(MCLK_OBUF),
        .O(MCLK));
  IBUF ResetN_IBUF_inst
       (.I(ResetN),
        .O(LED_OBUF[0]));
  OBUF SCLK_OBUF_inst
       (.I(SCLK_OBUF),
        .O(SCLK));
  OBUF SD_OBUF_inst
       (.I(SD_OBUF),
        .O(SD));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module SineROM_blk_mem_gen_0_0__blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    pwropt);
  output [15:0]douta;
  input clka;
  input [6:0]addra;
  input pwropt;

  wire [6:0]addra;
  wire clka;
  wire [15:0]douta;
  wire pwropt;

  SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .pwropt(pwropt));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_width
   (douta,
    clka,
    addra,
    pwropt);
  output [15:0]douta;
  input clka;
  input [6:0]addra;
  input pwropt;

  wire [6:0]addra;
  wire clka;
  wire [15:0]douta;
  wire pwropt;

  SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .pwropt(pwropt));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra,
    pwropt);
  output [15:0]douta;
  input clka;
  input [6:0]addra;
  input pwropt;

  wire \I2S_Module/ROM/SineROM/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_cooolgate_en_sig_1 ;
  wire [6:0]addra;
  wire clka;
  wire [15:0]douta;
  wire pwropt;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  (* POWER_OPTED_CE = "ENBWREN=NEW:ENARDEN=NEW" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0306070F020F010E0207080D010F0D0401070F0B0100000A0008000900000000),
    .INIT_01(256'h0607080D0602090F050D040E0507090E05010906040B030B04040905030D0A09),
    .INIT_02(256'h070E0F0C070D0B0A070B0F0907090B0B0707000107030D0007000209060C0102),
    .INIT_03(256'h0707000107090B0B070B0F09070D0B0A070E0F0C070F0B0E070F0F0F070F0B0E),
    .INIT_04(256'h050109060507090E050D040E0602090F0607080D060C01020700020907030D00),
    .INIT_05(256'h01070F0B010F0D040207080D020F010E0306070F030D0A0904040905040B030B),
    .INIT_06(256'h0D0807030E00020C0E0800050E0F0F060F070F0700000000000800090100000A),
    .INIT_07(256'h0A020B020A0806020A0E060A0B040C050B0B060B0C0205070C0908010D000E02),
    .INIT_08(256'h080400070806040508080F0F080C0300080F0D0709030E0E09080703090D0601),
    .INIT_09(256'h0804000708020406080100040800040208000001080004020801000408020406),
    .INIT_0A(256'h0A020B02090D06010908070309030E0E080F0D07080C030008080F0F08060405),
    .INIT_0B(256'h0D0807030D000E020C0908010C0205070B0B060B0B040C050A0E060A0A080602),
    .INIT_0C(256'h000000000000000000000000000000000F070F070E0F0F060E0800050E00020C),
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
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO_UNCONNECTED [15:12],douta[7:4],\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO_UNCONNECTED [7:4],douta[3:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED [15:12],douta[15:12],\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED [7:4],douta[11:8]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\I2S_Module/ROM/SineROM/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_cooolgate_en_sig_1 ),
        .ENBWREN(\I2S_Module/ROM/SineROM/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_cooolgate_en_sig_1 ),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  FDCE #(
    .INIT(1'b1)) 
    \I2S_Module/ROM/SineROM/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_cooolgate_en_gate_1_cooolDelFlop 
       (.C(clka),
        .CE(1'b1),
        .CLR(1'b0),
        .D(pwropt),
        .Q(\I2S_Module/ROM/SineROM/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_cooolgate_en_sig_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module SineROM_blk_mem_gen_0_0__blk_mem_gen_top
   (douta,
    clka,
    addra,
    pwropt);
  output [15:0]douta;
  input clka;
  input [6:0]addra;
  input pwropt;

  wire [6:0]addra;
  wire clka;
  wire [15:0]douta;
  wire pwropt;

  SineROM_blk_mem_gen_0_0__blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .pwropt(pwropt));
endmodule

(* C_ADDRA_WIDTH = "7" *) (* C_ADDRB_WIDTH = "7" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "NONE" *) 
(* C_INIT_FILE_NAME = "SineROM_blk_mem_gen_0_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "100" *) (* C_READ_DEPTH_B = "100" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "100" *) 
(* C_WRITE_DEPTH_B = "100" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4
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
    s_axi_rdaddrecc,
    pwropt);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [6:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [6:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [6:0]rdaddrecc;
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
  output [6:0]s_axi_rdaddrecc;
  input pwropt;

  wire [6:0]addra;
  wire clka;
  wire [15:0]douta;
  wire pwropt;

  SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .pwropt(pwropt));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4_synth
   (douta,
    clka,
    addra,
    pwropt);
  output [15:0]douta;
  input clka;
  input [6:0]addra;
  input pwropt;

  wire [6:0]addra;
  wire clka;
  wire [15:0]douta;
  wire pwropt;

  SineROM_blk_mem_gen_0_0__blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .pwropt(pwropt));
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
