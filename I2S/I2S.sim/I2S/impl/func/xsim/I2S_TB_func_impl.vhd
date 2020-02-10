-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Feb 10 13:00:05 2020
-- Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/I2S.sim/I2S/impl/func/xsim/I2S_TB_func_impl.vhd
-- Design      : Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Transmitter is
  port (
    LRCLK_OBUF : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    SD_OBUF : out STD_LOGIC;
    SCLK_Int_reg_0 : out STD_LOGIC;
    Ready : out STD_LOGIC;
    \FSM_sequential_CurrentState_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SCLK_OBUF : out STD_LOGIC;
    ROM_Address : out STD_LOGIC;
    SCLK_Int : in STD_LOGIC;
    MCLK : in STD_LOGIC;
    Ready_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    LED_OBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Data_Int_reg[31]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end I2S_Transmitter;

architecture STRUCTURE of I2S_Transmitter is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal BitCounter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BitCounter0 : STD_LOGIC;
  signal \BitCounter0_carry__0_n_0\ : STD_LOGIC;
  signal \BitCounter0_carry__1_n_0\ : STD_LOGIC;
  signal \BitCounter0_carry__2_n_0\ : STD_LOGIC;
  signal \BitCounter0_carry__3_n_0\ : STD_LOGIC;
  signal \BitCounter0_carry__4_n_0\ : STD_LOGIC;
  signal \BitCounter0_carry__5_n_0\ : STD_LOGIC;
  signal BitCounter0_carry_n_0 : STD_LOGIC;
  signal \BitCounter[31]_i_1_n_0\ : STD_LOGIC;
  signal ClockEnable : STD_LOGIC;
  signal ClockEnable_i_1_n_0 : STD_LOGIC;
  signal ClockEnable_reg_n_0 : STD_LOGIC;
  signal \Counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Counter1_carry__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Counter1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Counter1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Counter1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Counter1_carry__1_n_0\ : STD_LOGIC;
  signal \Counter1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Counter1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Counter1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Counter1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Counter1_carry__2_n_0\ : STD_LOGIC;
  signal Counter1_carry_i_1_n_0 : STD_LOGIC;
  signal \Counter1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal Counter1_carry_i_3_n_0 : STD_LOGIC;
  signal Counter1_carry_i_4_n_0 : STD_LOGIC;
  signal Counter1_carry_i_5_n_0 : STD_LOGIC;
  signal Counter1_carry_n_0 : STD_LOGIC;
  signal \Counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[28]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[28]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[28]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_5_n_0\ : STD_LOGIC;
  signal Counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \Counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Data_Int[10]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[11]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[12]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[13]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[14]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[15]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[16]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[17]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[18]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[19]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[20]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[21]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[22]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[23]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[24]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[25]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[26]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[27]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[28]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[29]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[2]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[30]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[31]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[3]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[4]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[5]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[6]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[7]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[8]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Int[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState_reg_n_0_[2]\ : STD_LOGIC;
  signal LRCLK1 : STD_LOGIC;
  signal LRCLK_i_10_n_0 : STD_LOGIC;
  signal LRCLK_i_11_n_0 : STD_LOGIC;
  signal LRCLK_i_13_n_0 : STD_LOGIC;
  signal LRCLK_i_14_n_0 : STD_LOGIC;
  signal LRCLK_i_15_n_0 : STD_LOGIC;
  signal LRCLK_i_16_n_0 : STD_LOGIC;
  signal LRCLK_i_17_n_0 : STD_LOGIC;
  signal LRCLK_i_18_n_0 : STD_LOGIC;
  signal LRCLK_i_19_n_0 : STD_LOGIC;
  signal LRCLK_i_1_n_0 : STD_LOGIC;
  signal LRCLK_i_20_n_0 : STD_LOGIC;
  signal LRCLK_i_21_n_0 : STD_LOGIC;
  signal LRCLK_i_2_n_0 : STD_LOGIC;
  signal LRCLK_i_5_n_0 : STD_LOGIC;
  signal LRCLK_i_6_n_0 : STD_LOGIC;
  signal LRCLK_i_8_n_0 : STD_LOGIC;
  signal LRCLK_i_9_n_0 : STD_LOGIC;
  signal LRCLK_reg_i_12_n_0 : STD_LOGIC;
  signal LRCLK_reg_i_4_n_0 : STD_LOGIC;
  signal LRCLK_reg_i_7_n_0 : STD_LOGIC;
  signal \^ready\ : STD_LOGIC;
  signal \Ready1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Ready1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Ready1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Ready1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Ready1_carry__0_n_0\ : STD_LOGIC;
  signal \Ready1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Ready1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Ready1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Ready1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Ready1_carry__1_n_0\ : STD_LOGIC;
  signal \Ready1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Ready1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Ready1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Ready1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Ready1_carry__2_n_0\ : STD_LOGIC;
  signal Ready1_carry_i_1_n_0 : STD_LOGIC;
  signal Ready1_carry_i_2_n_0 : STD_LOGIC;
  signal Ready1_carry_i_3_n_0 : STD_LOGIC;
  signal Ready1_carry_i_4_n_0 : STD_LOGIC;
  signal Ready1_carry_i_5_n_0 : STD_LOGIC;
  signal Ready1_carry_i_6_n_0 : STD_LOGIC;
  signal Ready1_carry_i_7_n_0 : STD_LOGIC;
  signal Ready1_carry_n_0 : STD_LOGIC;
  signal Ready_i_1_n_0 : STD_LOGIC;
  signal SCLK_Int_i_1_n_0 : STD_LOGIC;
  signal \^sclk_int_reg_0\ : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal in8 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \in8__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC;
  signal NLW_BitCounter0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BitCounter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_Counter1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_LRCLK_reg_i_12_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_LRCLK_reg_i_12_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_LRCLK_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_reg_i_7_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_LRCLK_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Ready1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Ready1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Ready1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Ready1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Ready1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Ready1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Ready1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Ready1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of BitCounter0_carry : label is "SWEEP";
  attribute OPT_MODIFIED of \BitCounter0_carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \BitCounter0_carry__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \BitCounter0_carry__2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \BitCounter0_carry__3\ : label is "SWEEP";
  attribute OPT_MODIFIED of \BitCounter0_carry__4\ : label is "SWEEP";
  attribute OPT_MODIFIED of \BitCounter0_carry__5\ : label is "SWEEP";
  attribute OPT_MODIFIED of \BitCounter0_carry__6\ : label is "SWEEP";
  attribute OPT_MODIFIED of Counter1_carry : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter1_carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter1_carry__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter1_carry__2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[0]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[12]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[16]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[20]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[24]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[28]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[4]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[8]_i_1\ : label is "SWEEP";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_Int[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Data_Int[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Data_Int[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Data_Int[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Data_Int[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Data_Int[15]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Data_Int[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Data_Int[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Data_Int[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Data_Int[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Data_Int[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Data_Int[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Data_Int[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Data_Int[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_CurrentState_reg[0]\ : label is "reset:001,idle:010,transmit:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CurrentState_reg[1]\ : label is "reset:001,idle:010,transmit:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CurrentState_reg[2]\ : label is "reset:001,idle:010,transmit:100";
  attribute OPT_MODIFIED of LRCLK_reg_i_12 : label is "SWEEP";
  attribute OPT_MODIFIED of LRCLK_reg_i_3 : label is "SWEEP";
  attribute OPT_MODIFIED of LRCLK_reg_i_4 : label is "SWEEP";
  attribute OPT_MODIFIED of LRCLK_reg_i_7 : label is "SWEEP";
  attribute OPT_MODIFIED of Ready1_carry : label is "SWEEP";
  attribute OPT_MODIFIED of \Ready1_carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Ready1_carry__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Ready1_carry__2\ : label is "SWEEP";
begin
  AR(0) <= \^ar\(0);
  Ready <= \^ready\;
  SCLK_Int_reg_0 <= \^sclk_int_reg_0\;
BitCounter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => BitCounter0_carry_n_0,
      CO(2 downto 0) => NLW_BitCounter0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => BitCounter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(4 downto 1),
      S(3 downto 0) => BitCounter(4 downto 1)
    );
\BitCounter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => BitCounter0_carry_n_0,
      CO(3) => \BitCounter0_carry__0_n_0\,
      CO(2 downto 0) => \NLW_BitCounter0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(8 downto 5),
      S(3 downto 0) => BitCounter(8 downto 5)
    );
\BitCounter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter0_carry__0_n_0\,
      CO(3) => \BitCounter0_carry__1_n_0\,
      CO(2 downto 0) => \NLW_BitCounter0_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(12 downto 9),
      S(3 downto 0) => BitCounter(12 downto 9)
    );
\BitCounter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter0_carry__1_n_0\,
      CO(3) => \BitCounter0_carry__2_n_0\,
      CO(2 downto 0) => \NLW_BitCounter0_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(16 downto 13),
      S(3 downto 0) => BitCounter(16 downto 13)
    );
\BitCounter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter0_carry__2_n_0\,
      CO(3) => \BitCounter0_carry__3_n_0\,
      CO(2 downto 0) => \NLW_BitCounter0_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(20 downto 17),
      S(3 downto 0) => BitCounter(20 downto 17)
    );
\BitCounter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter0_carry__3_n_0\,
      CO(3) => \BitCounter0_carry__4_n_0\,
      CO(2 downto 0) => \NLW_BitCounter0_carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(24 downto 21),
      S(3 downto 0) => BitCounter(24 downto 21)
    );
\BitCounter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter0_carry__4_n_0\,
      CO(3) => \BitCounter0_carry__5_n_0\,
      CO(2 downto 0) => \NLW_BitCounter0_carry__5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(28 downto 25),
      S(3 downto 0) => BitCounter(28 downto 25)
    );
\BitCounter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter0_carry__5_n_0\,
      CO(3 downto 0) => \NLW_BitCounter0_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_BitCounter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in8(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => BitCounter(31 downto 29)
    );
\BitCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(0),
      O => \in8__0\(0)
    );
\BitCounter[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA000000"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I2 => Ready_reg_0,
      I3 => LED_OBUF(0),
      I4 => LED_OBUF(1),
      I5 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \BitCounter[31]_i_1_n_0\
    );
\BitCounter[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888808080"
    )
        port map (
      I0 => LED_OBUF(1),
      I1 => LED_OBUF(0),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I3 => Ready_reg_0,
      I4 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I5 => ClockEnable,
      O => BitCounter0
    );
\BitCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => \in8__0\(0),
      Q => BitCounter(0),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(10),
      Q => BitCounter(10),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(11),
      Q => BitCounter(11),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(12),
      Q => BitCounter(12),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(13),
      Q => BitCounter(13),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(14),
      Q => BitCounter(14),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(15),
      Q => BitCounter(15),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(16),
      Q => BitCounter(16),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(17),
      Q => BitCounter(17),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(18),
      Q => BitCounter(18),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(19),
      Q => BitCounter(19),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(1),
      Q => BitCounter(1),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(20),
      Q => BitCounter(20),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(21),
      Q => BitCounter(21),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(22),
      Q => BitCounter(22),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(23),
      Q => BitCounter(23),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(24),
      Q => BitCounter(24),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(25),
      Q => BitCounter(25),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(26),
      Q => BitCounter(26),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(27),
      Q => BitCounter(27),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(28),
      Q => BitCounter(28),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(29),
      Q => BitCounter(29),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(2),
      Q => BitCounter(2),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(30),
      Q => BitCounter(30),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(31),
      Q => BitCounter(31),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(3),
      Q => BitCounter(3),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(4),
      Q => BitCounter(4),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(5),
      Q => BitCounter(5),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(6),
      Q => BitCounter(6),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(7),
      Q => BitCounter(7),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(8),
      Q => BitCounter(8),
      R => \BitCounter[31]_i_1_n_0\
    );
\BitCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => BitCounter0,
      D => in8(9),
      Q => BitCounter(9),
      R => \BitCounter[31]_i_1_n_0\
    );
ClockEnable_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ClockEnable,
      I1 => ClockEnable_reg_n_0,
      O => ClockEnable_i_1_n_0
    );
ClockEnable_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => '1',
      CLR => \^ar\(0),
      D => ClockEnable_i_1_n_0,
      Q => ClockEnable_reg_n_0
    );
Counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Counter1_carry_n_0,
      CO(2 downto 0) => NLW_Counter1_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => Counter1_carry_i_1_n_0,
      O(3 downto 0) => NLW_Counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \Counter1_carry_i_2__0_n_0\,
      S(2) => Counter1_carry_i_3_n_0,
      S(1) => Counter1_carry_i_4_n_0,
      S(0) => Counter1_carry_i_5_n_0
    );
\Counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Counter1_carry_n_0,
      CO(3) => \Counter1_carry__0_n_0\,
      CO(2 downto 0) => \NLW_Counter1_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \Counter1_carry__0_i_1_n_0\,
      S(2) => \Counter1_carry__0_i_2_n_0\,
      S(1) => \Counter1_carry__0_i_3_n_0\,
      S(0) => \Counter1_carry__0_i_4_n_0\
    );
\Counter1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(14),
      I1 => Counter_reg(15),
      O => \Counter1_carry__0_i_1_n_0\
    );
