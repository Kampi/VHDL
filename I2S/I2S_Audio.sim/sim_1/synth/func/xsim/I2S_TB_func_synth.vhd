-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Jul  5 21:22:45 2019
-- Host        : DevVM running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/daniel/Schreibtisch/Git/VHDL/I2S_Transmitter/I2S_Transmitter.sim/sim_1/synth/func/xsim/I2S_TB_func_synth.vhd
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
    SD_OBUF : out STD_LOGIC;
    SCLK_OBUF : out STD_LOGIC;
    Clock_Int_reg : in STD_LOGIC;
    Clock_Int_reg_0 : in STD_LOGIC;
    DataOut : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ResetN_IBUF : in STD_LOGIC
  );
end I2S_Transmitter;

architecture STRUCTURE of I2S_Transmitter is
  signal \FSM_onehot_NextState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NextState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NextState[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_NextState_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_NextState_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_NextState_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_NextState_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_NextState_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_NextState_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_NextState_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_NextState_reg_n_0_[4]\ : signal is "yes";
  signal LRCLK_Cnt : STD_LOGIC;
  signal \LRCLK_Cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[20]_i_2_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[28]_i_2_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[28]_i_3_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[28]_i_4_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[28]_i_5_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal LRCLK_Cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \LRCLK_Cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \LRCLK_Cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal LRCLK_Int : STD_LOGIC;
  attribute RTL_KEEP of LRCLK_Int : signal is "yes";
  signal LRCLK_Int_reg_i_1_n_0 : STD_LOGIC;
  signal LRCLK_Int_reg_i_2_n_0 : STD_LOGIC;
  signal NextState1 : STD_LOGIC;
  signal \NextState1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \NextState1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \NextState1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \NextState1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \NextState1_carry__0_n_0\ : STD_LOGIC;
  signal \NextState1_carry__0_n_1\ : STD_LOGIC;
  signal \NextState1_carry__0_n_2\ : STD_LOGIC;
  signal \NextState1_carry__0_n_3\ : STD_LOGIC;
  signal \NextState1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \NextState1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \NextState1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \NextState1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \NextState1_carry__1_n_0\ : STD_LOGIC;
  signal \NextState1_carry__1_n_1\ : STD_LOGIC;
  signal \NextState1_carry__1_n_2\ : STD_LOGIC;
  signal \NextState1_carry__1_n_3\ : STD_LOGIC;
  signal \NextState1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \NextState1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \NextState1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \NextState1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \NextState1_carry__2_n_1\ : STD_LOGIC;
  signal \NextState1_carry__2_n_2\ : STD_LOGIC;
  signal \NextState1_carry__2_n_3\ : STD_LOGIC;
  signal NextState1_carry_i_1_n_0 : STD_LOGIC;
  signal NextState1_carry_i_2_n_0 : STD_LOGIC;
  signal NextState1_carry_i_3_n_0 : STD_LOGIC;
  signal NextState1_carry_i_4_n_0 : STD_LOGIC;
  signal NextState1_carry_i_5_n_0 : STD_LOGIC;
  signal NextState1_carry_i_6_n_0 : STD_LOGIC;
  signal NextState1_carry_i_7_n_0 : STD_LOGIC;
  signal NextState1_carry_n_0 : STD_LOGIC;
  signal NextState1_carry_n_1 : STD_LOGIC;
  signal NextState1_carry_n_2 : STD_LOGIC;
  signal NextState1_carry_n_3 : STD_LOGIC;
  signal SCLK_Int : STD_LOGIC;
  signal SD_Int_reg_i_1_n_0 : STD_LOGIC;
  signal ShiftRegister : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ShiftRegister_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftRegister_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_LRCLK_Cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_NextState1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NextState1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NextState1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_NextState1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_NextState_reg[0]\ : label is "s1:00100,s2:01000,s3:10000,reset:00001,s0:00010";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_NextState_reg[0]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[0]\ : label is "FDE_1";
  attribute FSM_ENCODED_STATES of \FSM_onehot_NextState_reg[1]\ : label is "s1:00100,s2:01000,s3:10000,reset:00001,s0:00010";
  attribute KEEP of \FSM_onehot_NextState_reg[1]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[1]\ : label is "FDE_1";
  attribute FSM_ENCODED_STATES of \FSM_onehot_NextState_reg[2]\ : label is "s1:00100,s2:01000,s3:10000,reset:00001,s0:00010";
  attribute KEEP of \FSM_onehot_NextState_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[2]\ : label is "FDE_1";
  attribute FSM_ENCODED_STATES of \FSM_onehot_NextState_reg[3]\ : label is "s1:00100,s2:01000,s3:10000,reset:00001,s0:00010";
  attribute KEEP of \FSM_onehot_NextState_reg[3]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[3]\ : label is "FDE_1";
  attribute FSM_ENCODED_STATES of \FSM_onehot_NextState_reg[4]\ : label is "s1:00100,s2:01000,s3:10000,reset:00001,s0:00010";
  attribute KEEP of \FSM_onehot_NextState_reg[4]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_NextState_reg[4]\ : label is "FDE_1";
  attribute XILINX_LEGACY_PRIM of LRCLK_Int_reg : label is "LDC";
  attribute XILINX_LEGACY_PRIM of SCLK_Int_reg : label is "LDC";
  attribute XILINX_LEGACY_PRIM of SD_Int_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ShiftRegister_reg[9]\ : label is "LD";
begin
\FSM_onehot_NextState[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_NextState_reg_n_0_[0]\,
      I1 => ResetN_IBUF,
      O => \FSM_onehot_NextState[0]_i_1_n_0\
    );
\FSM_onehot_NextState[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_NextState_reg_n_0_[0]\,
      I1 => ResetN_IBUF,
      I2 => \FSM_onehot_NextState_reg_n_0_[4]\,
      O => \FSM_onehot_NextState[1]_i_1_n_0\
    );
\FSM_onehot_NextState[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFEFFFEFE"
    )
        port map (
      I0 => LRCLK_Int,
      I1 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I2 => \FSM_onehot_NextState_reg_n_0_[0]\,
      I3 => NextState1,
      I4 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I5 => \FSM_onehot_NextState_reg_n_0_[4]\,
      O => \FSM_onehot_NextState[4]_i_1_n_0\
    );
\FSM_onehot_NextState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock_Int_reg_0,
      CE => \FSM_onehot_NextState[4]_i_1_n_0\,
      D => \FSM_onehot_NextState[0]_i_1_n_0\,
      Q => \FSM_onehot_NextState_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_NextState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock_Int_reg_0,
      CE => \FSM_onehot_NextState[4]_i_1_n_0\,
      D => \FSM_onehot_NextState[1]_i_1_n_0\,
      Q => LRCLK_Int,
      R => '0'
    );
\FSM_onehot_NextState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock_Int_reg_0,
      CE => \FSM_onehot_NextState[4]_i_1_n_0\,
      D => LRCLK_Int,
      Q => \FSM_onehot_NextState_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_NextState_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock_Int_reg_0,
      CE => \FSM_onehot_NextState[4]_i_1_n_0\,
      D => \FSM_onehot_NextState_reg_n_0_[2]\,
      Q => \FSM_onehot_NextState_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_NextState_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => Clock_Int_reg_0,
      CE => \FSM_onehot_NextState[4]_i_1_n_0\,
      D => \FSM_onehot_NextState_reg_n_0_[3]\,
      Q => \FSM_onehot_NextState_reg_n_0_[4]\,
      R => '0'
    );
\LRCLK_Cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I1 => \FSM_onehot_NextState_reg_n_0_[4]\,
      O => LRCLK_Cnt
    );
\LRCLK_Cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(3),
      O => \LRCLK_Cnt[0]_i_4_n_0\
    );
\LRCLK_Cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(2),
      O => \LRCLK_Cnt[0]_i_5_n_0\
    );
\LRCLK_Cnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(1),
      O => \LRCLK_Cnt[0]_i_6_n_0\
    );
\LRCLK_Cnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => LRCLK_Cnt_reg(0),
      I1 => NextState1,
      O => \LRCLK_Cnt[0]_i_7_n_0\
    );
\LRCLK_Cnt[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(15),
      O => \LRCLK_Cnt[12]_i_2_n_0\
    );
\LRCLK_Cnt[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(14),
      O => \LRCLK_Cnt[12]_i_3_n_0\
    );
\LRCLK_Cnt[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(13),
      O => \LRCLK_Cnt[12]_i_4_n_0\
    );
\LRCLK_Cnt[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(12),
      O => \LRCLK_Cnt[12]_i_5_n_0\
    );
\LRCLK_Cnt[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(19),
      O => \LRCLK_Cnt[16]_i_2_n_0\
    );
\LRCLK_Cnt[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(18),
      O => \LRCLK_Cnt[16]_i_3_n_0\
    );
\LRCLK_Cnt[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(17),
      O => \LRCLK_Cnt[16]_i_4_n_0\
    );
\LRCLK_Cnt[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(16),
      O => \LRCLK_Cnt[16]_i_5_n_0\
    );
\LRCLK_Cnt[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(23),
      O => \LRCLK_Cnt[20]_i_2_n_0\
    );
\LRCLK_Cnt[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(22),
      O => \LRCLK_Cnt[20]_i_3_n_0\
    );
\LRCLK_Cnt[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(21),
      O => \LRCLK_Cnt[20]_i_4_n_0\
    );
\LRCLK_Cnt[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(20),
      O => \LRCLK_Cnt[20]_i_5_n_0\
    );
\LRCLK_Cnt[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(27),
      O => \LRCLK_Cnt[24]_i_2_n_0\
    );
\LRCLK_Cnt[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(26),
      O => \LRCLK_Cnt[24]_i_3_n_0\
    );
\LRCLK_Cnt[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(25),
      O => \LRCLK_Cnt[24]_i_4_n_0\
    );
\LRCLK_Cnt[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(24),
      O => \LRCLK_Cnt[24]_i_5_n_0\
    );
\LRCLK_Cnt[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(31),
      O => \LRCLK_Cnt[28]_i_2_n_0\
    );
\LRCLK_Cnt[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(30),
      O => \LRCLK_Cnt[28]_i_3_n_0\
    );
\LRCLK_Cnt[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(29),
      O => \LRCLK_Cnt[28]_i_4_n_0\
    );
\LRCLK_Cnt[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(28),
      O => \LRCLK_Cnt[28]_i_5_n_0\
    );
\LRCLK_Cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(7),
      O => \LRCLK_Cnt[4]_i_2_n_0\
    );
\LRCLK_Cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(6),
      O => \LRCLK_Cnt[4]_i_3_n_0\
    );
\LRCLK_Cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(5),
      O => \LRCLK_Cnt[4]_i_4_n_0\
    );
\LRCLK_Cnt[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(4),
      O => \LRCLK_Cnt[4]_i_5_n_0\
    );
\LRCLK_Cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(11),
      O => \LRCLK_Cnt[8]_i_2_n_0\
    );
\LRCLK_Cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(10),
      O => \LRCLK_Cnt[8]_i_3_n_0\
    );
\LRCLK_Cnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(9),
      O => \LRCLK_Cnt[8]_i_4_n_0\
    );
\LRCLK_Cnt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => NextState1,
      I1 => LRCLK_Cnt_reg(8),
      O => \LRCLK_Cnt[8]_i_5_n_0\
    );
\LRCLK_Cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[0]_i_2_n_7\,
      Q => LRCLK_Cnt_reg(0),
      R => '0'
    );
\LRCLK_Cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \LRCLK_Cnt_reg[0]_i_2_n_0\,
      CO(2) => \LRCLK_Cnt_reg[0]_i_2_n_1\,
      CO(1) => \LRCLK_Cnt_reg[0]_i_2_n_2\,
      CO(0) => \LRCLK_Cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => NextState1,
      O(3) => \LRCLK_Cnt_reg[0]_i_2_n_4\,
      O(2) => \LRCLK_Cnt_reg[0]_i_2_n_5\,
      O(1) => \LRCLK_Cnt_reg[0]_i_2_n_6\,
      O(0) => \LRCLK_Cnt_reg[0]_i_2_n_7\,
      S(3) => \LRCLK_Cnt[0]_i_4_n_0\,
      S(2) => \LRCLK_Cnt[0]_i_5_n_0\,
      S(1) => \LRCLK_Cnt[0]_i_6_n_0\,
      S(0) => \LRCLK_Cnt[0]_i_7_n_0\
    );
\LRCLK_Cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[8]_i_1_n_5\,
      Q => LRCLK_Cnt_reg(10),
      R => '0'
    );
\LRCLK_Cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[8]_i_1_n_4\,
      Q => LRCLK_Cnt_reg(11),
      R => '0'
    );
\LRCLK_Cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[12]_i_1_n_7\,
      Q => LRCLK_Cnt_reg(12),
      R => '0'
    );
\LRCLK_Cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \LRCLK_Cnt_reg[8]_i_1_n_0\,
      CO(3) => \LRCLK_Cnt_reg[12]_i_1_n_0\,
      CO(2) => \LRCLK_Cnt_reg[12]_i_1_n_1\,
      CO(1) => \LRCLK_Cnt_reg[12]_i_1_n_2\,
      CO(0) => \LRCLK_Cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \LRCLK_Cnt_reg[12]_i_1_n_4\,
      O(2) => \LRCLK_Cnt_reg[12]_i_1_n_5\,
      O(1) => \LRCLK_Cnt_reg[12]_i_1_n_6\,
      O(0) => \LRCLK_Cnt_reg[12]_i_1_n_7\,
      S(3) => \LRCLK_Cnt[12]_i_2_n_0\,
      S(2) => \LRCLK_Cnt[12]_i_3_n_0\,
      S(1) => \LRCLK_Cnt[12]_i_4_n_0\,
      S(0) => \LRCLK_Cnt[12]_i_5_n_0\
    );
\LRCLK_Cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[12]_i_1_n_6\,
      Q => LRCLK_Cnt_reg(13),
      R => '0'
    );
\LRCLK_Cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[12]_i_1_n_5\,
      Q => LRCLK_Cnt_reg(14),
      R => '0'
    );
\LRCLK_Cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[12]_i_1_n_4\,
      Q => LRCLK_Cnt_reg(15),
      R => '0'
    );
\LRCLK_Cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[16]_i_1_n_7\,
      Q => LRCLK_Cnt_reg(16),
      R => '0'
    );
\LRCLK_Cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \LRCLK_Cnt_reg[12]_i_1_n_0\,
      CO(3) => \LRCLK_Cnt_reg[16]_i_1_n_0\,
      CO(2) => \LRCLK_Cnt_reg[16]_i_1_n_1\,
      CO(1) => \LRCLK_Cnt_reg[16]_i_1_n_2\,
      CO(0) => \LRCLK_Cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \LRCLK_Cnt_reg[16]_i_1_n_4\,
      O(2) => \LRCLK_Cnt_reg[16]_i_1_n_5\,
      O(1) => \LRCLK_Cnt_reg[16]_i_1_n_6\,
      O(0) => \LRCLK_Cnt_reg[16]_i_1_n_7\,
      S(3) => \LRCLK_Cnt[16]_i_2_n_0\,
      S(2) => \LRCLK_Cnt[16]_i_3_n_0\,
      S(1) => \LRCLK_Cnt[16]_i_4_n_0\,
      S(0) => \LRCLK_Cnt[16]_i_5_n_0\
    );
\LRCLK_Cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[16]_i_1_n_6\,
      Q => LRCLK_Cnt_reg(17),
      R => '0'
    );
\LRCLK_Cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[16]_i_1_n_5\,
      Q => LRCLK_Cnt_reg(18),
      R => '0'
    );
\LRCLK_Cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[16]_i_1_n_4\,
      Q => LRCLK_Cnt_reg(19),
      R => '0'
    );
\LRCLK_Cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[0]_i_2_n_6\,
      Q => LRCLK_Cnt_reg(1),
      R => '0'
    );
\LRCLK_Cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[20]_i_1_n_7\,
      Q => LRCLK_Cnt_reg(20),
      R => '0'
    );
\LRCLK_Cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \LRCLK_Cnt_reg[16]_i_1_n_0\,
      CO(3) => \LRCLK_Cnt_reg[20]_i_1_n_0\,
      CO(2) => \LRCLK_Cnt_reg[20]_i_1_n_1\,
      CO(1) => \LRCLK_Cnt_reg[20]_i_1_n_2\,
      CO(0) => \LRCLK_Cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \LRCLK_Cnt_reg[20]_i_1_n_4\,
      O(2) => \LRCLK_Cnt_reg[20]_i_1_n_5\,
      O(1) => \LRCLK_Cnt_reg[20]_i_1_n_6\,
      O(0) => \LRCLK_Cnt_reg[20]_i_1_n_7\,
      S(3) => \LRCLK_Cnt[20]_i_2_n_0\,
      S(2) => \LRCLK_Cnt[20]_i_3_n_0\,
      S(1) => \LRCLK_Cnt[20]_i_4_n_0\,
      S(0) => \LRCLK_Cnt[20]_i_5_n_0\
    );
\LRCLK_Cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[20]_i_1_n_6\,
      Q => LRCLK_Cnt_reg(21),
      R => '0'
    );
\LRCLK_Cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[20]_i_1_n_5\,
      Q => LRCLK_Cnt_reg(22),
      R => '0'
    );
\LRCLK_Cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[20]_i_1_n_4\,
      Q => LRCLK_Cnt_reg(23),
      R => '0'
    );
\LRCLK_Cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[24]_i_1_n_7\,
      Q => LRCLK_Cnt_reg(24),
      R => '0'
    );
\LRCLK_Cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \LRCLK_Cnt_reg[20]_i_1_n_0\,
      CO(3) => \LRCLK_Cnt_reg[24]_i_1_n_0\,
      CO(2) => \LRCLK_Cnt_reg[24]_i_1_n_1\,
      CO(1) => \LRCLK_Cnt_reg[24]_i_1_n_2\,
      CO(0) => \LRCLK_Cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \LRCLK_Cnt_reg[24]_i_1_n_4\,
      O(2) => \LRCLK_Cnt_reg[24]_i_1_n_5\,
      O(1) => \LRCLK_Cnt_reg[24]_i_1_n_6\,
      O(0) => \LRCLK_Cnt_reg[24]_i_1_n_7\,
      S(3) => \LRCLK_Cnt[24]_i_2_n_0\,
      S(2) => \LRCLK_Cnt[24]_i_3_n_0\,
      S(1) => \LRCLK_Cnt[24]_i_4_n_0\,
      S(0) => \LRCLK_Cnt[24]_i_5_n_0\
    );
\LRCLK_Cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[24]_i_1_n_6\,
      Q => LRCLK_Cnt_reg(25),
      R => '0'
    );
\LRCLK_Cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[24]_i_1_n_5\,
      Q => LRCLK_Cnt_reg(26),
      R => '0'
    );
\LRCLK_Cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[24]_i_1_n_4\,
      Q => LRCLK_Cnt_reg(27),
      R => '0'
    );
\LRCLK_Cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[28]_i_1_n_7\,
      Q => LRCLK_Cnt_reg(28),
      R => '0'
    );
\LRCLK_Cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \LRCLK_Cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_LRCLK_Cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \LRCLK_Cnt_reg[28]_i_1_n_1\,
      CO(1) => \LRCLK_Cnt_reg[28]_i_1_n_2\,
      CO(0) => \LRCLK_Cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \LRCLK_Cnt_reg[28]_i_1_n_4\,
      O(2) => \LRCLK_Cnt_reg[28]_i_1_n_5\,
      O(1) => \LRCLK_Cnt_reg[28]_i_1_n_6\,
      O(0) => \LRCLK_Cnt_reg[28]_i_1_n_7\,
      S(3) => \LRCLK_Cnt[28]_i_2_n_0\,
      S(2) => \LRCLK_Cnt[28]_i_3_n_0\,
      S(1) => \LRCLK_Cnt[28]_i_4_n_0\,
      S(0) => \LRCLK_Cnt[28]_i_5_n_0\
    );
\LRCLK_Cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[28]_i_1_n_6\,
      Q => LRCLK_Cnt_reg(29),
      R => '0'
    );
\LRCLK_Cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[0]_i_2_n_5\,
      Q => LRCLK_Cnt_reg(2),
      R => '0'
    );
\LRCLK_Cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[28]_i_1_n_5\,
      Q => LRCLK_Cnt_reg(30),
      R => '0'
    );
\LRCLK_Cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[28]_i_1_n_4\,
      Q => LRCLK_Cnt_reg(31),
      R => '0'
    );
\LRCLK_Cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[0]_i_2_n_4\,
      Q => LRCLK_Cnt_reg(3),
      R => '0'
    );
\LRCLK_Cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[4]_i_1_n_7\,
      Q => LRCLK_Cnt_reg(4),
      R => '0'
    );
\LRCLK_Cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \LRCLK_Cnt_reg[0]_i_2_n_0\,
      CO(3) => \LRCLK_Cnt_reg[4]_i_1_n_0\,
      CO(2) => \LRCLK_Cnt_reg[4]_i_1_n_1\,
      CO(1) => \LRCLK_Cnt_reg[4]_i_1_n_2\,
      CO(0) => \LRCLK_Cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \LRCLK_Cnt_reg[4]_i_1_n_4\,
      O(2) => \LRCLK_Cnt_reg[4]_i_1_n_5\,
      O(1) => \LRCLK_Cnt_reg[4]_i_1_n_6\,
      O(0) => \LRCLK_Cnt_reg[4]_i_1_n_7\,
      S(3) => \LRCLK_Cnt[4]_i_2_n_0\,
      S(2) => \LRCLK_Cnt[4]_i_3_n_0\,
      S(1) => \LRCLK_Cnt[4]_i_4_n_0\,
      S(0) => \LRCLK_Cnt[4]_i_5_n_0\
    );
\LRCLK_Cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[4]_i_1_n_6\,
      Q => LRCLK_Cnt_reg(5),
      R => '0'
    );
\LRCLK_Cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[4]_i_1_n_5\,
      Q => LRCLK_Cnt_reg(6),
      R => '0'
    );
\LRCLK_Cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[4]_i_1_n_4\,
      Q => LRCLK_Cnt_reg(7),
      R => '0'
    );
\LRCLK_Cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[8]_i_1_n_7\,
      Q => LRCLK_Cnt_reg(8),
      R => '0'
    );