\Counter1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(12),
      I1 => Counter_reg(13),
      O => \Counter1_carry__0_i_2_n_0\
    );
\Counter1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(10),
      I1 => Counter_reg(11),
      O => \Counter1_carry__0_i_3_n_0\
    );
\Counter1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(8),
      I1 => Counter_reg(9),
      O => \Counter1_carry__0_i_4_n_0\
    );
\Counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter1_carry__0_n_0\,
      CO(3) => \Counter1_carry__1_n_0\,
      CO(2 downto 0) => \NLW_Counter1_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Counter1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \Counter1_carry__1_i_1_n_0\,
      S(2) => \Counter1_carry__1_i_2_n_0\,
      S(1) => \Counter1_carry__1_i_3_n_0\,
      S(0) => \Counter1_carry__1_i_4_n_0\
    );
\Counter1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(22),
      I1 => Counter_reg(23),
      O => \Counter1_carry__1_i_1_n_0\
    );
\Counter1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(20),
      I1 => Counter_reg(21),
      O => \Counter1_carry__1_i_2_n_0\
    );
\Counter1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(18),
      I1 => Counter_reg(19),
      O => \Counter1_carry__1_i_3_n_0\
    );
\Counter1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(16),
      I1 => Counter_reg(17),
      O => \Counter1_carry__1_i_4_n_0\
    );
\Counter1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter1_carry__1_n_0\,
      CO(3) => \Counter1_carry__2_n_0\,
      CO(2 downto 0) => \NLW_Counter1_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => Counter_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_Counter1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \Counter1_carry__2_i_1_n_0\,
      S(2) => \Counter1_carry__2_i_2_n_0\,
      S(1) => \Counter1_carry__2_i_3_n_0\,
      S(0) => \Counter1_carry__2_i_4_n_0\
    );
\Counter1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(30),
      I1 => Counter_reg(31),
      O => \Counter1_carry__2_i_1_n_0\
    );
\Counter1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(28),
      I1 => Counter_reg(29),
      O => \Counter1_carry__2_i_2_n_0\
    );
\Counter1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(26),
      I1 => Counter_reg(27),
      O => \Counter1_carry__2_i_3_n_0\
    );
\Counter1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(24),
      I1 => Counter_reg(25),
      O => \Counter1_carry__2_i_4_n_0\
    );
Counter1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Counter_reg(0),
      I1 => Counter_reg(1),
      O => Counter1_carry_i_1_n_0
    );
\Counter1_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(6),
      I1 => Counter_reg(7),
      O => \Counter1_carry_i_2__0_n_0\
    );
Counter1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(4),
      I1 => Counter_reg(5),
      O => Counter1_carry_i_3_n_0
    );
Counter1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(2),
      I1 => Counter_reg(3),
      O => Counter1_carry_i_4_n_0
    );
Counter1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter_reg(0),
      I1 => Counter_reg(1),
      O => Counter1_carry_i_5_n_0
    );
\Counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^ready\,
      O => ROM_Address
    );
\Counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(3),
      O => \Counter[0]_i_2_n_0\
    );
\Counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(2),
      O => \Counter[0]_i_3_n_0\
    );
\Counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(1),
      O => \Counter[0]_i_4_n_0\
    );
\Counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => Counter_reg(0),
      I1 => \Counter1_carry__2_n_0\,
      O => \Counter[0]_i_5_n_0\
    );
\Counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(15),
      O => \Counter[12]_i_2_n_0\
    );
\Counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(14),
      O => \Counter[12]_i_3_n_0\
    );
\Counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(13),
      O => \Counter[12]_i_4_n_0\
    );
\Counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(12),
      O => \Counter[12]_i_5_n_0\
    );
\Counter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(19),
      O => \Counter[16]_i_2_n_0\
    );
\Counter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(18),
      O => \Counter[16]_i_3_n_0\
    );
\Counter[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(17),
      O => \Counter[16]_i_4_n_0\
    );
\Counter[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(16),
      O => \Counter[16]_i_5_n_0\
    );
\Counter[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(23),
      O => \Counter[20]_i_2_n_0\
    );
\Counter[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(22),
      O => \Counter[20]_i_3_n_0\
    );
\Counter[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(21),
      O => \Counter[20]_i_4_n_0\
    );
\Counter[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(20),
      O => \Counter[20]_i_5_n_0\
    );
\Counter[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(27),
      O => \Counter[24]_i_2_n_0\
    );
\Counter[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(26),
      O => \Counter[24]_i_3_n_0\
    );
\Counter[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(25),
      O => \Counter[24]_i_4_n_0\
    );
\Counter[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(24),
      O => \Counter[24]_i_5_n_0\
    );
\Counter[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(31),
      O => \Counter[28]_i_2_n_0\
    );
\Counter[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(30),
      O => \Counter[28]_i_3_n_0\
    );
\Counter[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(29),
      O => \Counter[28]_i_4_n_0\
    );
\Counter[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(28),
      O => \Counter[28]_i_5_n_0\
    );
\Counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(7),
      O => \Counter[4]_i_2_n_0\
    );
\Counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(6),
      O => \Counter[4]_i_3_n_0\
    );
\Counter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(5),
      O => \Counter[4]_i_4_n_0\
    );
\Counter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(4),
      O => \Counter[4]_i_5_n_0\
    );
\Counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(11),
      O => \Counter[8]_i_2_n_0\
    );
\Counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(10),
      O => \Counter[8]_i_3_n_0\
    );
\Counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(9),
      O => \Counter[8]_i_4_n_0\
    );
\Counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => Counter_reg(8),
      O => \Counter[8]_i_5_n_0\
    );
\Counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[0]_i_1_n_7\,
      Q => Counter_reg(0)
    );
\Counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Counter_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \Counter1_carry__2_n_0\,
      O(3) => \Counter_reg[0]_i_1_n_4\,
      O(2) => \Counter_reg[0]_i_1_n_5\,
      O(1) => \Counter_reg[0]_i_1_n_6\,
      O(0) => \Counter_reg[0]_i_1_n_7\,
      S(3) => \Counter[0]_i_2_n_0\,
      S(2) => \Counter[0]_i_3_n_0\,
      S(1) => \Counter[0]_i_4_n_0\,
      S(0) => \Counter[0]_i_5_n_0\
    );
\Counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[8]_i_1_n_5\,
      Q => Counter_reg(10)
    );
\Counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[8]_i_1_n_4\,
      Q => Counter_reg(11)
    );
\Counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[12]_i_1_n_7\,
      Q => Counter_reg(12)
    );
\Counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[8]_i_1_n_0\,
      CO(3) => \Counter_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[12]_i_1_n_4\,
      O(2) => \Counter_reg[12]_i_1_n_5\,
      O(1) => \Counter_reg[12]_i_1_n_6\,
      O(0) => \Counter_reg[12]_i_1_n_7\,
      S(3) => \Counter[12]_i_2_n_0\,
      S(2) => \Counter[12]_i_3_n_0\,
      S(1) => \Counter[12]_i_4_n_0\,
      S(0) => \Counter[12]_i_5_n_0\
    );
\Counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[12]_i_1_n_6\,
      Q => Counter_reg(13)
    );
\Counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[12]_i_1_n_5\,
      Q => Counter_reg(14)
    );
\Counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[12]_i_1_n_4\,
      Q => Counter_reg(15)
    );
\Counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[16]_i_1_n_7\,
      Q => Counter_reg(16)
    );
\Counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[12]_i_1_n_0\,
      CO(3) => \Counter_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[16]_i_1_n_4\,
      O(2) => \Counter_reg[16]_i_1_n_5\,
      O(1) => \Counter_reg[16]_i_1_n_6\,
      O(0) => \Counter_reg[16]_i_1_n_7\,
      S(3) => \Counter[16]_i_2_n_0\,
      S(2) => \Counter[16]_i_3_n_0\,
      S(1) => \Counter[16]_i_4_n_0\,
      S(0) => \Counter[16]_i_5_n_0\
    );
\Counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[16]_i_1_n_6\,
      Q => Counter_reg(17)
    );
\Counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[16]_i_1_n_5\,
      Q => Counter_reg(18)
    );
\Counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[16]_i_1_n_4\,
      Q => Counter_reg(19)
    );
\Counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[0]_i_1_n_6\,
      Q => Counter_reg(1)
    );
\Counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[20]_i_1_n_7\,
      Q => Counter_reg(20)
    );
\Counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[16]_i_1_n_0\,
      CO(3) => \Counter_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[20]_i_1_n_4\,
      O(2) => \Counter_reg[20]_i_1_n_5\,
      O(1) => \Counter_reg[20]_i_1_n_6\,
      O(0) => \Counter_reg[20]_i_1_n_7\,
      S(3) => \Counter[20]_i_2_n_0\,
      S(2) => \Counter[20]_i_3_n_0\,
      S(1) => \Counter[20]_i_4_n_0\,
      S(0) => \Counter[20]_i_5_n_0\
    );
\Counter_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[20]_i_1_n_6\,
      Q => Counter_reg(21)
    );
\Counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[20]_i_1_n_5\,
      Q => Counter_reg(22)
    );
\Counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[20]_i_1_n_4\,
      Q => Counter_reg(23)
    );
\Counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[24]_i_1_n_7\,
      Q => Counter_reg(24)
    );
\Counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[20]_i_1_n_0\,
      CO(3) => \Counter_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[24]_i_1_n_4\,
      O(2) => \Counter_reg[24]_i_1_n_5\,
      O(1) => \Counter_reg[24]_i_1_n_6\,
      O(0) => \Counter_reg[24]_i_1_n_7\,
      S(3) => \Counter[24]_i_2_n_0\,
      S(2) => \Counter[24]_i_3_n_0\,
      S(1) => \Counter[24]_i_4_n_0\,
      S(0) => \Counter[24]_i_5_n_0\
    );
\Counter_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[24]_i_1_n_6\,
      Q => Counter_reg(25)
    );
\Counter_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[24]_i_1_n_5\,
      Q => Counter_reg(26)
    );
\Counter_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[24]_i_1_n_4\,
      Q => Counter_reg(27)
    );
\Counter_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[28]_i_1_n_7\,
      Q => Counter_reg(28)
    );
\Counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_Counter_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[28]_i_1_n_4\,
      O(2) => \Counter_reg[28]_i_1_n_5\,
      O(1) => \Counter_reg[28]_i_1_n_6\,
      O(0) => \Counter_reg[28]_i_1_n_7\,
      S(3) => \Counter[28]_i_2_n_0\,
      S(2) => \Counter[28]_i_3_n_0\,
      S(1) => \Counter[28]_i_4_n_0\,
      S(0) => \Counter[28]_i_5_n_0\
    );
\Counter_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[28]_i_1_n_6\,
      Q => Counter_reg(29)
    );
\Counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[0]_i_1_n_5\,
      Q => Counter_reg(2)
    );
\Counter_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[28]_i_1_n_5\,
      Q => Counter_reg(30)
    );
\Counter_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[28]_i_1_n_4\,
      Q => Counter_reg(31)
    );
\Counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[0]_i_1_n_4\,
      Q => Counter_reg(3)
    );
\Counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[4]_i_1_n_7\,
      Q => Counter_reg(4)
    );
\Counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[0]_i_1_n_0\,
      CO(3) => \Counter_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[4]_i_1_n_4\,
      O(2) => \Counter_reg[4]_i_1_n_5\,
      O(1) => \Counter_reg[4]_i_1_n_6\,
      O(0) => \Counter_reg[4]_i_1_n_7\,
      S(3) => \Counter[4]_i_2_n_0\,
      S(2) => \Counter[4]_i_3_n_0\,
      S(1) => \Counter[4]_i_4_n_0\,
      S(0) => \Counter[4]_i_5_n_0\
    );
\Counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[4]_i_1_n_6\,
      Q => Counter_reg(5)
    );
\Counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[4]_i_1_n_5\,
      Q => Counter_reg(6)
    );
\Counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[4]_i_1_n_4\,
      Q => Counter_reg(7)
    );
\Counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[8]_i_1_n_7\,
      Q => Counter_reg(8)
    );
\Counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[4]_i_1_n_0\,
      CO(3) => \Counter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[8]_i_1_n_4\,
      O(2) => \Counter_reg[8]_i_1_n_5\,
      O(1) => \Counter_reg[8]_i_1_n_6\,
      O(0) => \Counter_reg[8]_i_1_n_7\,
      S(3) => \Counter[8]_i_2_n_0\,
      S(2) => \Counter[8]_i_3_n_0\,
      S(1) => \Counter[8]_i_4_n_0\,
      S(0) => \Counter[8]_i_5_n_0\
    );
\Counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \Counter_reg[8]_i_1_n_6\,
      Q => Counter_reg(9)
    );
\Data_Int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(10),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[10]_i_1_n_0\
    );
\Data_Int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(11),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[11]_i_1_n_0\
    );
\Data_Int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(12),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[12]_i_1_n_0\
    );
\Data_Int[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(13),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[13]_i_1_n_0\
    );
\Data_Int[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(14),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[14]_i_1_n_0\
    );
\Data_Int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(15),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[15]_i_1_n_0\
    );
\Data_Int[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(16),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(0),
      O => \Data_Int[16]_i_1_n_0\
    );
\Data_Int[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(17),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(1),
      O => \Data_Int[17]_i_1_n_0\
    );
\Data_Int[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(18),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(2),
      O => \Data_Int[18]_i_1_n_0\
    );
\Data_Int[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(19),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(3),
      O => \Data_Int[19]_i_1_n_0\
    );
\Data_Int[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(20),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(4),
      O => \Data_Int[20]_i_1_n_0\
    );
\Data_Int[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(21),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(5),
      O => \Data_Int[21]_i_1_n_0\
    );
\Data_Int[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(22),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(6),
      O => \Data_Int[22]_i_1_n_0\
    );
\Data_Int[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(23),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(7),
      O => \Data_Int[23]_i_1_n_0\
    );
\Data_Int[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(24),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(8),
      O => \Data_Int[24]_i_1_n_0\
    );
\Data_Int[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(25),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(9),
      O => \Data_Int[25]_i_1_n_0\
    );
\Data_Int[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(26),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(10),
      O => \Data_Int[26]_i_1_n_0\
    );
\Data_Int[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(27),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(11),
      O => \Data_Int[27]_i_1_n_0\
    );
\Data_Int[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(28),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(12),
      O => \Data_Int[28]_i_1_n_0\
    );
\Data_Int[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(29),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(13),
      O => \Data_Int[29]_i_1_n_0\
    );
\Data_Int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(2),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[2]_i_1_n_0\
    );
\Data_Int[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(30),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(14),
      O => \Data_Int[30]_i_1_n_0\
    );
\Data_Int[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => in5(31),
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => \Data_Int_reg[31]_0\(15),
      O => \Data_Int[31]_i_1_n_0\
    );
\Data_Int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(3),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[3]_i_1_n_0\
    );
\Data_Int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(4),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[4]_i_1_n_0\
    );
\Data_Int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(5),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[5]_i_1_n_0\
    );
\Data_Int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(6),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[6]_i_1_n_0\
    );
\Data_Int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(7),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[7]_i_1_n_0\
    );
\Data_Int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(8),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[8]_i_1_n_0\
    );
\Data_Int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ClockEnable,
      I1 => in5(9),
      I2 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \Data_Int[9]_i_1_n_0\
    );
\Data_Int_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[10]_i_1_n_0\,
      Q => in5(11)
    );
\Data_Int_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[11]_i_1_n_0\,
      Q => in5(12)
    );
\Data_Int_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[12]_i_1_n_0\,
      Q => in5(13)
    );
\Data_Int_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[13]_i_1_n_0\,
      Q => in5(14)
    );
\Data_Int_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[14]_i_1_n_0\,
      Q => in5(15)
    );
\Data_Int_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[15]_i_1_n_0\,
      Q => in5(16)
    );
\Data_Int_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[16]_i_1_n_0\,
      Q => in5(17)
    );
\Data_Int_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[17]_i_1_n_0\,
      Q => in5(18)
    );
\Data_Int_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[18]_i_1_n_0\,
      Q => in5(19)
    );
\Data_Int_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[19]_i_1_n_0\,
      Q => in5(20)
    );
\Data_Int_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => ClockEnable,
      Q => in5(2)
    );
\Data_Int_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[20]_i_1_n_0\,
      Q => in5(21)
    );
\Data_Int_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[21]_i_1_n_0\,
      Q => in5(22)
    );
\Data_Int_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[22]_i_1_n_0\,
      Q => in5(23)
    );
\Data_Int_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[23]_i_1_n_0\,
      Q => in5(24)
    );
\Data_Int_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[24]_i_1_n_0\,
      Q => in5(25)
    );
\Data_Int_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[25]_i_1_n_0\,
      Q => in5(26)
    );
\Data_Int_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[26]_i_1_n_0\,
      Q => in5(27)
    );
\Data_Int_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[27]_i_1_n_0\,
      Q => in5(28)
    );
\Data_Int_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[28]_i_1_n_0\,
      Q => in5(29)
    );
\Data_Int_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[29]_i_1_n_0\,
      Q => in5(30)
    );
\Data_Int_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[2]_i_1_n_0\,
      Q => in5(3)
    );
\Data_Int_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[30]_i_1_n_0\,
      Q => in5(31)
    );
\Data_Int_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[31]_i_1_n_0\,
      Q => p_1_in
    );
\Data_Int_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[3]_i_1_n_0\,
      Q => in5(4)
    );
\Data_Int_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[4]_i_1_n_0\,
      Q => in5(5)
    );
\Data_Int_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[5]_i_1_n_0\,
      Q => in5(6)
    );
\Data_Int_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[6]_i_1_n_0\,
      Q => in5(7)
    );
\Data_Int_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[7]_i_1_n_0\,
      Q => in5(8)
    );
\Data_Int_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[8]_i_1_n_0\,
      Q => in5(9)
    );
\Data_Int_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      CLR => \^ar\(0),
      D => \Data_Int[9]_i_1_n_0\,
      Q => in5(10)
    );
\FIFO[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => LED_OBUF(1),
      I1 => LED_OBUF(0),
      I2 => \^ready\,
      I3 => Q(0),
      I4 => Q(1),
      O => E(0)
    );
\FSM_onehot_CurrentState[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => \Ready1_carry__2_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => Ready_reg_0,
      O => \FSM_onehot_CurrentState[1]_i_1_n_0\
    );