\LRCLK_Cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \LRCLK_Cnt_reg[4]_i_1_n_0\,
      CO(3) => \LRCLK_Cnt_reg[8]_i_1_n_0\,
      CO(2) => \LRCLK_Cnt_reg[8]_i_1_n_1\,
      CO(1) => \LRCLK_Cnt_reg[8]_i_1_n_2\,
      CO(0) => \LRCLK_Cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \LRCLK_Cnt_reg[8]_i_1_n_4\,
      O(2) => \LRCLK_Cnt_reg[8]_i_1_n_5\,
      O(1) => \LRCLK_Cnt_reg[8]_i_1_n_6\,
      O(0) => \LRCLK_Cnt_reg[8]_i_1_n_7\,
      S(3) => \LRCLK_Cnt[8]_i_2_n_0\,
      S(2) => \LRCLK_Cnt[8]_i_3_n_0\,
      S(1) => \LRCLK_Cnt[8]_i_4_n_0\,
      S(0) => \LRCLK_Cnt[8]_i_5_n_0\
    );
\LRCLK_Cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock_Int_reg,
      CE => LRCLK_Cnt,
      D => \LRCLK_Cnt_reg[8]_i_1_n_6\,
      Q => LRCLK_Cnt_reg(9),
      R => '0'
    );
LRCLK_Int_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => LRCLK_Int_reg_i_2_n_0,
      D => '1',
      G => LRCLK_Int_reg_i_1_n_0,
      GE => '1',
      Q => LRCLK_OBUF
    );
LRCLK_Int_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I1 => \FSM_onehot_NextState_reg_n_0_[2]\,
      O => LRCLK_Int_reg_i_1_n_0
    );
LRCLK_Int_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_NextState_reg_n_0_[0]\,
      I1 => LRCLK_Int,
      O => LRCLK_Int_reg_i_2_n_0
    );
NextState1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NextState1_carry_n_0,
      CO(2) => NextState1_carry_n_1,
      CO(1) => NextState1_carry_n_2,
      CO(0) => NextState1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => NextState1_carry_i_1_n_0,
      DI(1) => NextState1_carry_i_2_n_0,
      DI(0) => NextState1_carry_i_3_n_0,
      O(3 downto 0) => NLW_NextState1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => NextState1_carry_i_4_n_0,
      S(2) => NextState1_carry_i_5_n_0,
      S(1) => NextState1_carry_i_6_n_0,
      S(0) => NextState1_carry_i_7_n_0
    );
\NextState1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => NextState1_carry_n_0,
      CO(3) => \NextState1_carry__0_n_0\,
      CO(2) => \NextState1_carry__0_n_1\,
      CO(1) => \NextState1_carry__0_n_2\,
      CO(0) => \NextState1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_NextState1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \NextState1_carry__0_i_1_n_0\,
      S(2) => \NextState1_carry__0_i_2_n_0\,
      S(1) => \NextState1_carry__0_i_3_n_0\,
      S(0) => \NextState1_carry__0_i_4_n_0\
    );
\NextState1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(14),
      I1 => LRCLK_Cnt_reg(15),
      O => \NextState1_carry__0_i_1_n_0\
    );
\NextState1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(12),
      I1 => LRCLK_Cnt_reg(13),
      O => \NextState1_carry__0_i_2_n_0\
    );
\NextState1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(10),
      I1 => LRCLK_Cnt_reg(11),
      O => \NextState1_carry__0_i_3_n_0\
    );
\NextState1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(8),
      I1 => LRCLK_Cnt_reg(9),
      O => \NextState1_carry__0_i_4_n_0\
    );
\NextState1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \NextState1_carry__0_n_0\,
      CO(3) => \NextState1_carry__1_n_0\,
      CO(2) => \NextState1_carry__1_n_1\,
      CO(1) => \NextState1_carry__1_n_2\,
      CO(0) => \NextState1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_NextState1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \NextState1_carry__1_i_1_n_0\,
      S(2) => \NextState1_carry__1_i_2_n_0\,
      S(1) => \NextState1_carry__1_i_3_n_0\,
      S(0) => \NextState1_carry__1_i_4_n_0\
    );
\NextState1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(22),
      I1 => LRCLK_Cnt_reg(23),
      O => \NextState1_carry__1_i_1_n_0\
    );
\NextState1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(20),
      I1 => LRCLK_Cnt_reg(21),
      O => \NextState1_carry__1_i_2_n_0\
    );
\NextState1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(18),
      I1 => LRCLK_Cnt_reg(19),
      O => \NextState1_carry__1_i_3_n_0\
    );
\NextState1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(16),
      I1 => LRCLK_Cnt_reg(17),
      O => \NextState1_carry__1_i_4_n_0\
    );
\NextState1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \NextState1_carry__1_n_0\,
      CO(3) => NextState1,
      CO(2) => \NextState1_carry__2_n_1\,
      CO(1) => \NextState1_carry__2_n_2\,
      CO(0) => \NextState1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => LRCLK_Cnt_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_NextState1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \NextState1_carry__2_i_1_n_0\,
      S(2) => \NextState1_carry__2_i_2_n_0\,
      S(1) => \NextState1_carry__2_i_3_n_0\,
      S(0) => \NextState1_carry__2_i_4_n_0\
    );
\NextState1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(30),
      I1 => LRCLK_Cnt_reg(31),
      O => \NextState1_carry__2_i_1_n_0\
    );
\NextState1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(28),
      I1 => LRCLK_Cnt_reg(29),
      O => \NextState1_carry__2_i_2_n_0\
    );
\NextState1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(26),
      I1 => LRCLK_Cnt_reg(27),
      O => \NextState1_carry__2_i_3_n_0\
    );
\NextState1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(24),
      I1 => LRCLK_Cnt_reg(25),
      O => \NextState1_carry__2_i_4_n_0\
    );
NextState1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(4),
      I1 => LRCLK_Cnt_reg(5),
      O => NextState1_carry_i_1_n_0
    );
NextState1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(2),
      I1 => LRCLK_Cnt_reg(3),
      O => NextState1_carry_i_2_n_0
    );
NextState1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(1),
      O => NextState1_carry_i_3_n_0
    );
NextState1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LRCLK_Cnt_reg(6),
      I1 => LRCLK_Cnt_reg(7),
      O => NextState1_carry_i_4_n_0
    );
NextState1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => LRCLK_Cnt_reg(4),
      I1 => LRCLK_Cnt_reg(5),
      O => NextState1_carry_i_5_n_0
    );
NextState1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => LRCLK_Cnt_reg(2),
      I1 => LRCLK_Cnt_reg(3),
      O => NextState1_carry_i_6_n_0
    );
NextState1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => LRCLK_Cnt_reg(1),
      I1 => LRCLK_Cnt_reg(0),
      O => NextState1_carry_i_7_n_0
    );
SCLK_Int_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_NextState_reg_n_0_[0]\,
      D => '1',
      G => LRCLK_Int,
      GE => '1',
      Q => SCLK_Int
    );
SCLK_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SCLK_Int,
      I1 => Clock_Int_reg_0,
      O => SCLK_OBUF
    );
SD_Int_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ShiftRegister(23),
      G => SD_Int_reg_i_1_n_0,
      GE => '1',
      Q => SD_OBUF
    );
SD_Int_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002322"
    )
        port map (
      I0 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I1 => LRCLK_Int,
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[4]\,
      I4 => \FSM_onehot_NextState_reg_n_0_[0]\,
      O => SD_Int_reg_i_1_n_0
    );
\ShiftRegister_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[0]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(0)
    );
\ShiftRegister_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => LRCLK_Int,
      I1 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => DataOut(0),
      O => \ShiftRegister_reg[0]_i_1_n_0\
    );
\ShiftRegister_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[10]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(10)
    );
\ShiftRegister_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(10),
      I1 => ShiftRegister(9),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[10]_i_1_n_0\
    );
\ShiftRegister_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[11]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(11)
    );
\ShiftRegister_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(11),
      I1 => ShiftRegister(10),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[11]_i_1_n_0\
    );
\ShiftRegister_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[12]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(12)
    );
\ShiftRegister_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(12),
      I1 => ShiftRegister(11),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[12]_i_1_n_0\
    );
\ShiftRegister_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[13]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(13)
    );
\ShiftRegister_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(13),
      I1 => ShiftRegister(12),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[13]_i_1_n_0\
    );
\ShiftRegister_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[14]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(14)
    );
\ShiftRegister_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(14),
      I1 => ShiftRegister(13),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[14]_i_1_n_0\
    );
\ShiftRegister_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[15]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(15)
    );
\ShiftRegister_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(15),
      I1 => ShiftRegister(14),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[15]_i_1_n_0\
    );
\ShiftRegister_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[16]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(16)
    );
\ShiftRegister_reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(16),
      I1 => ShiftRegister(15),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[16]_i_1_n_0\
    );
\ShiftRegister_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[17]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(17)
    );
\ShiftRegister_reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(17),
      I1 => ShiftRegister(16),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[17]_i_1_n_0\
    );
\ShiftRegister_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[18]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(18)
    );
\ShiftRegister_reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(18),
      I1 => ShiftRegister(17),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[18]_i_1_n_0\
    );
\ShiftRegister_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[19]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(19)
    );
\ShiftRegister_reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(19),
      I1 => ShiftRegister(18),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[19]_i_1_n_0\
    );
\ShiftRegister_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[1]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(1)
    );
\ShiftRegister_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(1),
      I1 => ShiftRegister(0),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[1]_i_1_n_0\
    );
\ShiftRegister_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[20]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(20)
    );
\ShiftRegister_reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(20),
      I1 => ShiftRegister(19),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[20]_i_1_n_0\
    );
\ShiftRegister_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[21]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(21)
    );
\ShiftRegister_reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(21),
      I1 => ShiftRegister(20),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[21]_i_1_n_0\
    );
\ShiftRegister_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[22]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(22)
    );
\ShiftRegister_reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(22),
      I1 => ShiftRegister(21),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[22]_i_1_n_0\
    );
\ShiftRegister_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[23]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(23)
    );
\ShiftRegister_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(23),
      I1 => ShiftRegister(22),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[23]_i_1_n_0\
    );
\ShiftRegister_reg[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F0E"
    )
        port map (
      I0 => LRCLK_Int,
      I1 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I2 => \FSM_onehot_NextState_reg_n_0_[0]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => \FSM_onehot_NextState_reg_n_0_[4]\,
      O => \ShiftRegister_reg[23]_i_2_n_0\
    );
\ShiftRegister_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[2]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(2)
    );
\ShiftRegister_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(2),
      I1 => ShiftRegister(1),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[2]_i_1_n_0\
    );
\ShiftRegister_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[3]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(3)
    );
\ShiftRegister_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(3),
      I1 => ShiftRegister(2),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[3]_i_1_n_0\
    );
\ShiftRegister_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[4]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(4)
    );
\ShiftRegister_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(4),
      I1 => ShiftRegister(3),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[4]_i_1_n_0\
    );
\ShiftRegister_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[5]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(5)
    );
\ShiftRegister_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(5),
      I1 => ShiftRegister(4),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[5]_i_1_n_0\
    );
\ShiftRegister_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[6]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(6)
    );
\ShiftRegister_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(6),
      I1 => ShiftRegister(5),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[6]_i_1_n_0\
    );
\ShiftRegister_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[7]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(7)
    );
\ShiftRegister_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(7),
      I1 => ShiftRegister(6),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[7]_i_1_n_0\
    );
\ShiftRegister_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[8]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(8)
    );
\ShiftRegister_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(8),
      I1 => ShiftRegister(7),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[8]_i_1_n_0\
    );
\ShiftRegister_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ShiftRegister_reg[9]_i_1_n_0\,
      G => \ShiftRegister_reg[23]_i_2_n_0\,
      GE => '1',
      Q => ShiftRegister(9)
    );
\ShiftRegister_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCAC"
    )
        port map (
      I0 => DataOut(9),
      I1 => ShiftRegister(8),
      I2 => \FSM_onehot_NextState_reg_n_0_[3]\,
      I3 => \FSM_onehot_NextState_reg_n_0_[2]\,
      I4 => LRCLK_Int,
      O => \ShiftRegister_reg[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init is
  port (
    douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"000000000000000000000000000000000000001C2858220D0A18F5E9F77CBD78",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"02BCFABBFDBFFFBFFDBBFABC02D12A128DA04E9F973C95AA7F1E8DD5FC0A0900",
      INIT_01 => X"B16068C36A5580E1722A03F5F600090AFCD58D1E7FAA953C979F4EA08D122AD1",
      INIT_02 => X"72E180556AC36860B15F72EDD52EFD4305440240004002440543FD2ED5ED725F",
      INIT_03 => X"000000000000000000000000000000000000000000000000000000FFF6F5032A",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => addra(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 8),
      DOADO(7 downto 0) => douta(7 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1),
      DOPADOP(0) => douta(8),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 14 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_20\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00730071006E006B006800650062005E005B00570053004F004B004800440040",
      INIT_01 => X"007B007C007D007E007F007F007F007F007F007E007D007C007B007900780076",
      INIT_02 => X"004B004F00530057005B005E006200650068006B006E00710073007600780079",
      INIT_03 => X"001100140017001A001D002100240028002C003000340037003B004000440048",
      INIT_04 => X"00020001000000000000000000000001000200030004000600070009000C000E",
      INIT_05 => X"002C002800240021001D001A001700140011000E000C00090007000600040003",
      INIT_06 => X"00000000000000000000000000000000000000000000003F003B003700340030",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 16) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 16),
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_20\,
      DOADO(14 downto 0) => douta(14 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 2),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
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
    Clock : out STD_LOGIC;
    SCLK_OBUF : out STD_LOGIC;
    Clock_Int_reg_0 : in STD_LOGIC;
    MCLK_OBUF_BUFG : in STD_LOGIC;
    ResetN_IBUF : in STD_LOGIC;
    DataOut : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end I2S;

architecture STRUCTURE of I2S is
  signal \^clock\ : STD_LOGIC;
  signal Clock_Int_i_1_n_0 : STD_LOGIC;
  signal MCLK_Cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \MCLK_Cnt[31]_i_10_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_11_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal MCLK_Cnt_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \MCLK_Cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[31]_i_7_n_2\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[31]_i_7_n_3\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[31]_i_7_n_5\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[31]_i_7_n_6\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[31]_i_7_n_7\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \NLW_MCLK_Cnt_reg[31]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_MCLK_Cnt_reg[31]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  Clock <= \^clock\;
Clock_Int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00010000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_6_n_0\,
      I1 => \MCLK_Cnt[31]_i_5_n_0\,
      I2 => \MCLK_Cnt[31]_i_4_n_0\,
      I3 => \MCLK_Cnt[31]_i_3_n_0\,
      I4 => ResetN_IBUF,
      I5 => \^clock\,
      O => Clock_Int_i_1_n_0
    );
Clock_Int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => Clock_Int_i_1_n_0,
      Q => \^clock\,
      R => '0'
    );
\MCLK_Cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MCLK_Cnt(0),
      O => MCLK_Cnt_0(0)
    );
\MCLK_Cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[12]_i_2_n_6\,
      O => MCLK_Cnt_0(10)
    );
\MCLK_Cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[12]_i_2_n_5\,
      O => MCLK_Cnt_0(11)
    );
\MCLK_Cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[12]_i_2_n_4\,
      O => MCLK_Cnt_0(12)
    );
\MCLK_Cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[16]_i_2_n_7\,
      O => MCLK_Cnt_0(13)
    );
\MCLK_Cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[16]_i_2_n_6\,
      O => MCLK_Cnt_0(14)
    );
\MCLK_Cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[16]_i_2_n_5\,
      O => MCLK_Cnt_0(15)
    );
\MCLK_Cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[16]_i_2_n_4\,
      O => MCLK_Cnt_0(16)
    );
\MCLK_Cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[20]_i_2_n_7\,
      O => MCLK_Cnt_0(17)
    );
\MCLK_Cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[20]_i_2_n_6\,
      O => MCLK_Cnt_0(18)
    );
\MCLK_Cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[20]_i_2_n_5\,
      O => MCLK_Cnt_0(19)
    );
\MCLK_Cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[4]_i_2_n_7\,
      O => MCLK_Cnt_0(1)
    );
\MCLK_Cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[20]_i_2_n_4\,
      O => MCLK_Cnt_0(20)
    );
\MCLK_Cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[24]_i_2_n_7\,
      O => MCLK_Cnt_0(21)
    );
\MCLK_Cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[24]_i_2_n_6\,
      O => MCLK_Cnt_0(22)
    );
\MCLK_Cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[24]_i_2_n_5\,
      O => MCLK_Cnt_0(23)
    );
\MCLK_Cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[24]_i_2_n_4\,
      O => MCLK_Cnt_0(24)
    );
\MCLK_Cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[28]_i_2_n_7\,
      O => MCLK_Cnt_0(25)
    );
\MCLK_Cnt[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[28]_i_2_n_6\,
      O => MCLK_Cnt_0(26)
    );
\MCLK_Cnt[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[28]_i_2_n_5\,
      O => MCLK_Cnt_0(27)
    );
\MCLK_Cnt[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[28]_i_2_n_4\,
      O => MCLK_Cnt_0(28)
    );
\MCLK_Cnt[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[31]_i_7_n_7\,
      O => MCLK_Cnt_0(29)
    );
\MCLK_Cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[4]_i_2_n_6\,
      O => MCLK_Cnt_0(2)
    );
\MCLK_Cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[31]_i_7_n_6\,
      O => MCLK_Cnt_0(30)
    );
\MCLK_Cnt[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ResetN_IBUF,
      O => p_0_in
    );
\MCLK_Cnt[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(5),
      I1 => MCLK_Cnt(4),
      I2 => MCLK_Cnt(7),
      I3 => MCLK_Cnt(6),
      O => \MCLK_Cnt[31]_i_10_n_0\
    );
\MCLK_Cnt[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(13),
      I1 => MCLK_Cnt(12),
      I2 => MCLK_Cnt(15),
      I3 => MCLK_Cnt(14),
      O => \MCLK_Cnt[31]_i_11_n_0\
    );
\MCLK_Cnt[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[31]_i_7_n_5\,
      O => MCLK_Cnt_0(31)
    );
\MCLK_Cnt[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => MCLK_Cnt(18),
      I1 => MCLK_Cnt(19),
      I2 => MCLK_Cnt(16),
      I3 => MCLK_Cnt(17),
      I4 => \MCLK_Cnt[31]_i_8_n_0\,
      O => \MCLK_Cnt[31]_i_3_n_0\
    );
\MCLK_Cnt[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => MCLK_Cnt(26),
      I1 => MCLK_Cnt(27),
      I2 => MCLK_Cnt(24),
      I3 => MCLK_Cnt(25),
      I4 => \MCLK_Cnt[31]_i_9_n_0\,
      O => \MCLK_Cnt[31]_i_4_n_0\
    );
\MCLK_Cnt[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => MCLK_Cnt(2),
      I1 => MCLK_Cnt(3),
      I2 => MCLK_Cnt(0),
      I3 => MCLK_Cnt(1),
      I4 => \MCLK_Cnt[31]_i_10_n_0\,
      O => \MCLK_Cnt[31]_i_5_n_0\
    );
\MCLK_Cnt[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => MCLK_Cnt(10),
      I1 => MCLK_Cnt(11),
      I2 => MCLK_Cnt(8),
      I3 => MCLK_Cnt(9),
      I4 => \MCLK_Cnt[31]_i_11_n_0\,
      O => \MCLK_Cnt[31]_i_6_n_0\
    );
\MCLK_Cnt[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(21),
      I1 => MCLK_Cnt(20),
      I2 => MCLK_Cnt(23),
      I3 => MCLK_Cnt(22),
      O => \MCLK_Cnt[31]_i_8_n_0\
    );
\MCLK_Cnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(29),
      I1 => MCLK_Cnt(28),
      I2 => MCLK_Cnt(31),
      I3 => MCLK_Cnt(30),
      O => \MCLK_Cnt[31]_i_9_n_0\
    );
\MCLK_Cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[4]_i_2_n_5\,
      O => MCLK_Cnt_0(3)
    );
\MCLK_Cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[4]_i_2_n_4\,
      O => MCLK_Cnt_0(4)
    );
\MCLK_Cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[8]_i_2_n_7\,
      O => MCLK_Cnt_0(5)
    );
\MCLK_Cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[8]_i_2_n_6\,
      O => MCLK_Cnt_0(6)
    );
\MCLK_Cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[8]_i_2_n_5\,
      O => MCLK_Cnt_0(7)
    );
\MCLK_Cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[8]_i_2_n_4\,
      O => MCLK_Cnt_0(8)
    );
\MCLK_Cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_3_n_0\,
      I1 => \MCLK_Cnt[31]_i_4_n_0\,
      I2 => \MCLK_Cnt[31]_i_5_n_0\,
      I3 => \MCLK_Cnt[31]_i_6_n_0\,
      I4 => \MCLK_Cnt_reg[12]_i_2_n_7\,
      O => MCLK_Cnt_0(9)
    );
\MCLK_Cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(0),
      Q => MCLK_Cnt(0),
      R => p_0_in
    );
\MCLK_Cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(10),
      Q => MCLK_Cnt(10),
      R => p_0_in
    );
\MCLK_Cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(11),
      Q => MCLK_Cnt(11),
      R => p_0_in
    );
\MCLK_Cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(12),
      Q => MCLK_Cnt(12),
      R => p_0_in
    );
\MCLK_Cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[8]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[12]_i_2_n_0\,
      CO(2) => \MCLK_Cnt_reg[12]_i_2_n_1\,
      CO(1) => \MCLK_Cnt_reg[12]_i_2_n_2\,
      CO(0) => \MCLK_Cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \MCLK_Cnt_reg[12]_i_2_n_4\,
      O(2) => \MCLK_Cnt_reg[12]_i_2_n_5\,
      O(1) => \MCLK_Cnt_reg[12]_i_2_n_6\,
      O(0) => \MCLK_Cnt_reg[12]_i_2_n_7\,
      S(3 downto 0) => MCLK_Cnt(12 downto 9)
    );
\MCLK_Cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(13),
      Q => MCLK_Cnt(13),
      R => p_0_in
    );
\MCLK_Cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(14),
      Q => MCLK_Cnt(14),
      R => p_0_in
    );
\MCLK_Cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(15),
      Q => MCLK_Cnt(15),
      R => p_0_in
    );