\FSM_onehot_CurrentState[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Ready_reg_0,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I2 => \Ready1_carry__2_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      O => \FSM_onehot_CurrentState[2]_i_1_n_0\
    );
\FSM_onehot_CurrentState[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => LED_OBUF(1),
      I1 => LED_OBUF(0),
      O => \^ar\(0)
    );
\FSM_onehot_CurrentState_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => '1',
      D => '0',
      PRE => \^ar\(0),
      Q => ClockEnable
    );
\FSM_onehot_CurrentState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_onehot_CurrentState[1]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[1]\
    );
\FSM_onehot_CurrentState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_onehot_CurrentState[2]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[2]\
    );
LRCLK_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I1 => Ready_reg_0,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      O => LRCLK_i_1_n_0
    );
LRCLK_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(22),
      I1 => in8(23),
      O => LRCLK_i_10_n_0
    );
LRCLK_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(20),
      I1 => in8(21),
      O => LRCLK_i_11_n_0
    );
LRCLK_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(18),
      I1 => in8(19),
      O => LRCLK_i_13_n_0
    );
LRCLK_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(16),
      I1 => in8(17),
      O => LRCLK_i_14_n_0
    );
LRCLK_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(14),
      I1 => in8(15),
      O => LRCLK_i_15_n_0
    );
LRCLK_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(12),
      I1 => in8(13),
      O => LRCLK_i_16_n_0
    );
LRCLK_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(4),
      I1 => in8(5),
      O => LRCLK_i_17_n_0
    );
LRCLK_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(10),
      I1 => in8(11),
      O => LRCLK_i_18_n_0
    );
LRCLK_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(8),
      I1 => in8(9),
      O => LRCLK_i_19_n_0
    );
LRCLK_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I1 => LRCLK1,
      O => LRCLK_i_2_n_0
    );
LRCLK_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(6),
      I1 => in8(7),
      O => LRCLK_i_20_n_0
    );
LRCLK_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in8(4),
      I1 => in8(5),
      O => LRCLK_i_21_n_0
    );
LRCLK_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(30),
      I1 => in8(31),
      O => LRCLK_i_5_n_0
    );
LRCLK_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(28),
      I1 => in8(29),
      O => LRCLK_i_6_n_0
    );
LRCLK_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(26),
      I1 => in8(27),
      O => LRCLK_i_8_n_0
    );
LRCLK_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(24),
      I1 => in8(25),
      O => LRCLK_i_9_n_0
    );
LRCLK_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => LRCLK_i_1_n_0,
      D => LRCLK_i_2_n_0,
      PRE => \^ar\(0),
      Q => LRCLK_OBUF
    );
LRCLK_reg_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => LRCLK_reg_i_12_n_0,
      CO(2 downto 0) => NLW_LRCLK_reg_i_12_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => LRCLK_i_17_n_0,
      O(3 downto 0) => NLW_LRCLK_reg_i_12_O_UNCONNECTED(3 downto 0),
      S(3) => LRCLK_i_18_n_0,
      S(2) => LRCLK_i_19_n_0,
      S(1) => LRCLK_i_20_n_0,
      S(0) => LRCLK_i_21_n_0
    );
LRCLK_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => LRCLK_reg_i_4_n_0,
      CO(3 downto 2) => NLW_LRCLK_reg_i_3_CO_UNCONNECTED(3 downto 2),
      CO(1) => LRCLK1,
      CO(0) => NLW_LRCLK_reg_i_3_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => in8(31),
      DI(0) => '0',
      O(3 downto 0) => NLW_LRCLK_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => LRCLK_i_5_n_0,
      S(0) => LRCLK_i_6_n_0
    );
LRCLK_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => LRCLK_reg_i_7_n_0,
      CO(3) => LRCLK_reg_i_4_n_0,
      CO(2 downto 0) => NLW_LRCLK_reg_i_4_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_LRCLK_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => LRCLK_i_8_n_0,
      S(2) => LRCLK_i_9_n_0,
      S(1) => LRCLK_i_10_n_0,
      S(0) => LRCLK_i_11_n_0
    );
LRCLK_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => LRCLK_reg_i_12_n_0,
      CO(3) => LRCLK_reg_i_7_n_0,
      CO(2 downto 0) => NLW_LRCLK_reg_i_7_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_LRCLK_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => LRCLK_i_13_n_0,
      S(2) => LRCLK_i_14_n_0,
      S(1) => LRCLK_i_15_n_0,
      S(0) => LRCLK_i_16_n_0
    );
Ready1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Ready1_carry_n_0,
      CO(2 downto 0) => NLW_Ready1_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => Ready1_carry_i_1_n_0,
      DI(1) => Ready1_carry_i_2_n_0,
      DI(0) => Ready1_carry_i_3_n_0,
      O(3 downto 0) => NLW_Ready1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => Ready1_carry_i_4_n_0,
      S(2) => Ready1_carry_i_5_n_0,
      S(1) => Ready1_carry_i_6_n_0,
      S(0) => Ready1_carry_i_7_n_0
    );
\Ready1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Ready1_carry_n_0,
      CO(3) => \Ready1_carry__0_n_0\,
      CO(2 downto 0) => \NLW_Ready1_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Ready1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \Ready1_carry__0_i_1_n_0\,
      S(2) => \Ready1_carry__0_i_2_n_0\,
      S(1) => \Ready1_carry__0_i_3_n_0\,
      S(0) => \Ready1_carry__0_i_4_n_0\
    );
\Ready1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(14),
      I1 => in8(15),
      O => \Ready1_carry__0_i_1_n_0\
    );
\Ready1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(12),
      I1 => in8(13),
      O => \Ready1_carry__0_i_2_n_0\
    );
\Ready1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(10),
      I1 => in8(11),
      O => \Ready1_carry__0_i_3_n_0\
    );
\Ready1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(8),
      I1 => in8(9),
      O => \Ready1_carry__0_i_4_n_0\
    );
\Ready1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Ready1_carry__0_n_0\,
      CO(3) => \Ready1_carry__1_n_0\,
      CO(2 downto 0) => \NLW_Ready1_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Ready1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \Ready1_carry__1_i_1_n_0\,
      S(2) => \Ready1_carry__1_i_2_n_0\,
      S(1) => \Ready1_carry__1_i_3_n_0\,
      S(0) => \Ready1_carry__1_i_4_n_0\
    );
\Ready1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(22),
      I1 => in8(23),
      O => \Ready1_carry__1_i_1_n_0\
    );
\Ready1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(20),
      I1 => in8(21),
      O => \Ready1_carry__1_i_2_n_0\
    );
\Ready1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(18),
      I1 => in8(19),
      O => \Ready1_carry__1_i_3_n_0\
    );
\Ready1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(16),
      I1 => in8(17),
      O => \Ready1_carry__1_i_4_n_0\
    );
\Ready1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Ready1_carry__1_n_0\,
      CO(3) => \Ready1_carry__2_n_0\,
      CO(2 downto 0) => \NLW_Ready1_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => in8(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_Ready1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \Ready1_carry__2_i_1_n_0\,
      S(2) => \Ready1_carry__2_i_2_n_0\,
      S(1) => \Ready1_carry__2_i_3_n_0\,
      S(0) => \Ready1_carry__2_i_4_n_0\
    );
\Ready1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(30),
      I1 => in8(31),
      O => \Ready1_carry__2_i_1_n_0\
    );
\Ready1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(28),
      I1 => in8(29),
      O => \Ready1_carry__2_i_2_n_0\
    );
\Ready1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(26),
      I1 => in8(27),
      O => \Ready1_carry__2_i_3_n_0\
    );
\Ready1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(24),
      I1 => in8(25),
      O => \Ready1_carry__2_i_4_n_0\
    );
Ready1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(4),
      I1 => in8(5),
      O => Ready1_carry_i_1_n_0
    );
Ready1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => in8(2),
      I1 => in8(3),
      O => Ready1_carry_i_2_n_0
    );
Ready1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => BitCounter(0),
      I1 => in8(1),
      O => Ready1_carry_i_3_n_0
    );
Ready1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in8(6),
      I1 => in8(7),
      O => Ready1_carry_i_4_n_0
    );
Ready1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in8(4),
      I1 => in8(5),
      O => Ready1_carry_i_5_n_0
    );
Ready1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in8(2),
      I1 => in8(3),
      O => Ready1_carry_i_6_n_0
    );
Ready1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in8(1),
      I1 => BitCounter(0),
      O => Ready1_carry_i_7_n_0
    );
Ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFFFFEEAEAEAE"
    )
        port map (
      I0 => ClockEnable,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      I2 => \Ready1_carry__2_n_0\,
      I3 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I4 => Ready_reg_0,
      I5 => \^ready\,
      O => Ready_i_1_n_0
    );
Ready_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => '1',
      CLR => \^ar\(0),
      D => Ready_i_1_n_0,
      Q => \^ready\
    );
SCLK_Int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \Counter1_carry__2_n_0\,
      I1 => LED_OBUF(0),
      I2 => LED_OBUF(1),
      I3 => \^sclk_int_reg_0\,
      O => SCLK_Int_i_1_n_0
    );
SCLK_Int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK,
      CE => '1',
      D => SCLK_Int_i_1_n_0,
      Q => \^sclk_int_reg_0\,
      R => '0'
    );
SCLK_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sclk_int_reg_0\,
      I1 => ClockEnable_reg_n_0,
      O => SCLK_OBUF
    );
SD_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_Int,
      CE => \FSM_onehot_CurrentState_reg_n_0_[2]\,
      CLR => \^ar\(0),
      D => p_1_in,
      Q => SD_OBUF
    );
Valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB20"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^ready\,
      I3 => Ready_reg_0,
      O => \FSM_sequential_CurrentState_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SystemClock_clk_wiz_0_0__SystemClock_clk_wiz_0_0_clk_wiz\ is
  port (
    MCLK : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SystemClock_clk_wiz_0_0__SystemClock_clk_wiz_0_0_clk_wiz\ : entity is "SystemClock_clk_wiz_0_0_clk_wiz";
end \SystemClock_clk_wiz_0_0__SystemClock_clk_wiz_0_0_clk_wiz\;

architecture STRUCTURE of \SystemClock_clk_wiz_0_0__SystemClock_clk_wiz_0_0_clk_wiz\ is
  signal MCLK_SystemClock_clk_wiz_0_0 : STD_LOGIC;
  signal clkfbout_SystemClock_clk_wiz_0_0 : STD_LOGIC;
  signal clkfbout_buf_SystemClock_clk_wiz_0_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute box_type : string;
  attribute box_type of clkf_buf : label is "PRIMITIVE";
  attribute box_type of clkout1_buf : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of mmcm_adv_inst : label is "MLO RETARGET";
  attribute box_type of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_SystemClock_clk_wiz_0_0,
      O => clkfbout_buf_SystemClock_clk_wiz_0_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => MCLK_SystemClock_clk_wiz_0_0,
      O => MCLK
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 42.750000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 8.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 62.125000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "BUF_IN",
      DIVCLK_DIVIDE => 7,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '1',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_SystemClock_clk_wiz_0_0,
      CLKFBOUT => clkfbout_SystemClock_clk_wiz_0_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => MCLK_SystemClock_clk_wiz_0_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => resetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_wrapper_init\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwropt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_wrapper_init\ : entity is "blk_mem_gen_prim_wrapper_init";
end \SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_wrapper_init\;

architecture STRUCTURE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_wrapper_init\ is
  signal \I2S_Module/ROM/SineROM/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_cooolgate_en_sig_1\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\ : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\ : label is "SWEEP";
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\ : label is "ENBWREN=NEW:ENARDEN=NEW";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0306070F020F010E0207080D010F0D0401070F0B0100000A0008000900000000",
      INIT_01 => X"0607080D0602090F050D040E0507090E05010906040B030B04040905030D0A09",
      INIT_02 => X"070E0F0C070D0B0A070B0F0907090B0B0707000107030D0007000209060C0102",
      INIT_03 => X"0707000107090B0B070B0F09070D0B0A070E0F0C070F0B0E070F0F0F070F0B0E",
      INIT_04 => X"050109060507090E050D040E0602090F0607080D060C01020700020907030D00",
      INIT_05 => X"01070F0B010F0D040207080D020F010E0306070F030D0A0904040905040B030B",
      INIT_06 => X"0D0807030E00020C0E0800050E0F0F060F070F0700000000000800090100000A",
      INIT_07 => X"0A020B020A0806020A0E060A0B040C050B0B060B0C0205070C0908010D000E02",
      INIT_08 => X"080400070806040508080F0F080C0300080F0D0709030E0E09080703090D0601",
      INIT_09 => X"0804000708020406080100040800040208000001080004020801000408020406",
      INIT_0A => X"0A020B02090D06010908070309030E0E080F0D07080C030008080F0F08060405",
      INIT_0B => X"0D0807030D000E020C0908010C0205070B0B060B0B040C050A0E060A0A080602",
      INIT_0C => X"000000000000000000000000000000000F070F070E0F0F060E0800050E00020C",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 5) => addra(6 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 5) => addra(6 downto 0),
      ADDRBWRADDR(4 downto 0) => B"10000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 12) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 12),
      DOADO(11 downto 8) => douta(7 downto 4),
      DOADO(7 downto 4) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\(7 downto 4),
      DOADO(3 downto 0) => douta(3 downto 0),
      DOBDO(15 downto 12) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 12),
      DOBDO(11 downto 8) => douta(15 downto 12),
      DOBDO(7 downto 4) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\(7 downto 4),
      DOBDO(3 downto 0) => douta(11 downto 8),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => \I2S_Module/ROM/SineROM/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_cooolgate_en_sig_1\,
      ENBWREN => \I2S_Module/ROM/SineROM/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_cooolgate_en_sig_1\,
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\I2S_Module/ROM/SineROM/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_cooolgate_en_gate_1_cooolDelFlop\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clka,
      CE => '1',
      CLR => '0',
      D => pwropt,
      Q => \I2S_Module/ROM/SineROM/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_init.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_cooolgate_en_sig_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemClock_clk_wiz_0_0 is
  port (
    MCLK : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end SystemClock_clk_wiz_0_0;

architecture STRUCTURE of SystemClock_clk_wiz_0_0 is
begin
inst: entity work.\SystemClock_clk_wiz_0_0__SystemClock_clk_wiz_0_0_clk_wiz\
     port map (
      MCLK => MCLK,
      clk_in1 => clk_in1,
      locked => locked,
      resetn => resetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_width\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwropt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_width\ : entity is "blk_mem_gen_prim_width";
end \SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_width\;

architecture STRUCTURE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_width\ is
begin
\prim_init.ram\: entity work.\SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_wrapper_init\
     port map (
      addra(6 downto 0) => addra(6 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0),
      pwropt => pwropt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SystemClock is
  port (
    ClockIn : in STD_LOGIC;
    Locked : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    ResetN : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of SystemClock : entity is "SystemClock.hwdef";
end SystemClock;

architecture STRUCTURE of SystemClock is
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of ClockingWizard : label is "c:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/I2S.srcs/sources_1/bd/SystemClock/ip/SystemClock_clk_wiz_0_0/SystemClock_clk_wiz_0_0.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of ClockingWizard : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of ClockingWizard : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of ClockingWizard : label is "TRUE";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ClockIn : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ClockIn : signal is "XIL_INTERFACENAME CLK.CLOCKIN, CLK_DOMAIN SystemClock_ClockIn, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of MCLK : signal is "xilinx.com:signal:clock:1.0 CLK.MCLK CLK";
  attribute X_INTERFACE_PARAMETER of MCLK : signal is "XIL_INTERFACENAME CLK.MCLK, CLK_DOMAIN /ClockingWizard_clk_out1, FREQ_HZ 12288013, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ResetN : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of ResetN : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
ClockingWizard: entity work.SystemClock_clk_wiz_0_0
     port map (
      MCLK => MCLK,
      clk_in1 => ClockIn,
      locked => Locked,
      resetn => ResetN
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SineROM_blk_mem_gen_0_0__blk_mem_gen_generic_cstr\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwropt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SineROM_blk_mem_gen_0_0__blk_mem_gen_generic_cstr\ : entity is "blk_mem_gen_generic_cstr";
end \SineROM_blk_mem_gen_0_0__blk_mem_gen_generic_cstr\;

architecture STRUCTURE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_generic_cstr\ is
begin
\ramloop[0].ram.r\: entity work.\SineROM_blk_mem_gen_0_0__blk_mem_gen_prim_width\
     port map (
      addra(6 downto 0) => addra(6 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0),
      pwropt => pwropt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SineROM_blk_mem_gen_0_0__blk_mem_gen_top\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwropt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SineROM_blk_mem_gen_0_0__blk_mem_gen_top\ : entity is "blk_mem_gen_top";
end \SineROM_blk_mem_gen_0_0__blk_mem_gen_top\;

architecture STRUCTURE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_top\ is
begin
\valid.cstr\: entity work.\SineROM_blk_mem_gen_0_0__blk_mem_gen_generic_cstr\
     port map (
      addra(6 downto 0) => addra(6 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0),
      pwropt => pwropt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4_synth\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwropt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4_synth\ : entity is "blk_mem_gen_v8_4_4_synth";
end \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4_synth\;

architecture STRUCTURE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4_synth\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\SineROM_blk_mem_gen_0_0__blk_mem_gen_top\
     port map (
      addra(6 downto 0) => addra(6 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0),
      pwropt => pwropt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 6 downto 0 );
    pwropt : in STD_LOGIC
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 7;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 7;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "Estimated Power for IP     :     2.7096 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "SineROM_blk_mem_gen_0_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 100;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 100;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 100;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 100;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "blk_mem_gen_v8_4_4";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ : entity is "yes";
end \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\;

architecture STRUCTURE of \SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\ is
begin
  dbiterr <= 'Z';
  rsta_busy <= 'Z';
  rstb_busy <= 'Z';
  s_axi_arready <= 'Z';
  s_axi_awready <= 'Z';
  s_axi_bvalid <= 'Z';
  s_axi_dbiterr <= 'Z';
  s_axi_rlast <= 'Z';
  s_axi_rvalid <= 'Z';
  s_axi_sbiterr <= 'Z';
  s_axi_wready <= 'Z';
  sbiterr <= 'Z';
  doutb(0) <= 'Z';
  doutb(1) <= 'Z';
  doutb(2) <= 'Z';
  doutb(3) <= 'Z';
  doutb(4) <= 'Z';
  doutb(5) <= 'Z';
  doutb(6) <= 'Z';
  doutb(7) <= 'Z';
  doutb(8) <= 'Z';
  doutb(9) <= 'Z';
  doutb(10) <= 'Z';
  doutb(11) <= 'Z';
  doutb(12) <= 'Z';
  doutb(13) <= 'Z';
  doutb(14) <= 'Z';
  doutb(15) <= 'Z';
  rdaddrecc(0) <= 'Z';
  rdaddrecc(1) <= 'Z';
  rdaddrecc(2) <= 'Z';
  rdaddrecc(3) <= 'Z';
  rdaddrecc(4) <= 'Z';
  rdaddrecc(5) <= 'Z';
  rdaddrecc(6) <= 'Z';
  s_axi_bid(0) <= 'Z';
  s_axi_bid(1) <= 'Z';
  s_axi_bid(2) <= 'Z';
  s_axi_bid(3) <= 'Z';
  s_axi_bresp(0) <= 'Z';
  s_axi_bresp(1) <= 'Z';
  s_axi_rdaddrecc(0) <= 'Z';
  s_axi_rdaddrecc(1) <= 'Z';
  s_axi_rdaddrecc(2) <= 'Z';
  s_axi_rdaddrecc(3) <= 'Z';
  s_axi_rdaddrecc(4) <= 'Z';
  s_axi_rdaddrecc(5) <= 'Z';
  s_axi_rdaddrecc(6) <= 'Z';
  s_axi_rdata(0) <= 'Z';
  s_axi_rdata(1) <= 'Z';
  s_axi_rdata(2) <= 'Z';
  s_axi_rdata(3) <= 'Z';
  s_axi_rdata(4) <= 'Z';
  s_axi_rdata(5) <= 'Z';
  s_axi_rdata(6) <= 'Z';
  s_axi_rdata(7) <= 'Z';
  s_axi_rdata(8) <= 'Z';
  s_axi_rdata(9) <= 'Z';
  s_axi_rdata(10) <= 'Z';
  s_axi_rdata(11) <= 'Z';
  s_axi_rdata(12) <= 'Z';
  s_axi_rdata(13) <= 'Z';
  s_axi_rdata(14) <= 'Z';
  s_axi_rdata(15) <= 'Z';
  s_axi_rid(0) <= 'Z';
  s_axi_rid(1) <= 'Z';
  s_axi_rid(2) <= 'Z';
  s_axi_rid(3) <= 'Z';
  s_axi_rresp(0) <= 'Z';
  s_axi_rresp(1) <= 'Z';
inst_blk_mem_gen: entity work.\SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4_synth\
     port map (
      addra(6 downto 0) => addra(6 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0),
      pwropt => pwropt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SineROM_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pwropt : in STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SineROM_blk_mem_gen_0_0 : entity is "SineROM_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SineROM_blk_mem_gen_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of SineROM_blk_mem_gen_0_0 : entity is "blk_mem_gen_v8_4_4,Vivado 2019.2";
end SineROM_blk_mem_gen_0_0;

architecture STRUCTURE of SineROM_blk_mem_gen_0_0 is
  signal NLW_U0_clkb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_deepsleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_eccpipece_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_enb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_regcea_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_regceb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_shutdown_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_addrb_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_dina_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_dinb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wea_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_web_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 7;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 7;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.7096 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "SineROM_blk_mem_gen_0_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 100;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 100;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 100;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 100;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute X_INTERFACE_INFO of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.\SineROM_blk_mem_gen_0_0__blk_mem_gen_v8_4_4\
     port map (
      addra(6 downto 0) => addra(6 downto 0),
      addrb(6 downto 0) => NLW_U0_addrb_UNCONNECTED(6 downto 0),
      clka => clka,
      clkb => NLW_U0_clkb_UNCONNECTED,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => NLW_U0_deepsleep_UNCONNECTED,
      dina(15 downto 0) => NLW_U0_dina_UNCONNECTED(15 downto 0),
      dinb(15 downto 0) => NLW_U0_dinb_UNCONNECTED(15 downto 0),
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_U0_doutb_UNCONNECTED(15 downto 0),
      eccpipece => NLW_U0_eccpipece_UNCONNECTED,
      ena => NLW_U0_ena_UNCONNECTED,
      enb => NLW_U0_enb_UNCONNECTED,
      injectdbiterr => NLW_U0_injectdbiterr_UNCONNECTED,
      injectsbiterr => NLW_U0_injectsbiterr_UNCONNECTED,
      pwropt => pwropt,
      rdaddrecc(6 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(6 downto 0),
      regcea => NLW_U0_regcea_UNCONNECTED,
      regceb => NLW_U0_regceb_UNCONNECTED,
      rsta => NLW_U0_rsta_UNCONNECTED,
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => NLW_U0_rstb_UNCONNECTED,
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => NLW_U0_s_aclk_UNCONNECTED,
      s_aresetn => NLW_U0_s_aresetn_UNCONNECTED,
      s_axi_araddr(31 downto 0) => NLW_U0_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arburst(1 downto 0) => NLW_U0_s_axi_arburst_UNCONNECTED(1 downto 0),
      s_axi_arid(3 downto 0) => NLW_U0_s_axi_arid_UNCONNECTED(3 downto 0),
      s_axi_arlen(7 downto 0) => NLW_U0_s_axi_arlen_UNCONNECTED(7 downto 0),
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => NLW_U0_s_axi_arsize_UNCONNECTED(2 downto 0),
      s_axi_arvalid => NLW_U0_s_axi_arvalid_UNCONNECTED,
      s_axi_awaddr(31 downto 0) => NLW_U0_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awburst(1 downto 0) => NLW_U0_s_axi_awburst_UNCONNECTED(1 downto 0),
      s_axi_awid(3 downto 0) => NLW_U0_s_axi_awid_UNCONNECTED(3 downto 0),
      s_axi_awlen(7 downto 0) => NLW_U0_s_axi_awlen_UNCONNECTED(7 downto 0),
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => NLW_U0_s_axi_awsize_UNCONNECTED(2 downto 0),
      s_axi_awvalid => NLW_U0_s_axi_awvalid_UNCONNECTED,
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => NLW_U0_s_axi_bready_UNCONNECTED,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => NLW_U0_s_axi_injectdbiterr_UNCONNECTED,
      s_axi_injectsbiterr => NLW_U0_s_axi_injectsbiterr_UNCONNECTED,
      s_axi_rdaddrecc(6 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(6 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => NLW_U0_s_axi_rready_UNCONNECTED,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => NLW_U0_s_axi_wdata_UNCONNECTED(15 downto 0),
      s_axi_wlast => NLW_U0_s_axi_wlast_UNCONNECTED,
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => NLW_U0_s_axi_wstrb_UNCONNECTED(0),
      s_axi_wvalid => NLW_U0_s_axi_wvalid_UNCONNECTED,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => NLW_U0_shutdown_UNCONNECTED,
      sleep => NLW_U0_sleep_UNCONNECTED,
      wea(0) => NLW_U0_wea_UNCONNECTED(0),
      web(0) => NLW_U0_web_UNCONNECTED(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SineROM is
  port (
    Address : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Clock : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pwropt : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of SineROM : entity is "SineROM.hwdef";
end SineROM;

architecture STRUCTURE of SineROM is
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of SineROM : label is "c:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/I2S.srcs/sources_1/bd/SineROM/ip/SineROM_blk_mem_gen_0_0/SineROM_blk_mem_gen_0_0.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of SineROM : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of SineROM : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of SineROM : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of SineROM : label is "blk_mem_gen_v8_4_4,Vivado 2019.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clock : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clock : signal is "XIL_INTERFACENAME CLK.CLOCK, CLK_DOMAIN SineROM_clka_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
begin
SineROM: entity work.SineROM_blk_mem_gen_0_0
     port map (
      addra(6 downto 0) => Address(6 downto 0),
      clka => Clock,
      douta(15 downto 0) => DataOut(15 downto 0),
      pwropt => pwropt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S is
  port (
    LRCLK_OBUF : out STD_LOGIC;
    SD_OBUF : out STD_LOGIC;
    SCLK_Int_reg : out STD_LOGIC;
    SCLK_OBUF : out STD_LOGIC;
    Clock : in STD_LOGIC;
    SCLK_Int : in STD_LOGIC;
    MCLK : in STD_LOGIC;
    LED_OBUF : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end I2S;

architecture STRUCTURE of I2S is
  signal Address : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Counter1 : STD_LOGIC;
  signal \Counter1_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__1_n_0\ : STD_LOGIC;
  signal \Counter1_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal Counter1_carry_i_2_n_0 : STD_LOGIC;
  signal \Counter1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter1_carry_i_5__0_n_0\ : STD_LOGIC;
  signal Counter1_carry_i_6_n_0 : STD_LOGIC;
  signal Counter1_carry_i_7_n_0 : STD_LOGIC;
  signal Counter1_carry_n_0 : STD_LOGIC;
  signal \Counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \Counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \Counter[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \Counter[16]_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter[16]_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter[16]_i_5__0_n_0\ : STD_LOGIC;
  signal \Counter[20]_i_2__0_n_0\ : STD_LOGIC;
  signal \Counter[20]_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter[20]_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter[20]_i_5__0_n_0\ : STD_LOGIC;
  signal \Counter[24]_i_2__0_n_0\ : STD_LOGIC;
  signal \Counter[24]_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter[24]_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter[24]_i_5__0_n_0\ : STD_LOGIC;
  signal \Counter[28]_i_2__0_n_0\ : STD_LOGIC;
  signal \Counter[28]_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter[28]_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter[28]_i_5__0_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \Counter[8]_i_5__0_n_0\ : STD_LOGIC;
  signal Counter_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \Counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \Counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \Counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \Counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \Counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \Counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \Counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \Counter_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \Counter_reg[20]_i_1__0_n_4\ : STD_LOGIC;
  signal \Counter_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \Counter_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \Counter_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \Counter_reg[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \Counter_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \Counter_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \Counter_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \Counter_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \Counter_reg[28]_i_1__0_n_4\ : STD_LOGIC;
  signal \Counter_reg[28]_i_1__0_n_5\ : STD_LOGIC;
  signal \Counter_reg[28]_i_1__0_n_6\ : STD_LOGIC;
  signal \Counter_reg[28]_i_1__0_n_7\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \Counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \Counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \Counter_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal CurrentState : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \CurrentState__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DataOut : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal FIFO : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal ROM_Address : STD_LOGIC;
  signal Ready : STD_LOGIC;
  signal Transmitter_n_1 : STD_LOGIC;
  signal Transmitter_n_5 : STD_LOGIC;
  signal Transmitter_n_6 : STD_LOGIC;
  signal Valid_reg_n_0 : STD_LOGIC;
  signal NLW_Counter1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[20]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[24]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[28]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Counter_reg[4]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Counter_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Counter1_carry : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter1_carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter1_carry__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter1_carry__2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[0]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[12]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[16]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[20]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[24]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[28]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[4]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \Counter_reg[8]_i_1__0\ : label is "SWEEP";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_CurrentState[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_CurrentState[1]_i_1\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_CurrentState_reg[0]\ : label is "reset:00,increase:10,waitforready:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_CurrentState_reg[1]\ : label is "reset:00,increase:10,waitforready:01";
  attribute hw_handoff : string;
  attribute hw_handoff of ROM : label is "SineROM.hwdef";
begin
Counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Counter1_carry_n_0,
      CO(2 downto 0) => NLW_Counter1_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3) => \Counter1_carry_i_1__0_n_0\,
      DI(2) => Counter1_carry_i_2_n_0,
      DI(1) => '0',
      DI(0) => \Counter1_carry_i_3__0_n_0\,
      O(3 downto 0) => NLW_Counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \Counter1_carry_i_4__0_n_0\,
      S(2) => \Counter1_carry_i_5__0_n_0\,
      S(1) => Counter1_carry_i_6_n_0,
      S(0) => Counter1_carry_i_7_n_0
    );
\Counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Counter1_carry_n_0,
      CO(3) => \Counter1_carry__0_n_0\,
      CO(2 downto 0) => \NLW_Counter1_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \Counter1_carry__0_i_1__0_n_0\,
      S(2) => \Counter1_carry__0_i_2__0_n_0\,
      S(1) => \Counter1_carry__0_i_3__0_n_0\,
      S(0) => \Counter1_carry__0_i_4__0_n_0\
    );
\Counter1_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(14),
      I1 => \Counter_reg__0\(15),
      O => \Counter1_carry__0_i_1__0_n_0\
    );
\Counter1_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(12),
      I1 => \Counter_reg__0\(13),
      O => \Counter1_carry__0_i_2__0_n_0\
    );
\Counter1_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(10),
      I1 => \Counter_reg__0\(11),
      O => \Counter1_carry__0_i_3__0_n_0\
    );
\Counter1_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(8),
      I1 => \Counter_reg__0\(9),
      O => \Counter1_carry__0_i_4__0_n_0\
    );
\Counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter1_carry__0_n_0\,
      CO(3) => \Counter1_carry__1_n_0\,
      CO(2 downto 0) => \NLW_Counter1_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Counter1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \Counter1_carry__1_i_1__0_n_0\,
      S(2) => \Counter1_carry__1_i_2__0_n_0\,
      S(1) => \Counter1_carry__1_i_3__0_n_0\,
      S(0) => \Counter1_carry__1_i_4__0_n_0\
    );
\Counter1_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(22),
      I1 => \Counter_reg__0\(23),
      O => \Counter1_carry__1_i_1__0_n_0\
    );
\Counter1_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(20),
      I1 => \Counter_reg__0\(21),
      O => \Counter1_carry__1_i_2__0_n_0\
    );
\Counter1_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(18),
      I1 => \Counter_reg__0\(19),
      O => \Counter1_carry__1_i_3__0_n_0\
    );
\Counter1_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(16),
      I1 => \Counter_reg__0\(17),
      O => \Counter1_carry__1_i_4__0_n_0\
    );
\Counter1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter1_carry__1_n_0\,
      CO(3) => Counter1,
      CO(2 downto 0) => \NLW_Counter1_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Counter_reg__0\(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_Counter1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \Counter1_carry__2_i_1__0_n_0\,
      S(2) => \Counter1_carry__2_i_2__0_n_0\,
      S(1) => \Counter1_carry__2_i_3__0_n_0\,
      S(0) => \Counter1_carry__2_i_4__0_n_0\
    );
\Counter1_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(30),
      I1 => \Counter_reg__0\(31),
      O => \Counter1_carry__2_i_1__0_n_0\
    );
\Counter1_carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(28),
      I1 => \Counter_reg__0\(29),
      O => \Counter1_carry__2_i_2__0_n_0\
    );
\Counter1_carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(26),
      I1 => \Counter_reg__0\(27),
      O => \Counter1_carry__2_i_3__0_n_0\
    );
\Counter1_carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Counter_reg__0\(24),
      I1 => \Counter_reg__0\(25),
      O => \Counter1_carry__2_i_4__0_n_0\
    );
\Counter1_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(6),
      I1 => \Counter_reg__0\(7),
      O => \Counter1_carry_i_1__0_n_0\
    );
Counter1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(5),
      O => Counter1_carry_i_2_n_0
    );