\MCLK_Cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(16),
      Q => MCLK_Cnt(16),
      R => p_0_in
    );
\MCLK_Cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[12]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[16]_i_2_n_0\,
      CO(2) => \MCLK_Cnt_reg[16]_i_2_n_1\,
      CO(1) => \MCLK_Cnt_reg[16]_i_2_n_2\,
      CO(0) => \MCLK_Cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \MCLK_Cnt_reg[16]_i_2_n_4\,
      O(2) => \MCLK_Cnt_reg[16]_i_2_n_5\,
      O(1) => \MCLK_Cnt_reg[16]_i_2_n_6\,
      O(0) => \MCLK_Cnt_reg[16]_i_2_n_7\,
      S(3 downto 0) => MCLK_Cnt(16 downto 13)
    );
\MCLK_Cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(17),
      Q => MCLK_Cnt(17),
      R => p_0_in
    );
\MCLK_Cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(18),
      Q => MCLK_Cnt(18),
      R => p_0_in
    );
\MCLK_Cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(19),
      Q => MCLK_Cnt(19),
      R => p_0_in
    );
\MCLK_Cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(1),
      Q => MCLK_Cnt(1),
      R => p_0_in
    );
\MCLK_Cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(20),
      Q => MCLK_Cnt(20),
      R => p_0_in
    );
\MCLK_Cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[16]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[20]_i_2_n_0\,
      CO(2) => \MCLK_Cnt_reg[20]_i_2_n_1\,
      CO(1) => \MCLK_Cnt_reg[20]_i_2_n_2\,
      CO(0) => \MCLK_Cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \MCLK_Cnt_reg[20]_i_2_n_4\,
      O(2) => \MCLK_Cnt_reg[20]_i_2_n_5\,
      O(1) => \MCLK_Cnt_reg[20]_i_2_n_6\,
      O(0) => \MCLK_Cnt_reg[20]_i_2_n_7\,
      S(3 downto 0) => MCLK_Cnt(20 downto 17)
    );
\MCLK_Cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(21),
      Q => MCLK_Cnt(21),
      R => p_0_in
    );
\MCLK_Cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(22),
      Q => MCLK_Cnt(22),
      R => p_0_in
    );
\MCLK_Cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(23),
      Q => MCLK_Cnt(23),
      R => p_0_in
    );
\MCLK_Cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(24),
      Q => MCLK_Cnt(24),
      R => p_0_in
    );
\MCLK_Cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[20]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[24]_i_2_n_0\,
      CO(2) => \MCLK_Cnt_reg[24]_i_2_n_1\,
      CO(1) => \MCLK_Cnt_reg[24]_i_2_n_2\,
      CO(0) => \MCLK_Cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \MCLK_Cnt_reg[24]_i_2_n_4\,
      O(2) => \MCLK_Cnt_reg[24]_i_2_n_5\,
      O(1) => \MCLK_Cnt_reg[24]_i_2_n_6\,
      O(0) => \MCLK_Cnt_reg[24]_i_2_n_7\,
      S(3 downto 0) => MCLK_Cnt(24 downto 21)
    );
\MCLK_Cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(25),
      Q => MCLK_Cnt(25),
      R => p_0_in
    );
\MCLK_Cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(26),
      Q => MCLK_Cnt(26),
      R => p_0_in
    );
\MCLK_Cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(27),
      Q => MCLK_Cnt(27),
      R => p_0_in
    );
\MCLK_Cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(28),
      Q => MCLK_Cnt(28),
      R => p_0_in
    );
\MCLK_Cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[24]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[28]_i_2_n_0\,
      CO(2) => \MCLK_Cnt_reg[28]_i_2_n_1\,
      CO(1) => \MCLK_Cnt_reg[28]_i_2_n_2\,
      CO(0) => \MCLK_Cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \MCLK_Cnt_reg[28]_i_2_n_4\,
      O(2) => \MCLK_Cnt_reg[28]_i_2_n_5\,
      O(1) => \MCLK_Cnt_reg[28]_i_2_n_6\,
      O(0) => \MCLK_Cnt_reg[28]_i_2_n_7\,
      S(3 downto 0) => MCLK_Cnt(28 downto 25)
    );
\MCLK_Cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(29),
      Q => MCLK_Cnt(29),
      R => p_0_in
    );
\MCLK_Cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(2),
      Q => MCLK_Cnt(2),
      R => p_0_in
    );
\MCLK_Cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(30),
      Q => MCLK_Cnt(30),
      R => p_0_in
    );
\MCLK_Cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(31),
      Q => MCLK_Cnt(31),
      R => p_0_in
    );
\MCLK_Cnt_reg[31]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_MCLK_Cnt_reg[31]_i_7_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \MCLK_Cnt_reg[31]_i_7_n_2\,
      CO(0) => \MCLK_Cnt_reg[31]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_MCLK_Cnt_reg[31]_i_7_O_UNCONNECTED\(3),
      O(2) => \MCLK_Cnt_reg[31]_i_7_n_5\,
      O(1) => \MCLK_Cnt_reg[31]_i_7_n_6\,
      O(0) => \MCLK_Cnt_reg[31]_i_7_n_7\,
      S(3) => '0',
      S(2 downto 0) => MCLK_Cnt(31 downto 29)
    );
\MCLK_Cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(3),
      Q => MCLK_Cnt(3),
      R => p_0_in
    );
\MCLK_Cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(4),
      Q => MCLK_Cnt(4),
      R => p_0_in
    );
\MCLK_Cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \MCLK_Cnt_reg[4]_i_2_n_0\,
      CO(2) => \MCLK_Cnt_reg[4]_i_2_n_1\,
      CO(1) => \MCLK_Cnt_reg[4]_i_2_n_2\,
      CO(0) => \MCLK_Cnt_reg[4]_i_2_n_3\,
      CYINIT => MCLK_Cnt(0),
      DI(3 downto 0) => B"0000",
      O(3) => \MCLK_Cnt_reg[4]_i_2_n_4\,
      O(2) => \MCLK_Cnt_reg[4]_i_2_n_5\,
      O(1) => \MCLK_Cnt_reg[4]_i_2_n_6\,
      O(0) => \MCLK_Cnt_reg[4]_i_2_n_7\,
      S(3 downto 0) => MCLK_Cnt(4 downto 1)
    );
\MCLK_Cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(5),
      Q => MCLK_Cnt(5),
      R => p_0_in
    );
\MCLK_Cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(6),
      Q => MCLK_Cnt(6),
      R => p_0_in
    );
\MCLK_Cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(7),
      Q => MCLK_Cnt(7),
      R => p_0_in
    );
\MCLK_Cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(8),
      Q => MCLK_Cnt(8),
      R => p_0_in
    );
\MCLK_Cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[4]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[8]_i_2_n_0\,
      CO(2) => \MCLK_Cnt_reg[8]_i_2_n_1\,
      CO(1) => \MCLK_Cnt_reg[8]_i_2_n_2\,
      CO(0) => \MCLK_Cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \MCLK_Cnt_reg[8]_i_2_n_4\,
      O(2) => \MCLK_Cnt_reg[8]_i_2_n_5\,
      O(1) => \MCLK_Cnt_reg[8]_i_2_n_6\,
      O(0) => \MCLK_Cnt_reg[8]_i_2_n_7\,
      S(3 downto 0) => MCLK_Cnt(8 downto 5)
    );
\MCLK_Cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => MCLK_Cnt_0(9),
      Q => MCLK_Cnt(9),
      R => p_0_in
    );
Transmitter: entity work.I2S_Transmitter
     port map (
      Clock_Int_reg => Clock_Int_reg_0,
      Clock_Int_reg_0 => \^clock\,
      DataOut(23 downto 0) => DataOut(23 downto 0),
      LRCLK_OBUF => LRCLK_OBUF,
      ResetN_IBUF => ResetN_IBUF,
      SCLK_OBUF => SCLK_OBUF,
      SD_OBUF => SD_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width;

architecture STRUCTURE of DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(8 downto 0) => douta(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 14 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(14 downto 0) => douta(14 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM_blk_mem_gen_0_0_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DataROM_blk_mem_gen_0_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end DataROM_blk_mem_gen_0_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of DataROM_blk_mem_gen_0_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(8 downto 0) => douta(8 downto 0)
    );
\ramloop[1].ram.r\: entity work.\DataROM_blk_mem_gen_0_0_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(14 downto 0) => douta(23 downto 9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM_blk_mem_gen_0_0_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DataROM_blk_mem_gen_0_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end DataROM_blk_mem_gen_0_0_blk_mem_gen_top;

architecture STRUCTURE of DataROM_blk_mem_gen_0_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.DataROM_blk_mem_gen_0_0_blk_mem_gen_generic_cstr
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(23 downto 0) => douta(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth : entity is "blk_mem_gen_v8_4_1_synth";
end DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.DataROM_blk_mem_gen_0_0_blk_mem_gen_top
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(23 downto 0) => douta(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 23 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 10 downto 0 );
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
    s_axi_wdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
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
    s_axi_rdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 11;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 11;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     3.66155 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "DataROM_blk_mem_gen_0_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 2048;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 2048;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 24;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 24;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 2048;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 2048;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 24;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is 24;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_v8_4_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 : entity is "yes";
end DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1;

architecture STRUCTURE of DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1_synth
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(23 downto 0) => douta(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DataROM_blk_mem_gen_0_0 : entity is "DataROM_blk_mem_gen_0_0,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DataROM_blk_mem_gen_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of DataROM_blk_mem_gen_0_0 : entity is "blk_mem_gen_v8_4_1,Vivado 2018.2";
end DataROM_blk_mem_gen_0_0;

architecture STRUCTURE of DataROM_blk_mem_gen_0_0 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 11;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 11;
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
  attribute C_COUNT_36K_BRAM of U0 : label is "1";
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
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     3.66155 mW";
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
  attribute C_INIT_FILE_NAME of U0 : label is "DataROM_blk_mem_gen_0_0.mif";
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
  attribute C_READ_DEPTH_A of U0 : label is 2048;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 2048;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 24;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 24;
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
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
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
  attribute C_WRITE_DEPTH_A of U0 : label is 2048;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 2048;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 24;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 24;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.DataROM_blk_mem_gen_0_0_blk_mem_gen_v8_4_1
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => B"00000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(23 downto 0) => B"000000000000000000000000",
      dinb(23 downto 0) => B"000000000000000000000000",
      douta(23 downto 0) => douta(23 downto 0),
      doutb(23 downto 0) => NLW_U0_doutb_UNCONNECTED(23 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(10 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(10 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(10 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(10 downto 0),
      s_axi_rdata(23 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(23 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(23 downto 0) => B"000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM is
  port (
    Address : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Clock : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute hw_handoff : string;
  attribute hw_handoff of DataROM : entity is "DataROM.hwdef";
end DataROM;

architecture STRUCTURE of DataROM is
  attribute syn_black_box : string;
  attribute syn_black_box of AudioData : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of AudioData : label is "blk_mem_gen_v8_4_1,Vivado 2018.2";
  attribute x_interface_info : string;
  attribute x_interface_info of Clock : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clock : signal is "XIL_INTERFACENAME CLK.CLOCK, CLK_DOMAIN DataROM_Clock, FREQ_HZ 100000000, PHASE 0.000";
begin
AudioData: entity work.DataROM_blk_mem_gen_0_0
     port map (
      addra(10 downto 0) => Address(10 downto 0),
      clka => Clock,
      douta(23 downto 0) => DataOut(23 downto 0)
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
    Locked : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    LRCLK : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    SD : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
end Top;

architecture STRUCTURE of Top is
  signal Address : STD_LOGIC;
  signal Address1 : STD_LOGIC;
  signal \Address[0]_i_10_n_0\ : STD_LOGIC;
  signal \Address[0]_i_11_n_0\ : STD_LOGIC;
  signal \Address[0]_i_12_n_0\ : STD_LOGIC;
  signal \Address[0]_i_13_n_0\ : STD_LOGIC;
  signal \Address[0]_i_15_n_0\ : STD_LOGIC;
  signal \Address[0]_i_16_n_0\ : STD_LOGIC;
  signal \Address[0]_i_17_n_0\ : STD_LOGIC;
  signal \Address[0]_i_18_n_0\ : STD_LOGIC;
  signal \Address[0]_i_19_n_0\ : STD_LOGIC;
  signal \Address[0]_i_1_n_0\ : STD_LOGIC;
  signal \Address[0]_i_20_n_0\ : STD_LOGIC;
  signal \Address[0]_i_21_n_0\ : STD_LOGIC;
  signal \Address[0]_i_22_n_0\ : STD_LOGIC;
  signal \Address[0]_i_23_n_0\ : STD_LOGIC;
  signal \Address[0]_i_24_n_0\ : STD_LOGIC;
  signal \Address[0]_i_25_n_0\ : STD_LOGIC;
  signal \Address[0]_i_4_n_0\ : STD_LOGIC;
  signal \Address[0]_i_6_n_0\ : STD_LOGIC;
  signal \Address[0]_i_7_n_0\ : STD_LOGIC;
  signal \Address[0]_i_8_n_0\ : STD_LOGIC;
  signal Address_Cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \Address_Cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \Address_Cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \Address_Cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \Address_Cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \Address_Cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \Address_Cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \Address_Cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \Address_Cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \Address_Cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Address_Cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Address_Cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Address_Cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Address_Cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Address_Cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Address_Cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Address_Cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Address_Cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Address_Cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Address_Cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Address_Cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Address_Cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Address_Cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Address_Cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Address_Cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Address_Cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \Address_Cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \Address_Cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Address_Cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Address_Cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \Address_Cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Address_Cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Address_Cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Address_Cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \Address_Cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \Address_Cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \Address_Cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \Address_Cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \Address_Cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \Address_Cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \Address_Cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \Address_Cnt_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \Address_Cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \Address_Cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \Address_Cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \Address_Cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \Address_Cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \Address_Cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \Address_Cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \Address_Cnt_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \Address_Cnt_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \Address_Cnt_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \Address_Cnt_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \Address_Cnt_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \Address_Cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Address_Cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Address_Cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Address_Cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Address_Cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Address_Cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Address_Cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Address_Cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Address_Cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Address_Cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Address_Cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Address_Cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Address_Cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Address_Cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Address_Cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Address_Cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \Address_Cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal Address_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \Address_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \Address_reg[0]_i_14_n_1\ : STD_LOGIC;
  signal \Address_reg[0]_i_14_n_2\ : STD_LOGIC;
  signal \Address_reg[0]_i_14_n_3\ : STD_LOGIC;
  signal \Address_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \Address_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \Address_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \Address_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \Address_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \Address_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \Address_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \Address_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \Address_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \Address_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \Address_reg[0]_i_5_n_1\ : STD_LOGIC;
  signal \Address_reg[0]_i_5_n_2\ : STD_LOGIC;
  signal \Address_reg[0]_i_5_n_3\ : STD_LOGIC;
  signal \Address_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \Address_reg[0]_i_9_n_1\ : STD_LOGIC;
  signal \Address_reg[0]_i_9_n_2\ : STD_LOGIC;
  signal \Address_reg[0]_i_9_n_3\ : STD_LOGIC;
  signal \Address_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Address_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Address_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Address_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Address_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Address_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Address_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Address_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Address_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Address_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Address_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Address_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Address_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Address_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Address_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Address_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Address_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \Address_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \Address_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Address_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Address_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \Address_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Address_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Address_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Address_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \Address_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \Address_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \Address_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \Address_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \Address_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \Address_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \Address_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \Address_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \Address_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \Address_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \Address_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \Address_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \Address_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \Address_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \Address_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Address_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Address_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Address_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Address_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Address_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Address_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Address_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Address_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Address_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Address_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Address_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Address_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Address_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Address_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Address_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Address_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 11 );
  signal Clock_0 : STD_LOGIC;
  signal DataOut : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \LRCLK_Cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal LRCLK_OBUF : STD_LOGIC;
  signal MCLK_OBUF : STD_LOGIC;
  signal MCLK_OBUF_BUFG : STD_LOGIC;
  signal ResetN_IBUF : STD_LOGIC;
  signal SCLK_OBUF : STD_LOGIC;
  signal SD_OBUF : STD_LOGIC;
  signal \NLW_Address_Cnt_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Address_Cnt_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Address_reg[0]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Address_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Address_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Address_reg[0]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Address_reg[0]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Address_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute hw_handoff : string;
  attribute hw_handoff of Data : label is "DataROM.hwdef";
begin
\Address[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \Address_Cnt_reg_n_0_[0]\,
      I1 => \Address_Cnt[0]_i_4_n_0\,
      I2 => \Address_Cnt[0]_i_3_n_0\,
      I3 => \Address_Cnt[0]_i_2_n_0\,
      I4 => Address1,
      O => \Address[0]_i_1_n_0\
    );
\Address[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_reg__0\(24),
      I1 => \Address_reg__0\(25),
      O => \Address[0]_i_10_n_0\
    );
\Address[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_reg__0\(22),
      I1 => \Address_reg__0\(23),
      O => \Address[0]_i_11_n_0\
    );
\Address[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_reg__0\(20),
      I1 => \Address_reg__0\(21),
      O => \Address[0]_i_12_n_0\
    );
\Address[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_reg__0\(18),
      I1 => \Address_reg__0\(19),
      O => \Address[0]_i_13_n_0\
    );
\Address[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_reg__0\(16),
      I1 => \Address_reg__0\(17),
      O => \Address[0]_i_15_n_0\
    );
\Address[0]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_reg__0\(14),
      I1 => \Address_reg__0\(15),
      O => \Address[0]_i_16_n_0\
    );
\Address[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_reg__0\(12),
      I1 => \Address_reg__0\(13),
      O => \Address[0]_i_17_n_0\
    );
\Address[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Address_reg(10),
      I1 => \Address_reg__0\(11),
      O => \Address[0]_i_18_n_0\
    );
\Address[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Address_reg(6),
      I1 => Address_reg(7),
      O => \Address[0]_i_19_n_0\
    );
\Address[0]_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Address_reg(5),
      O => \Address[0]_i_20_n_0\
    );
\Address[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Address_reg(2),
      I1 => Address_reg(3),
      O => \Address[0]_i_21_n_0\
    );
\Address[0]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Address_reg(8),
      I1 => Address_reg(9),
      O => \Address[0]_i_22_n_0\
    );
\Address[0]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Address_reg(6),
      I1 => Address_reg(7),
      O => \Address[0]_i_23_n_0\
    );
\Address[0]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Address_reg(5),
      I1 => Address_reg(4),
      O => \Address[0]_i_24_n_0\
    );
\Address[0]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Address_reg(2),
      I1 => Address_reg(3),
      O => \Address[0]_i_25_n_0\
    );
\Address[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Address_reg(0),
      O => \Address[0]_i_4_n_0\
    );
\Address[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_reg__0\(30),
      I1 => \Address_reg__0\(31),
      O => \Address[0]_i_6_n_0\
    );
\Address[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_reg__0\(28),
      I1 => \Address_reg__0\(29),
      O => \Address[0]_i_7_n_0\
    );
\Address[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Address_reg__0\(26),
      I1 => \Address_reg__0\(27),
      O => \Address[0]_i_8_n_0\
    );
\Address_Cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \Address_Cnt[0]_i_2_n_0\,
      I1 => \Address_Cnt[0]_i_3_n_0\,
      I2 => \Address_Cnt[0]_i_4_n_0\,
      I3 => \Address_Cnt_reg_n_0_[0]\,
      O => Address_Cnt(0)
    );
\Address_Cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Address_Cnt[0]_i_5_n_0\,
      I1 => \Address_Cnt[0]_i_6_n_0\,
      I2 => \Address_Cnt_reg_n_0_[31]\,
      I3 => \Address_Cnt_reg_n_0_[30]\,
      I4 => \Address_Cnt_reg_n_0_[1]\,
      I5 => \Address_Cnt[0]_i_7_n_0\,
      O => \Address_Cnt[0]_i_2_n_0\
    );
\Address_Cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \Address_Cnt_reg_n_0_[4]\,
      I1 => \Address_Cnt_reg_n_0_[5]\,
      I2 => \Address_Cnt_reg_n_0_[2]\,
      I3 => \Address_Cnt_reg_n_0_[3]\,
      I4 => \Address_Cnt[0]_i_8_n_0\,
      O => \Address_Cnt[0]_i_3_n_0\
    );
\Address_Cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \Address_Cnt_reg_n_0_[12]\,
      I1 => \Address_Cnt_reg_n_0_[13]\,
      I2 => \Address_Cnt_reg_n_0_[10]\,
      I3 => \Address_Cnt_reg_n_0_[11]\,
      I4 => \Address_Cnt[0]_i_9_n_0\,
      O => \Address_Cnt[0]_i_4_n_0\
    );
\Address_Cnt[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Address_Cnt_reg_n_0_[23]\,
      I1 => \Address_Cnt_reg_n_0_[22]\,
      I2 => \Address_Cnt_reg_n_0_[25]\,
      I3 => \Address_Cnt_reg_n_0_[24]\,
      O => \Address_Cnt[0]_i_5_n_0\
    );
\Address_Cnt[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Address_Cnt_reg_n_0_[19]\,
      I1 => \Address_Cnt_reg_n_0_[18]\,
      I2 => \Address_Cnt_reg_n_0_[21]\,
      I3 => \Address_Cnt_reg_n_0_[20]\,
      O => \Address_Cnt[0]_i_6_n_0\
    );
\Address_Cnt[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Address_Cnt_reg_n_0_[27]\,
      I1 => \Address_Cnt_reg_n_0_[26]\,
      I2 => \Address_Cnt_reg_n_0_[29]\,
      I3 => \Address_Cnt_reg_n_0_[28]\,
      O => \Address_Cnt[0]_i_7_n_0\
    );
\Address_Cnt[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \Address_Cnt_reg_n_0_[7]\,
      I1 => \Address_Cnt_reg_n_0_[6]\,
      I2 => \Address_Cnt_reg_n_0_[8]\,
      I3 => \Address_Cnt_reg_n_0_[9]\,
      O => \Address_Cnt[0]_i_8_n_0\
    );
\Address_Cnt[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Address_Cnt_reg_n_0_[15]\,
      I1 => \Address_Cnt_reg_n_0_[14]\,
      I2 => \Address_Cnt_reg_n_0_[17]\,
      I3 => \Address_Cnt_reg_n_0_[16]\,
      O => \Address_Cnt[0]_i_9_n_0\
    );
\Address_Cnt[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \Address_Cnt_reg_n_0_[0]\,
      I1 => \Address_Cnt[0]_i_4_n_0\,
      I2 => \Address_Cnt[0]_i_3_n_0\,
      I3 => \Address_Cnt[0]_i_2_n_0\,
      O => Address
    );
\Address_Cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => Address_Cnt(0),
      Q => \Address_Cnt_reg_n_0_[0]\,
      R => '0'
    );
\Address_Cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[12]_i_1_n_6\,
      Q => \Address_Cnt_reg_n_0_[10]\,
      R => Address
    );