\Counter1_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Counter_reg(0),
      I1 => Counter_reg(1),
      O => \Counter1_carry_i_3__0_n_0\
    );
\Counter1_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Counter_reg(6),
      I1 => \Counter_reg__0\(7),
      O => \Counter1_carry_i_4__0_n_0\
    );
\Counter1_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Counter_reg(5),
      I1 => Counter_reg(4),
      O => \Counter1_carry_i_5__0_n_0\
    );
Counter1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Counter_reg(2),
      I1 => Counter_reg(3),
      O => Counter1_carry_i_6_n_0
    );
Counter1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter_reg(0),
      I1 => Counter_reg(1),
      O => Counter1_carry_i_7_n_0
    );
\Counter[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => Counter_reg(3),
      O => \Counter[0]_i_3__0_n_0\
    );
\Counter[0]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => Counter_reg(2),
      O => \Counter[0]_i_4__0_n_0\
    );
\Counter[0]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => Counter_reg(1),
      O => \Counter[0]_i_5__0_n_0\
    );
\Counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => Counter_reg(0),
      I1 => Counter1,
      O => \Counter[0]_i_6_n_0\
    );
\Counter[12]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(15),
      O => \Counter[12]_i_2__0_n_0\
    );
\Counter[12]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(14),
      O => \Counter[12]_i_3__0_n_0\
    );