\Address_Cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[12]_i_1_n_5\,
      Q => \Address_Cnt_reg_n_0_[11]\,
      R => Address
    );
\Address_Cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[12]_i_1_n_4\,
      Q => \Address_Cnt_reg_n_0_[12]\,
      R => Address
    );
\Address_Cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_Cnt_reg[8]_i_1_n_0\,
      CO(3) => \Address_Cnt_reg[12]_i_1_n_0\,
      CO(2) => \Address_Cnt_reg[12]_i_1_n_1\,
      CO(1) => \Address_Cnt_reg[12]_i_1_n_2\,
      CO(0) => \Address_Cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_Cnt_reg[12]_i_1_n_4\,
      O(2) => \Address_Cnt_reg[12]_i_1_n_5\,
      O(1) => \Address_Cnt_reg[12]_i_1_n_6\,
      O(0) => \Address_Cnt_reg[12]_i_1_n_7\,
      S(3) => \Address_Cnt_reg_n_0_[12]\,
      S(2) => \Address_Cnt_reg_n_0_[11]\,
      S(1) => \Address_Cnt_reg_n_0_[10]\,
      S(0) => \Address_Cnt_reg_n_0_[9]\
    );
\Address_Cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[16]_i_1_n_7\,
      Q => \Address_Cnt_reg_n_0_[13]\,
      R => Address
    );
\Address_Cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[16]_i_1_n_6\,
      Q => \Address_Cnt_reg_n_0_[14]\,
      R => Address
    );
\Address_Cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[16]_i_1_n_5\,
      Q => \Address_Cnt_reg_n_0_[15]\,
      R => Address
    );
\Address_Cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[16]_i_1_n_4\,
      Q => \Address_Cnt_reg_n_0_[16]\,
      R => Address
    );
\Address_Cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_Cnt_reg[12]_i_1_n_0\,
      CO(3) => \Address_Cnt_reg[16]_i_1_n_0\,
      CO(2) => \Address_Cnt_reg[16]_i_1_n_1\,
      CO(1) => \Address_Cnt_reg[16]_i_1_n_2\,
      CO(0) => \Address_Cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_Cnt_reg[16]_i_1_n_4\,
      O(2) => \Address_Cnt_reg[16]_i_1_n_5\,
      O(1) => \Address_Cnt_reg[16]_i_1_n_6\,
      O(0) => \Address_Cnt_reg[16]_i_1_n_7\,
      S(3) => \Address_Cnt_reg_n_0_[16]\,
      S(2) => \Address_Cnt_reg_n_0_[15]\,
      S(1) => \Address_Cnt_reg_n_0_[14]\,
      S(0) => \Address_Cnt_reg_n_0_[13]\
    );
\Address_Cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[20]_i_1_n_7\,
      Q => \Address_Cnt_reg_n_0_[17]\,
      R => Address
    );
\Address_Cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[20]_i_1_n_6\,
      Q => \Address_Cnt_reg_n_0_[18]\,
      R => Address
    );
\Address_Cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[20]_i_1_n_5\,
      Q => \Address_Cnt_reg_n_0_[19]\,
      R => Address
    );
\Address_Cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[4]_i_1_n_7\,
      Q => \Address_Cnt_reg_n_0_[1]\,
      R => Address
    );
\Address_Cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[20]_i_1_n_4\,
      Q => \Address_Cnt_reg_n_0_[20]\,
      R => Address
    );
\Address_Cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_Cnt_reg[16]_i_1_n_0\,
      CO(3) => \Address_Cnt_reg[20]_i_1_n_0\,
      CO(2) => \Address_Cnt_reg[20]_i_1_n_1\,
      CO(1) => \Address_Cnt_reg[20]_i_1_n_2\,
      CO(0) => \Address_Cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_Cnt_reg[20]_i_1_n_4\,
      O(2) => \Address_Cnt_reg[20]_i_1_n_5\,
      O(1) => \Address_Cnt_reg[20]_i_1_n_6\,
      O(0) => \Address_Cnt_reg[20]_i_1_n_7\,
      S(3) => \Address_Cnt_reg_n_0_[20]\,
      S(2) => \Address_Cnt_reg_n_0_[19]\,
      S(1) => \Address_Cnt_reg_n_0_[18]\,
      S(0) => \Address_Cnt_reg_n_0_[17]\
    );
\Address_Cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[24]_i_1_n_7\,
      Q => \Address_Cnt_reg_n_0_[21]\,
      R => Address
    );
\Address_Cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[24]_i_1_n_6\,
      Q => \Address_Cnt_reg_n_0_[22]\,
      R => Address
    );
\Address_Cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[24]_i_1_n_5\,
      Q => \Address_Cnt_reg_n_0_[23]\,
      R => Address
    );
\Address_Cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[24]_i_1_n_4\,
      Q => \Address_Cnt_reg_n_0_[24]\,
      R => Address
    );
\Address_Cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_Cnt_reg[20]_i_1_n_0\,
      CO(3) => \Address_Cnt_reg[24]_i_1_n_0\,
      CO(2) => \Address_Cnt_reg[24]_i_1_n_1\,
      CO(1) => \Address_Cnt_reg[24]_i_1_n_2\,
      CO(0) => \Address_Cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_Cnt_reg[24]_i_1_n_4\,
      O(2) => \Address_Cnt_reg[24]_i_1_n_5\,
      O(1) => \Address_Cnt_reg[24]_i_1_n_6\,
      O(0) => \Address_Cnt_reg[24]_i_1_n_7\,
      S(3) => \Address_Cnt_reg_n_0_[24]\,
      S(2) => \Address_Cnt_reg_n_0_[23]\,
      S(1) => \Address_Cnt_reg_n_0_[22]\,
      S(0) => \Address_Cnt_reg_n_0_[21]\
    );
\Address_Cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[28]_i_1_n_7\,
      Q => \Address_Cnt_reg_n_0_[25]\,
      R => Address
    );
\Address_Cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[28]_i_1_n_6\,
      Q => \Address_Cnt_reg_n_0_[26]\,
      R => Address
    );
\Address_Cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[28]_i_1_n_5\,
      Q => \Address_Cnt_reg_n_0_[27]\,
      R => Address
    );
\Address_Cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[28]_i_1_n_4\,
      Q => \Address_Cnt_reg_n_0_[28]\,
      R => Address
    );
\Address_Cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_Cnt_reg[24]_i_1_n_0\,
      CO(3) => \Address_Cnt_reg[28]_i_1_n_0\,
      CO(2) => \Address_Cnt_reg[28]_i_1_n_1\,
      CO(1) => \Address_Cnt_reg[28]_i_1_n_2\,
      CO(0) => \Address_Cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_Cnt_reg[28]_i_1_n_4\,
      O(2) => \Address_Cnt_reg[28]_i_1_n_5\,
      O(1) => \Address_Cnt_reg[28]_i_1_n_6\,
      O(0) => \Address_Cnt_reg[28]_i_1_n_7\,
      S(3) => \Address_Cnt_reg_n_0_[28]\,
      S(2) => \Address_Cnt_reg_n_0_[27]\,
      S(1) => \Address_Cnt_reg_n_0_[26]\,
      S(0) => \Address_Cnt_reg_n_0_[25]\
    );
\Address_Cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[31]_i_2_n_7\,
      Q => \Address_Cnt_reg_n_0_[29]\,
      R => Address
    );
\Address_Cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[4]_i_1_n_6\,
      Q => \Address_Cnt_reg_n_0_[2]\,
      R => Address
    );
\Address_Cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[31]_i_2_n_6\,
      Q => \Address_Cnt_reg_n_0_[30]\,
      R => Address
    );
\Address_Cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[31]_i_2_n_5\,
      Q => \Address_Cnt_reg_n_0_[31]\,
      R => Address
    );
\Address_Cnt_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_Cnt_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_Address_Cnt_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Address_Cnt_reg[31]_i_2_n_2\,
      CO(0) => \Address_Cnt_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_Address_Cnt_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2) => \Address_Cnt_reg[31]_i_2_n_5\,
      O(1) => \Address_Cnt_reg[31]_i_2_n_6\,
      O(0) => \Address_Cnt_reg[31]_i_2_n_7\,
      S(3) => '0',
      S(2) => \Address_Cnt_reg_n_0_[31]\,
      S(1) => \Address_Cnt_reg_n_0_[30]\,
      S(0) => \Address_Cnt_reg_n_0_[29]\
    );
\Address_Cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[4]_i_1_n_5\,
      Q => \Address_Cnt_reg_n_0_[3]\,
      R => Address
    );
\Address_Cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[4]_i_1_n_4\,
      Q => \Address_Cnt_reg_n_0_[4]\,
      R => Address
    );
\Address_Cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Address_Cnt_reg[4]_i_1_n_0\,
      CO(2) => \Address_Cnt_reg[4]_i_1_n_1\,
      CO(1) => \Address_Cnt_reg[4]_i_1_n_2\,
      CO(0) => \Address_Cnt_reg[4]_i_1_n_3\,
      CYINIT => \Address_Cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \Address_Cnt_reg[4]_i_1_n_4\,
      O(2) => \Address_Cnt_reg[4]_i_1_n_5\,
      O(1) => \Address_Cnt_reg[4]_i_1_n_6\,
      O(0) => \Address_Cnt_reg[4]_i_1_n_7\,
      S(3) => \Address_Cnt_reg_n_0_[4]\,
      S(2) => \Address_Cnt_reg_n_0_[3]\,
      S(1) => \Address_Cnt_reg_n_0_[2]\,
      S(0) => \Address_Cnt_reg_n_0_[1]\
    );
\Address_Cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[8]_i_1_n_7\,
      Q => \Address_Cnt_reg_n_0_[5]\,
      R => Address
    );
\Address_Cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[8]_i_1_n_6\,
      Q => \Address_Cnt_reg_n_0_[6]\,
      R => Address
    );
\Address_Cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[8]_i_1_n_5\,
      Q => \Address_Cnt_reg_n_0_[7]\,
      R => Address
    );
\Address_Cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[8]_i_1_n_4\,
      Q => \Address_Cnt_reg_n_0_[8]\,
      R => Address
    );
\Address_Cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_Cnt_reg[4]_i_1_n_0\,
      CO(3) => \Address_Cnt_reg[8]_i_1_n_0\,
      CO(2) => \Address_Cnt_reg[8]_i_1_n_1\,
      CO(1) => \Address_Cnt_reg[8]_i_1_n_2\,
      CO(0) => \Address_Cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_Cnt_reg[8]_i_1_n_4\,
      O(2) => \Address_Cnt_reg[8]_i_1_n_5\,
      O(1) => \Address_Cnt_reg[8]_i_1_n_6\,
      O(0) => \Address_Cnt_reg[8]_i_1_n_7\,
      S(3) => \Address_Cnt_reg_n_0_[8]\,
      S(2) => \Address_Cnt_reg_n_0_[7]\,
      S(1) => \Address_Cnt_reg_n_0_[6]\,
      S(0) => \Address_Cnt_reg_n_0_[5]\
    );
\Address_Cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => '1',
      D => \Address_Cnt_reg[12]_i_1_n_7\,
      Q => \Address_Cnt_reg_n_0_[9]\,
      R => Address
    );
\Address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[0]_i_2_n_7\,
      Q => Address_reg(0),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[0]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Address_reg[0]_i_14_n_0\,
      CO(2) => \Address_reg[0]_i_14_n_1\,
      CO(1) => \Address_reg[0]_i_14_n_2\,
      CO(0) => \Address_reg[0]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Address[0]_i_19_n_0\,
      DI(1) => \Address[0]_i_20_n_0\,
      DI(0) => \Address[0]_i_21_n_0\,
      O(3 downto 0) => \NLW_Address_reg[0]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \Address[0]_i_22_n_0\,
      S(2) => \Address[0]_i_23_n_0\,
      S(1) => \Address[0]_i_24_n_0\,
      S(0) => \Address[0]_i_25_n_0\
    );
\Address_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Address_reg[0]_i_2_n_0\,
      CO(2) => \Address_reg[0]_i_2_n_1\,
      CO(1) => \Address_reg[0]_i_2_n_2\,
      CO(0) => \Address_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \Address_reg[0]_i_2_n_4\,
      O(2) => \Address_reg[0]_i_2_n_5\,
      O(1) => \Address_reg[0]_i_2_n_6\,
      O(0) => \Address_reg[0]_i_2_n_7\,
      S(3 downto 1) => Address_reg(3 downto 1),
      S(0) => \Address[0]_i_4_n_0\
    );
\Address_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[0]_i_5_n_0\,
      CO(3) => \NLW_Address_reg[0]_i_3_CO_UNCONNECTED\(3),
      CO(2) => Address1,
      CO(1) => \Address_reg[0]_i_3_n_2\,
      CO(0) => \Address_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Address_reg__0\(31),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_Address_reg[0]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \Address[0]_i_6_n_0\,
      S(1) => \Address[0]_i_7_n_0\,
      S(0) => \Address[0]_i_8_n_0\
    );
\Address_reg[0]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[0]_i_9_n_0\,
      CO(3) => \Address_reg[0]_i_5_n_0\,
      CO(2) => \Address_reg[0]_i_5_n_1\,
      CO(1) => \Address_reg[0]_i_5_n_2\,
      CO(0) => \Address_reg[0]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Address_reg[0]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \Address[0]_i_10_n_0\,
      S(2) => \Address[0]_i_11_n_0\,
      S(1) => \Address[0]_i_12_n_0\,
      S(0) => \Address[0]_i_13_n_0\
    );
\Address_reg[0]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[0]_i_14_n_0\,
      CO(3) => \Address_reg[0]_i_9_n_0\,
      CO(2) => \Address_reg[0]_i_9_n_1\,
      CO(1) => \Address_reg[0]_i_9_n_2\,
      CO(0) => \Address_reg[0]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Address_reg[0]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => \Address[0]_i_15_n_0\,
      S(2) => \Address[0]_i_16_n_0\,
      S(1) => \Address[0]_i_17_n_0\,
      S(0) => \Address[0]_i_18_n_0\
    );
\Address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[8]_i_1_n_5\,
      Q => Address_reg(10),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[8]_i_1_n_4\,
      Q => \Address_reg__0\(11),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[12]_i_1_n_7\,
      Q => \Address_reg__0\(12),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[8]_i_1_n_0\,
      CO(3) => \Address_reg[12]_i_1_n_0\,
      CO(2) => \Address_reg[12]_i_1_n_1\,
      CO(1) => \Address_reg[12]_i_1_n_2\,
      CO(0) => \Address_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_reg[12]_i_1_n_4\,
      O(2) => \Address_reg[12]_i_1_n_5\,
      O(1) => \Address_reg[12]_i_1_n_6\,
      O(0) => \Address_reg[12]_i_1_n_7\,
      S(3 downto 0) => \Address_reg__0\(15 downto 12)
    );
\Address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[12]_i_1_n_6\,
      Q => \Address_reg__0\(13),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[12]_i_1_n_5\,
      Q => \Address_reg__0\(14),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[12]_i_1_n_4\,
      Q => \Address_reg__0\(15),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[16]_i_1_n_7\,
      Q => \Address_reg__0\(16),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[12]_i_1_n_0\,
      CO(3) => \Address_reg[16]_i_1_n_0\,
      CO(2) => \Address_reg[16]_i_1_n_1\,
      CO(1) => \Address_reg[16]_i_1_n_2\,
      CO(0) => \Address_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_reg[16]_i_1_n_4\,
      O(2) => \Address_reg[16]_i_1_n_5\,
      O(1) => \Address_reg[16]_i_1_n_6\,
      O(0) => \Address_reg[16]_i_1_n_7\,
      S(3 downto 0) => \Address_reg__0\(19 downto 16)
    );
\Address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[16]_i_1_n_6\,
      Q => \Address_reg__0\(17),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[16]_i_1_n_5\,
      Q => \Address_reg__0\(18),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[16]_i_1_n_4\,
      Q => \Address_reg__0\(19),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[0]_i_2_n_6\,
      Q => Address_reg(1),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[20]_i_1_n_7\,
      Q => \Address_reg__0\(20),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[16]_i_1_n_0\,
      CO(3) => \Address_reg[20]_i_1_n_0\,
      CO(2) => \Address_reg[20]_i_1_n_1\,
      CO(1) => \Address_reg[20]_i_1_n_2\,
      CO(0) => \Address_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_reg[20]_i_1_n_4\,
      O(2) => \Address_reg[20]_i_1_n_5\,
      O(1) => \Address_reg[20]_i_1_n_6\,
      O(0) => \Address_reg[20]_i_1_n_7\,
      S(3 downto 0) => \Address_reg__0\(23 downto 20)
    );
\Address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[20]_i_1_n_6\,
      Q => \Address_reg__0\(21),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[20]_i_1_n_5\,
      Q => \Address_reg__0\(22),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[20]_i_1_n_4\,
      Q => \Address_reg__0\(23),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[24]_i_1_n_7\,
      Q => \Address_reg__0\(24),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[20]_i_1_n_0\,
      CO(3) => \Address_reg[24]_i_1_n_0\,
      CO(2) => \Address_reg[24]_i_1_n_1\,
      CO(1) => \Address_reg[24]_i_1_n_2\,
      CO(0) => \Address_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_reg[24]_i_1_n_4\,
      O(2) => \Address_reg[24]_i_1_n_5\,
      O(1) => \Address_reg[24]_i_1_n_6\,
      O(0) => \Address_reg[24]_i_1_n_7\,
      S(3 downto 0) => \Address_reg__0\(27 downto 24)
    );
\Address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[24]_i_1_n_6\,
      Q => \Address_reg__0\(25),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[24]_i_1_n_5\,
      Q => \Address_reg__0\(26),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[24]_i_1_n_4\,
      Q => \Address_reg__0\(27),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[28]_i_1_n_7\,
      Q => \Address_reg__0\(28),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[24]_i_1_n_0\,
      CO(3) => \NLW_Address_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \Address_reg[28]_i_1_n_1\,
      CO(1) => \Address_reg[28]_i_1_n_2\,
      CO(0) => \Address_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_reg[28]_i_1_n_4\,
      O(2) => \Address_reg[28]_i_1_n_5\,
      O(1) => \Address_reg[28]_i_1_n_6\,
      O(0) => \Address_reg[28]_i_1_n_7\,
      S(3 downto 0) => \Address_reg__0\(31 downto 28)
    );
\Address_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[28]_i_1_n_6\,
      Q => \Address_reg__0\(29),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[0]_i_2_n_5\,
      Q => Address_reg(2),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[28]_i_1_n_5\,
      Q => \Address_reg__0\(30),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[28]_i_1_n_4\,
      Q => \Address_reg__0\(31),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[0]_i_2_n_4\,
      Q => Address_reg(3),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[4]_i_1_n_7\,
      Q => Address_reg(4),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[0]_i_2_n_0\,
      CO(3) => \Address_reg[4]_i_1_n_0\,
      CO(2) => \Address_reg[4]_i_1_n_1\,
      CO(1) => \Address_reg[4]_i_1_n_2\,
      CO(0) => \Address_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_reg[4]_i_1_n_4\,
      O(2) => \Address_reg[4]_i_1_n_5\,
      O(1) => \Address_reg[4]_i_1_n_6\,
      O(0) => \Address_reg[4]_i_1_n_7\,
      S(3 downto 0) => Address_reg(7 downto 4)
    );
\Address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[4]_i_1_n_6\,
      Q => Address_reg(5),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[4]_i_1_n_5\,
      Q => Address_reg(6),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[4]_i_1_n_4\,
      Q => Address_reg(7),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[8]_i_1_n_7\,
      Q => Address_reg(8),
      R => \Address[0]_i_1_n_0\
    );
\Address_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[4]_i_1_n_0\,
      CO(3) => \Address_reg[8]_i_1_n_0\,
      CO(2) => \Address_reg[8]_i_1_n_1\,
      CO(1) => \Address_reg[8]_i_1_n_2\,
      CO(0) => \Address_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Address_reg[8]_i_1_n_4\,
      O(2) => \Address_reg[8]_i_1_n_5\,
      O(1) => \Address_reg[8]_i_1_n_6\,
      O(0) => \Address_reg[8]_i_1_n_7\,
      S(3) => \Address_reg__0\(11),
      S(2 downto 0) => Address_reg(10 downto 8)
    );
\Address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => MCLK_OBUF_BUFG,
      CE => Address,
      D => \Address_reg[8]_i_1_n_6\,
      Q => Address_reg(9),
      R => \Address[0]_i_1_n_0\
    );
Clock_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Clock,
      O => MCLK_OBUF
    );
Data: entity work.DataROM
     port map (
      Address(10 downto 0) => Address_reg(10 downto 0),
      Clock => MCLK_OBUF_BUFG,
      DataOut(23 downto 0) => DataOut(23 downto 0)
    );
I2S_Transmitter: entity work.I2S
     port map (
      Clock => Clock_0,
      Clock_Int_reg_0 => \LRCLK_Cnt_reg[0]_i_3_n_0\,
      DataOut(23 downto 0) => DataOut(23 downto 0),
      LRCLK_OBUF => LRCLK_OBUF,
      MCLK_OBUF_BUFG => MCLK_OBUF_BUFG,
      ResetN_IBUF => ResetN_IBUF,
      SCLK_OBUF => SCLK_OBUF,
      SD_OBUF => SD_OBUF
    );
\LRCLK_Cnt_reg[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Clock_0,
      O => \LRCLK_Cnt_reg[0]_i_3_n_0\
    );
LRCLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LRCLK_OBUF,
      O => LRCLK
    );
Locked_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => Locked
    );
MCLK_OBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => MCLK_OBUF,
      O => MCLK_OBUF_BUFG
    );
MCLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => MCLK_OBUF_BUFG,
      O => MCLK
    );
ResetN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ResetN,
      O => ResetN_IBUF
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