\Counter[12]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(13),
      O => \Counter[12]_i_4__0_n_0\
    );
\Counter[12]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(12),
      O => \Counter[12]_i_5__0_n_0\
    );
\Counter[16]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(19),
      O => \Counter[16]_i_2__0_n_0\
    );
\Counter[16]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(18),
      O => \Counter[16]_i_3__0_n_0\
    );
\Counter[16]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(17),
      O => \Counter[16]_i_4__0_n_0\
    );
\Counter[16]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(16),
      O => \Counter[16]_i_5__0_n_0\
    );
\Counter[20]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(23),
      O => \Counter[20]_i_2__0_n_0\
    );
\Counter[20]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(22),
      O => \Counter[20]_i_3__0_n_0\
    );
\Counter[20]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(21),
      O => \Counter[20]_i_4__0_n_0\
    );
\Counter[20]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(20),
      O => \Counter[20]_i_5__0_n_0\
    );
\Counter[24]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(27),
      O => \Counter[24]_i_2__0_n_0\
    );
\Counter[24]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(26),
      O => \Counter[24]_i_3__0_n_0\
    );
\Counter[24]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(25),
      O => \Counter[24]_i_4__0_n_0\
    );
\Counter[24]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(24),
      O => \Counter[24]_i_5__0_n_0\
    );
\Counter[28]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(31),
      O => \Counter[28]_i_2__0_n_0\
    );
\Counter[28]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(30),
      O => \Counter[28]_i_3__0_n_0\
    );
\Counter[28]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(29),
      O => \Counter[28]_i_4__0_n_0\
    );
\Counter[28]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(28),
      O => \Counter[28]_i_5__0_n_0\
    );
\Counter[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(7),
      O => \Counter[4]_i_2__0_n_0\
    );
\Counter[4]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => Counter_reg(6),
      O => \Counter[4]_i_3__0_n_0\
    );
\Counter[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => Counter_reg(5),
      O => \Counter[4]_i_4__0_n_0\
    );
\Counter[4]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => Counter_reg(4),
      O => \Counter[4]_i_5__0_n_0\
    );
\Counter[8]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(11),
      O => \Counter[8]_i_2__0_n_0\
    );
\Counter[8]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(10),
      O => \Counter[8]_i_3__0_n_0\
    );
\Counter[8]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(9),
      O => \Counter[8]_i_4__0_n_0\
    );
\Counter[8]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Counter1,
      I1 => \Counter_reg__0\(8),
      O => \Counter[8]_i_5__0_n_0\
    );
\Counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[0]_i_2_n_7\,
      Q => Counter_reg(0)
    );
\Counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Counter_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => Counter1,
      O(3) => \Counter_reg[0]_i_2_n_4\,
      O(2) => \Counter_reg[0]_i_2_n_5\,
      O(1) => \Counter_reg[0]_i_2_n_6\,
      O(0) => \Counter_reg[0]_i_2_n_7\,
      S(3) => \Counter[0]_i_3__0_n_0\,
      S(2) => \Counter[0]_i_4__0_n_0\,
      S(1) => \Counter[0]_i_5__0_n_0\,
      S(0) => \Counter[0]_i_6_n_0\
    );
\Counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[8]_i_1__0_n_5\,
      Q => \Counter_reg__0\(10)
    );
\Counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[8]_i_1__0_n_4\,
      Q => \Counter_reg__0\(11)
    );
\Counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[12]_i_1__0_n_7\,
      Q => \Counter_reg__0\(12)
    );
\Counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[8]_i_1__0_n_0\,
      CO(3) => \Counter_reg[12]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[12]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[12]_i_1__0_n_4\,
      O(2) => \Counter_reg[12]_i_1__0_n_5\,
      O(1) => \Counter_reg[12]_i_1__0_n_6\,
      O(0) => \Counter_reg[12]_i_1__0_n_7\,
      S(3) => \Counter[12]_i_2__0_n_0\,
      S(2) => \Counter[12]_i_3__0_n_0\,
      S(1) => \Counter[12]_i_4__0_n_0\,
      S(0) => \Counter[12]_i_5__0_n_0\
    );
\Counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[12]_i_1__0_n_6\,
      Q => \Counter_reg__0\(13)
    );
\Counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[12]_i_1__0_n_5\,
      Q => \Counter_reg__0\(14)
    );
\Counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[12]_i_1__0_n_4\,
      Q => \Counter_reg__0\(15)
    );
\Counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[16]_i_1__0_n_7\,
      Q => \Counter_reg__0\(16)
    );
\Counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[12]_i_1__0_n_0\,
      CO(3) => \Counter_reg[16]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[16]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[16]_i_1__0_n_4\,
      O(2) => \Counter_reg[16]_i_1__0_n_5\,
      O(1) => \Counter_reg[16]_i_1__0_n_6\,
      O(0) => \Counter_reg[16]_i_1__0_n_7\,
      S(3) => \Counter[16]_i_2__0_n_0\,
      S(2) => \Counter[16]_i_3__0_n_0\,
      S(1) => \Counter[16]_i_4__0_n_0\,
      S(0) => \Counter[16]_i_5__0_n_0\
    );
\Counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[16]_i_1__0_n_6\,
      Q => \Counter_reg__0\(17)
    );
\Counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[16]_i_1__0_n_5\,
      Q => \Counter_reg__0\(18)
    );
\Counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[16]_i_1__0_n_4\,
      Q => \Counter_reg__0\(19)
    );
\Counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[0]_i_2_n_6\,
      Q => Counter_reg(1)
    );
\Counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[20]_i_1__0_n_7\,
      Q => \Counter_reg__0\(20)
    );
\Counter_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[16]_i_1__0_n_0\,
      CO(3) => \Counter_reg[20]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[20]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[20]_i_1__0_n_4\,
      O(2) => \Counter_reg[20]_i_1__0_n_5\,
      O(1) => \Counter_reg[20]_i_1__0_n_6\,
      O(0) => \Counter_reg[20]_i_1__0_n_7\,
      S(3) => \Counter[20]_i_2__0_n_0\,
      S(2) => \Counter[20]_i_3__0_n_0\,
      S(1) => \Counter[20]_i_4__0_n_0\,
      S(0) => \Counter[20]_i_5__0_n_0\
    );
\Counter_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[20]_i_1__0_n_6\,
      Q => \Counter_reg__0\(21)
    );
\Counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[20]_i_1__0_n_5\,
      Q => \Counter_reg__0\(22)
    );
\Counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[20]_i_1__0_n_4\,
      Q => \Counter_reg__0\(23)
    );
\Counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[24]_i_1__0_n_7\,
      Q => \Counter_reg__0\(24)
    );
\Counter_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[20]_i_1__0_n_0\,
      CO(3) => \Counter_reg[24]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[24]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[24]_i_1__0_n_4\,
      O(2) => \Counter_reg[24]_i_1__0_n_5\,
      O(1) => \Counter_reg[24]_i_1__0_n_6\,
      O(0) => \Counter_reg[24]_i_1__0_n_7\,
      S(3) => \Counter[24]_i_2__0_n_0\,
      S(2) => \Counter[24]_i_3__0_n_0\,
      S(1) => \Counter[24]_i_4__0_n_0\,
      S(0) => \Counter[24]_i_5__0_n_0\
    );
\Counter_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[24]_i_1__0_n_6\,
      Q => \Counter_reg__0\(25)
    );
\Counter_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[24]_i_1__0_n_5\,
      Q => \Counter_reg__0\(26)
    );
\Counter_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[24]_i_1__0_n_4\,
      Q => \Counter_reg__0\(27)
    );
\Counter_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[28]_i_1__0_n_7\,
      Q => \Counter_reg__0\(28)
    );
\Counter_reg[28]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[24]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_Counter_reg[28]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[28]_i_1__0_n_4\,
      O(2) => \Counter_reg[28]_i_1__0_n_5\,
      O(1) => \Counter_reg[28]_i_1__0_n_6\,
      O(0) => \Counter_reg[28]_i_1__0_n_7\,
      S(3) => \Counter[28]_i_2__0_n_0\,
      S(2) => \Counter[28]_i_3__0_n_0\,
      S(1) => \Counter[28]_i_4__0_n_0\,
      S(0) => \Counter[28]_i_5__0_n_0\
    );
\Counter_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[28]_i_1__0_n_6\,
      Q => \Counter_reg__0\(29)
    );
\Counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[0]_i_2_n_5\,
      Q => Counter_reg(2)
    );
\Counter_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[28]_i_1__0_n_5\,
      Q => \Counter_reg__0\(30)
    );
\Counter_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[28]_i_1__0_n_4\,
      Q => \Counter_reg__0\(31)
    );
\Counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[0]_i_2_n_4\,
      Q => Counter_reg(3)
    );
\Counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[4]_i_1__0_n_7\,
      Q => Counter_reg(4)
    );
\Counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[0]_i_2_n_0\,
      CO(3) => \Counter_reg[4]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[4]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[4]_i_1__0_n_4\,
      O(2) => \Counter_reg[4]_i_1__0_n_5\,
      O(1) => \Counter_reg[4]_i_1__0_n_6\,
      O(0) => \Counter_reg[4]_i_1__0_n_7\,
      S(3) => \Counter[4]_i_2__0_n_0\,
      S(2) => \Counter[4]_i_3__0_n_0\,
      S(1) => \Counter[4]_i_4__0_n_0\,
      S(0) => \Counter[4]_i_5__0_n_0\
    );
\Counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[4]_i_1__0_n_6\,
      Q => Counter_reg(5)
    );
\Counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[4]_i_1__0_n_5\,
      Q => Counter_reg(6)
    );
\Counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[4]_i_1__0_n_4\,
      Q => \Counter_reg__0\(7)
    );
\Counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[8]_i_1__0_n_7\,
      Q => \Counter_reg__0\(8)
    );
\Counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Counter_reg[4]_i_1__0_n_0\,
      CO(3) => \Counter_reg[8]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_Counter_reg[8]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Counter_reg[8]_i_1__0_n_4\,
      O(2) => \Counter_reg[8]_i_1__0_n_5\,
      O(1) => \Counter_reg[8]_i_1__0_n_6\,
      O(0) => \Counter_reg[8]_i_1__0_n_7\,
      S(3) => \Counter[8]_i_2__0_n_0\,
      S(2) => \Counter[8]_i_3__0_n_0\,
      S(1) => \Counter[8]_i_4__0_n_0\,
      S(0) => \Counter[8]_i_5__0_n_0\
    );
\Counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => ROM_Address,
      CLR => Transmitter_n_1,
      D => \Counter_reg[8]_i_1__0_n_6\,
      Q => \Counter_reg__0\(9)
    );
\FIFO_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(0),
      Q => FIFO(16),
      R => '0'
    );
\FIFO_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(1),
      Q => FIFO(17),
      R => '0'
    );
\FIFO_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(2),
      Q => FIFO(18),
      R => '0'
    );
\FIFO_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(3),
      Q => FIFO(19),
      R => '0'
    );
\FIFO_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(4),
      Q => FIFO(20),
      R => '0'
    );
\FIFO_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(5),
      Q => FIFO(21),
      R => '0'
    );
\FIFO_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(6),
      Q => FIFO(22),
      R => '0'
    );
\FIFO_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(7),
      Q => FIFO(23),
      R => '0'
    );
\FIFO_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(8),
      Q => FIFO(24),
      R => '0'
    );
\FIFO_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(9),
      Q => FIFO(25),
      R => '0'
    );
\FIFO_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(10),
      Q => FIFO(26),
      R => '0'
    );
\FIFO_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(11),
      Q => FIFO(27),
      R => '0'
    );
\FIFO_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(12),
      Q => FIFO(28),
      R => '0'
    );
\FIFO_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(13),
      Q => FIFO(29),
      R => '0'
    );
\FIFO_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(14),
      Q => FIFO(30),
      R => '0'
    );
\FIFO_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => DataOut(15),
      Q => FIFO(31),
      R => '0'
    );
\FSM_sequential_CurrentState[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => CurrentState(1),
      I1 => Ready,
      I2 => CurrentState(0),
      O => \CurrentState__0\(0)
    );
\FSM_sequential_CurrentState[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => CurrentState(0),
      I1 => CurrentState(1),
      I2 => Ready,
      O => \CurrentState__0\(1)
    );
\FSM_sequential_CurrentState_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      CLR => Transmitter_n_1,
      D => \CurrentState__0\(0),
      Q => CurrentState(0)
    );
\FSM_sequential_CurrentState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      CLR => Transmitter_n_1,
      D => \CurrentState__0\(1),
      Q => CurrentState(1)
    );
ROM: entity work.SineROM
     port map (
      Address(6 downto 0) => Address(6 downto 0),
      Clock => Clock,
      DataOut(15 downto 0) => DataOut(15 downto 0),
      pwropt => Transmitter_n_6
    );
\ROM_Address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => Counter_reg(0),
      Q => Address(0),
      R => '0'
    );
\ROM_Address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => Counter_reg(1),
      Q => Address(1),
      R => '0'
    );
\ROM_Address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => Counter_reg(2),
      Q => Address(2),
      R => '0'
    );
\ROM_Address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => Counter_reg(3),
      Q => Address(3),
      R => '0'
    );
\ROM_Address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => Counter_reg(4),
      Q => Address(4),
      R => '0'
    );
\ROM_Address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => Counter_reg(5),
      Q => Address(5),
      R => '0'
    );
\ROM_Address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => Transmitter_n_6,
      D => Counter_reg(6),
      Q => Address(6),
      R => '0'
    );
Transmitter: entity work.I2S_Transmitter
     port map (
      AR(0) => Transmitter_n_1,
      \Data_Int_reg[31]_0\(15 downto 0) => FIFO(31 downto 16),
      E(0) => Transmitter_n_6,
      \FSM_sequential_CurrentState_reg[0]\ => Transmitter_n_5,
      LED_OBUF(1 downto 0) => LED_OBUF(1 downto 0),
      LRCLK_OBUF => LRCLK_OBUF,
      MCLK => MCLK,
      Q(1 downto 0) => CurrentState(1 downto 0),
      ROM_Address => ROM_Address,
      Ready => Ready,
      Ready_reg_0 => Valid_reg_n_0,
      SCLK_Int => SCLK_Int,
      SCLK_Int_reg_0 => SCLK_Int_reg,
      SCLK_OBUF => SCLK_OBUF,
      SD_OBUF => SD_OBUF
    );
Valid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      CLR => Transmitter_n_1,
      D => Transmitter_n_5,
      Q => Valid_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top is
  port (
    Clock : in STD_LOGIC;
    ResetN : in STD_LOGIC;
    MCLK : out STD_LOGIC;
    LRCLK : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    SD : out STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Top : entity is "85503913";
  attribute MULT : integer;
  attribute MULT of Top : entity is 8;
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of Top : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of Top : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of Top : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of Top : entity is 16;
end Top;

architecture STRUCTURE of Top is
  signal Clock_IBUF : STD_LOGIC;
  signal Clock_IBUF_BUFG : STD_LOGIC;
  signal I2S_Module_n_2 : STD_LOGIC;
  signal LED_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal LRCLK_OBUF : STD_LOGIC;
  signal MCLK_OBUF : STD_LOGIC;
  signal SCLK_OBUF : STD_LOGIC;
  signal SD_OBUF : STD_LOGIC;
  signal \Transmitter/SCLK_Int\ : STD_LOGIC;
  attribute LOPT_BUFG_CLOCK : boolean;
  attribute LOPT_BUFG_CLOCK of Clock_IBUF_BUFG_inst : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Clock_IBUF_BUFG_inst : label is "BUFG_OPT";
  attribute SPLIT_LOADS_ON_BUFG : boolean;
  attribute SPLIT_LOADS_ON_BUFG of Clock_IBUF_BUFG_inst : label is std.standard.true;
  attribute OPT_INSERTED : boolean;
  attribute OPT_INSERTED of Clock_IBUF_inst : label is std.standard.true;
  attribute OPT_MODIFIED of Clock_IBUF_inst : label is "MLO BUFG_OPT";
  attribute hw_handoff : string;
  attribute hw_handoff of InputClock : label is "SystemClock.hwdef";
begin
Clock_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Clock_IBUF,
      O => Clock_IBUF_BUFG
    );
Clock_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Clock,
      O => Clock_IBUF
    );
\FSM_onehot_CurrentState_reg[2]_i_2\: unisim.vcomponents.BUFG
     port map (
      I => I2S_Module_n_2,
      O => \Transmitter/SCLK_Int\
    );
I2S_Module: entity work.I2S
     port map (
      Clock => Clock_IBUF_BUFG,
      LED_OBUF(1 downto 0) => LED_OBUF(1 downto 0),
      LRCLK_OBUF => LRCLK_OBUF,
      MCLK => MCLK_OBUF,
      SCLK_Int => \Transmitter/SCLK_Int\,
      SCLK_Int_reg => I2S_Module_n_2,
      SCLK_OBUF => SCLK_OBUF,
      SD_OBUF => SD_OBUF
    );
InputClock: entity work.SystemClock
     port map (
      ClockIn => Clock_IBUF_BUFG,
      Locked => LED_OBUF(1),
      MCLK => MCLK_OBUF,
      ResetN => LED_OBUF(0)
    );
\LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(0),
      O => LED(0)
    );
\LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(1)
    );
\LED_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => LED(2),
      T => '1'
    );
\LED_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => LED(3),
      T => '1'
    );
LRCLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LRCLK_OBUF,
      O => LRCLK
    );
MCLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => MCLK_OBUF,
      O => MCLK
    );
ResetN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ResetN,
      O => LED_OBUF(0)
    );
SCLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SCLK_OBUF,
      O => SCLK
    );
SD_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SD_OBUF,
      O => SD
    );
end STRUCTURE;
