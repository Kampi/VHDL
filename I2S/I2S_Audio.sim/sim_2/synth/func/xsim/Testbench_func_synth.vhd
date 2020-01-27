-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Aug  6 14:09:45 2019
-- Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Daniel.Kampert/Desktop/Git/VHDL/I2S/I2S_Audio.sim/sim_2/synth/func/xsim/Testbench_func_synth.vhd
-- Design      : Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ClockGeneration_clk_wiz_0_0_ClockGeneration_clk_wiz_0_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ClockGeneration_clk_wiz_0_0_ClockGeneration_clk_wiz_0_0_clk_wiz : entity is "ClockGeneration_clk_wiz_0_0_clk_wiz";
end ClockGeneration_clk_wiz_0_0_ClockGeneration_clk_wiz_0_0_clk_wiz;

architecture STRUCTURE of ClockGeneration_clk_wiz_0_0_ClockGeneration_clk_wiz_0_0_clk_wiz is
  signal clk_out1_ClockGeneration_clk_wiz_0_0 : STD_LOGIC;
  signal clkfbout_ClockGeneration_clk_wiz_0_0 : STD_LOGIC;
  signal clkfbout_buf_ClockGeneration_clk_wiz_0_0 : STD_LOGIC;
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
  attribute OPT_MODIFIED of mmcm_adv_inst : label is "MLO ";
  attribute box_type of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_ClockGeneration_clk_wiz_0_0,
      O => clkfbout_buf_ClockGeneration_clk_wiz_0_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_ClockGeneration_clk_wiz_0_0,
      O => clk_out1
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
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 7,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_ClockGeneration_clk_wiz_0_0,
      CLKFBOUT => clkfbout_ClockGeneration_clk_wiz_0_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_ClockGeneration_clk_wiz_0_0,
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
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2S_Transmitter is
  port (
    LRCLK_OBUF : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    SD_OBUF : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_I2SState_reg[5]\ : out STD_LOGIC;
    SD_Int_reg_0 : in STD_LOGIC;
    Resetn_IBUF : in STD_LOGIC;
    Locked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ShiftReg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_Int_Full : in STD_LOGIC;
    FIFO_Int_Full_reg : in STD_LOGIC;
    FIFO_Int_Full_reg_0 : in STD_LOGIC
  );
end I2S_Transmitter;

architecture STRUCTURE of I2S_Transmitter is
  signal \BitCounter_Int1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_n_1\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_n_2\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_n_3\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_n_1\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_n_2\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_n_3\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_n_1\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_n_2\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_n_3\ : STD_LOGIC;
  signal BitCounter_Int1_carry_i_1_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_2_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_3_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_4_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_5_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_6_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_7_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_n_1 : STD_LOGIC;
  signal BitCounter_Int1_carry_n_2 : STD_LOGIC;
  signal BitCounter_Int1_carry_n_3 : STD_LOGIC;
  signal \BitCounter_Int[0]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int[0]_i_3_n_0\ : STD_LOGIC;
  signal BitCounter_Int_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \BitCounter_Int_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_9_n_0\ : STD_LOGIC;
  signal LRCLK_Int1 : STD_LOGIC;
  signal LRCLK_Int_i_10_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_11_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_13_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_14_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_15_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_16_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_17_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_18_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_19_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_20_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_21_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_5_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_6_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_8_n_0 : STD_LOGIC;
  signal LRCLK_Int_i_9_n_0 : STD_LOGIC;
  signal LRCLK_Int_reg_i_12_n_0 : STD_LOGIC;
  signal LRCLK_Int_reg_i_12_n_1 : STD_LOGIC;
  signal LRCLK_Int_reg_i_12_n_2 : STD_LOGIC;
  signal LRCLK_Int_reg_i_12_n_3 : STD_LOGIC;
  signal LRCLK_Int_reg_i_2_n_3 : STD_LOGIC;
  signal LRCLK_Int_reg_i_2_n_5 : STD_LOGIC;
  signal LRCLK_Int_reg_i_4_n_0 : STD_LOGIC;
  signal LRCLK_Int_reg_i_4_n_1 : STD_LOGIC;
  signal LRCLK_Int_reg_i_4_n_2 : STD_LOGIC;
  signal LRCLK_Int_reg_i_4_n_3 : STD_LOGIC;
  signal LRCLK_Int_reg_i_7_n_0 : STD_LOGIC;
  signal LRCLK_Int_reg_i_7_n_1 : STD_LOGIC;
  signal LRCLK_Int_reg_i_7_n_2 : STD_LOGIC;
  signal LRCLK_Int_reg_i_7_n_3 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ShiftReg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in2 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal NLW_BitCounter_Int1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BitCounter_Int1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BitCounter_Int1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BitCounter_Int1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BitCounter_Int_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_LRCLK_Int_reg_i_12_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_Int_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_LRCLK_Int_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_Int_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_Int_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_I2SState[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_I2SState[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_I2SState[5]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_I2SState[5]_i_7\ : label is "soft_lutpair0";
begin
  SR(0) <= \^sr\(0);
BitCounter_Int1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => BitCounter_Int1_carry_n_0,
      CO(2) => BitCounter_Int1_carry_n_1,
      CO(1) => BitCounter_Int1_carry_n_2,
      CO(0) => BitCounter_Int1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => BitCounter_Int1_carry_i_1_n_0,
      DI(1) => BitCounter_Int1_carry_i_2_n_0,
      DI(0) => BitCounter_Int1_carry_i_3_n_0,
      O(3 downto 0) => NLW_BitCounter_Int1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => BitCounter_Int1_carry_i_4_n_0,
      S(2) => BitCounter_Int1_carry_i_5_n_0,
      S(1) => BitCounter_Int1_carry_i_6_n_0,
      S(0) => BitCounter_Int1_carry_i_7_n_0
    );
\BitCounter_Int1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => BitCounter_Int1_carry_n_0,
      CO(3) => \BitCounter_Int1_carry__0_n_0\,
      CO(2) => \BitCounter_Int1_carry__0_n_1\,
      CO(1) => \BitCounter_Int1_carry__0_n_2\,
      CO(0) => \BitCounter_Int1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_BitCounter_Int1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \BitCounter_Int1_carry__0_i_1_n_0\,
      S(2) => \BitCounter_Int1_carry__0_i_2_n_0\,
      S(1) => \BitCounter_Int1_carry__0_i_3_n_0\,
      S(0) => \BitCounter_Int1_carry__0_i_4_n_0\
    );
\BitCounter_Int1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(15),
      I1 => BitCounter_Int_reg(14),
      O => \BitCounter_Int1_carry__0_i_1_n_0\
    );
\BitCounter_Int1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(13),
      I1 => BitCounter_Int_reg(12),
      O => \BitCounter_Int1_carry__0_i_2_n_0\
    );
\BitCounter_Int1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(11),
      I1 => BitCounter_Int_reg(10),
      O => \BitCounter_Int1_carry__0_i_3_n_0\
    );
\BitCounter_Int1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(9),
      I1 => BitCounter_Int_reg(8),
      O => \BitCounter_Int1_carry__0_i_4_n_0\
    );
\BitCounter_Int1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int1_carry__0_n_0\,
      CO(3) => \BitCounter_Int1_carry__1_n_0\,
      CO(2) => \BitCounter_Int1_carry__1_n_1\,
      CO(1) => \BitCounter_Int1_carry__1_n_2\,
      CO(0) => \BitCounter_Int1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_BitCounter_Int1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \BitCounter_Int1_carry__1_i_1_n_0\,
      S(2) => \BitCounter_Int1_carry__1_i_2_n_0\,
      S(1) => \BitCounter_Int1_carry__1_i_3_n_0\,
      S(0) => \BitCounter_Int1_carry__1_i_4_n_0\
    );
\BitCounter_Int1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(23),
      I1 => BitCounter_Int_reg(22),
      O => \BitCounter_Int1_carry__1_i_1_n_0\
    );
\BitCounter_Int1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(21),
      I1 => BitCounter_Int_reg(20),
      O => \BitCounter_Int1_carry__1_i_2_n_0\
    );
\BitCounter_Int1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(19),
      I1 => BitCounter_Int_reg(18),
      O => \BitCounter_Int1_carry__1_i_3_n_0\
    );
\BitCounter_Int1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(17),
      I1 => BitCounter_Int_reg(16),
      O => \BitCounter_Int1_carry__1_i_4_n_0\
    );
\BitCounter_Int1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int1_carry__1_n_0\,
      CO(3) => in2,
      CO(2) => \BitCounter_Int1_carry__2_n_1\,
      CO(1) => \BitCounter_Int1_carry__2_n_2\,
      CO(0) => \BitCounter_Int1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => BitCounter_Int_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_BitCounter_Int1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \BitCounter_Int1_carry__2_i_1_n_0\,
      S(2) => \BitCounter_Int1_carry__2_i_2_n_0\,
      S(1) => \BitCounter_Int1_carry__2_i_3_n_0\,
      S(0) => \BitCounter_Int1_carry__2_i_4_n_0\
    );
\BitCounter_Int1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(31),
      I1 => BitCounter_Int_reg(30),
      O => \BitCounter_Int1_carry__2_i_1_n_0\
    );
\BitCounter_Int1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(29),
      I1 => BitCounter_Int_reg(28),
      O => \BitCounter_Int1_carry__2_i_2_n_0\
    );
\BitCounter_Int1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(27),
      I1 => BitCounter_Int_reg(26),
      O => \BitCounter_Int1_carry__2_i_3_n_0\
    );
\BitCounter_Int1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(25),
      I1 => BitCounter_Int_reg(24),
      O => \BitCounter_Int1_carry__2_i_4_n_0\
    );
BitCounter_Int1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(4),
      I1 => BitCounter_Int_reg(5),
      O => BitCounter_Int1_carry_i_1_n_0
    );
BitCounter_Int1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => BitCounter_Int_reg(2),
      I1 => BitCounter_Int_reg(3),
      O => BitCounter_Int1_carry_i_2_n_0
    );
BitCounter_Int1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => BitCounter_Int_reg(0),
      I1 => BitCounter_Int_reg(1),
      O => BitCounter_Int1_carry_i_3_n_0
    );
BitCounter_Int1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(7),
      I1 => BitCounter_Int_reg(6),
      O => BitCounter_Int1_carry_i_4_n_0
    );
BitCounter_Int1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => BitCounter_Int_reg(4),
      I1 => BitCounter_Int_reg(5),
      O => BitCounter_Int1_carry_i_5_n_0
    );
BitCounter_Int1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BitCounter_Int_reg(3),
      I1 => BitCounter_Int_reg(2),
      O => BitCounter_Int1_carry_i_6_n_0
    );
BitCounter_Int1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BitCounter_Int_reg(0),
      I1 => BitCounter_Int_reg(1),
      O => BitCounter_Int1_carry_i_7_n_0
    );
\BitCounter_Int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => Resetn_IBUF,
      I1 => Locked,
      I2 => in2,
      O => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(0),
      O => \BitCounter_Int[0]_i_3_n_0\
    );
\BitCounter_Int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[0]_i_2_n_7\,
      Q => BitCounter_Int_reg(0),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \BitCounter_Int_reg[0]_i_2_n_0\,
      CO(2) => \BitCounter_Int_reg[0]_i_2_n_1\,
      CO(1) => \BitCounter_Int_reg[0]_i_2_n_2\,
      CO(0) => \BitCounter_Int_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \BitCounter_Int_reg[0]_i_2_n_4\,
      O(2) => \BitCounter_Int_reg[0]_i_2_n_5\,
      O(1) => \BitCounter_Int_reg[0]_i_2_n_6\,
      O(0) => \BitCounter_Int_reg[0]_i_2_n_7\,
      S(3 downto 1) => BitCounter_Int_reg(3 downto 1),
      S(0) => \BitCounter_Int[0]_i_3_n_0\
    );
\BitCounter_Int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[8]_i_1_n_5\,
      Q => BitCounter_Int_reg(10),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[8]_i_1_n_4\,
      Q => BitCounter_Int_reg(11),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[12]_i_1_n_7\,
      Q => BitCounter_Int_reg(12),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[8]_i_1_n_0\,
      CO(3) => \BitCounter_Int_reg[12]_i_1_n_0\,
      CO(2) => \BitCounter_Int_reg[12]_i_1_n_1\,
      CO(1) => \BitCounter_Int_reg[12]_i_1_n_2\,
      CO(0) => \BitCounter_Int_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[12]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[12]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[12]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[12]_i_1_n_7\,
      S(3 downto 0) => BitCounter_Int_reg(15 downto 12)
    );
\BitCounter_Int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[12]_i_1_n_6\,
      Q => BitCounter_Int_reg(13),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[12]_i_1_n_5\,
      Q => BitCounter_Int_reg(14),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[12]_i_1_n_4\,
      Q => BitCounter_Int_reg(15),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[16]_i_1_n_7\,
      Q => BitCounter_Int_reg(16),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[12]_i_1_n_0\,
      CO(3) => \BitCounter_Int_reg[16]_i_1_n_0\,
      CO(2) => \BitCounter_Int_reg[16]_i_1_n_1\,
      CO(1) => \BitCounter_Int_reg[16]_i_1_n_2\,
      CO(0) => \BitCounter_Int_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[16]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[16]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[16]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[16]_i_1_n_7\,
      S(3 downto 0) => BitCounter_Int_reg(19 downto 16)
    );
\BitCounter_Int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[16]_i_1_n_6\,
      Q => BitCounter_Int_reg(17),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[16]_i_1_n_5\,
      Q => BitCounter_Int_reg(18),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[16]_i_1_n_4\,
      Q => BitCounter_Int_reg(19),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[0]_i_2_n_6\,
      Q => BitCounter_Int_reg(1),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[20]_i_1_n_7\,
      Q => BitCounter_Int_reg(20),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[16]_i_1_n_0\,
      CO(3) => \BitCounter_Int_reg[20]_i_1_n_0\,
      CO(2) => \BitCounter_Int_reg[20]_i_1_n_1\,
      CO(1) => \BitCounter_Int_reg[20]_i_1_n_2\,
      CO(0) => \BitCounter_Int_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[20]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[20]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[20]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[20]_i_1_n_7\,
      S(3 downto 0) => BitCounter_Int_reg(23 downto 20)
    );
\BitCounter_Int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[20]_i_1_n_6\,
      Q => BitCounter_Int_reg(21),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[20]_i_1_n_5\,
      Q => BitCounter_Int_reg(22),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[20]_i_1_n_4\,
      Q => BitCounter_Int_reg(23),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[24]_i_1_n_7\,
      Q => BitCounter_Int_reg(24),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[20]_i_1_n_0\,
      CO(3) => \BitCounter_Int_reg[24]_i_1_n_0\,
      CO(2) => \BitCounter_Int_reg[24]_i_1_n_1\,
      CO(1) => \BitCounter_Int_reg[24]_i_1_n_2\,
      CO(0) => \BitCounter_Int_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[24]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[24]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[24]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[24]_i_1_n_7\,
      S(3 downto 0) => BitCounter_Int_reg(27 downto 24)
    );
\BitCounter_Int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[24]_i_1_n_6\,
      Q => BitCounter_Int_reg(25),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[24]_i_1_n_5\,
      Q => BitCounter_Int_reg(26),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[24]_i_1_n_4\,
      Q => BitCounter_Int_reg(27),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[28]_i_1_n_7\,
      Q => BitCounter_Int_reg(28),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[24]_i_1_n_0\,
      CO(3) => \NLW_BitCounter_Int_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \BitCounter_Int_reg[28]_i_1_n_1\,
      CO(1) => \BitCounter_Int_reg[28]_i_1_n_2\,
      CO(0) => \BitCounter_Int_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[28]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[28]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[28]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[28]_i_1_n_7\,
      S(3 downto 0) => BitCounter_Int_reg(31 downto 28)
    );
\BitCounter_Int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[28]_i_1_n_6\,
      Q => BitCounter_Int_reg(29),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[0]_i_2_n_5\,
      Q => BitCounter_Int_reg(2),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[28]_i_1_n_5\,
      Q => BitCounter_Int_reg(30),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[28]_i_1_n_4\,
      Q => BitCounter_Int_reg(31),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[0]_i_2_n_4\,
      Q => BitCounter_Int_reg(3),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[4]_i_1_n_7\,
      Q => BitCounter_Int_reg(4),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[0]_i_2_n_0\,
      CO(3) => \BitCounter_Int_reg[4]_i_1_n_0\,
      CO(2) => \BitCounter_Int_reg[4]_i_1_n_1\,
      CO(1) => \BitCounter_Int_reg[4]_i_1_n_2\,
      CO(0) => \BitCounter_Int_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[4]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[4]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[4]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[4]_i_1_n_7\,
      S(3 downto 0) => BitCounter_Int_reg(7 downto 4)
    );
\BitCounter_Int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[4]_i_1_n_6\,
      Q => BitCounter_Int_reg(5),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[4]_i_1_n_5\,
      Q => BitCounter_Int_reg(6),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[4]_i_1_n_4\,
      Q => BitCounter_Int_reg(7),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[8]_i_1_n_7\,
      Q => BitCounter_Int_reg(8),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[4]_i_1_n_0\,
      CO(3) => \BitCounter_Int_reg[8]_i_1_n_0\,
      CO(2) => \BitCounter_Int_reg[8]_i_1_n_1\,
      CO(1) => \BitCounter_Int_reg[8]_i_1_n_2\,
      CO(0) => \BitCounter_Int_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[8]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[8]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[8]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[8]_i_1_n_7\,
      S(3 downto 0) => BitCounter_Int_reg(11 downto 8)
    );
\BitCounter_Int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[8]_i_1_n_6\,
      Q => BitCounter_Int_reg(9),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
FIFO_Int_Full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFEFAAAA0020"
    )
        port map (
      I0 => FIFO_Int_Full,
      I1 => \FSM_onehot_I2SState[3]_i_2_n_0\,
      I2 => Q(5),
      I3 => CO(0),
      I4 => FIFO_Int_Full_reg,
      I5 => FIFO_Int_Full_reg_0,
      O => \FSM_onehot_I2SState_reg[5]\
    );
\FSM_onehot_I2SState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080FF8080"
    )
        port map (
      I0 => Locked,
      I1 => Resetn_IBUF,
      I2 => Q(0),
      I3 => \FSM_onehot_I2SState[3]_i_2_n_0\,
      I4 => Q(5),
      I5 => CO(0),
      O => D(0)
    );
\FSM_onehot_I2SState[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Q(2),
      I1 => in2,
      I2 => Q(1),
      O => D(1)
    );
\FSM_onehot_I2SState[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => in2,
      I1 => Q(2),
      I2 => \FSM_onehot_I2SState[3]_i_2_n_0\,
      I3 => CO(0),
      I4 => Q(5),
      O => D(2)
    );
\FSM_onehot_I2SState[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => \FSM_onehot_I2SState[3]_i_3_n_0\,
      I1 => BitCounter_Int_reg(0),
      I2 => BitCounter_Int_reg(4),
      I3 => \FSM_onehot_I2SState[5]_i_9_n_0\,
      I4 => \FSM_onehot_I2SState[3]_i_4_n_0\,
      I5 => \FSM_onehot_I2SState[5]_i_6_n_0\,
      O => \FSM_onehot_I2SState[3]_i_2_n_0\
    );
\FSM_onehot_I2SState[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => BitCounter_Int_reg(2),
      I1 => BitCounter_Int_reg(3),
      O => \FSM_onehot_I2SState[3]_i_3_n_0\
    );
\FSM_onehot_I2SState[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => BitCounter_Int_reg(10),
      I1 => BitCounter_Int_reg(11),
      I2 => BitCounter_Int_reg(8),
      I3 => BitCounter_Int_reg(9),
      I4 => \FSM_onehot_I2SState[5]_i_8_n_0\,
      O => \FSM_onehot_I2SState[3]_i_4_n_0\
    );
\FSM_onehot_I2SState[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => Q(4),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => Q(3),
      O => D(3)
    );
\FSM_onehot_I2SState[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BitCounter_Int_reg(21),
      I1 => BitCounter_Int_reg(20),
      I2 => BitCounter_Int_reg(23),
      I3 => BitCounter_Int_reg(22),
      O => \FSM_onehot_I2SState[5]_i_10_n_0\
    );
\FSM_onehot_I2SState[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BitCounter_Int_reg(29),
      I1 => BitCounter_Int_reg(28),
      I2 => BitCounter_Int_reg(31),
      I3 => BitCounter_Int_reg(30),
      O => \FSM_onehot_I2SState[5]_i_11_n_0\
    );
\FSM_onehot_I2SState[5]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BitCounter_Int_reg(5),
      I1 => BitCounter_Int_reg(1),
      I2 => BitCounter_Int_reg(7),
      I3 => BitCounter_Int_reg(6),
      O => \FSM_onehot_I2SState[5]_i_12_n_0\
    );
\FSM_onehot_I2SState[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F444"
    )
        port map (
      I0 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I1 => Q(4),
      I2 => Q(5),
      I3 => \FSM_onehot_I2SState[5]_i_4_n_0\,
      I4 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      O => D(4)
    );
\FSM_onehot_I2SState[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BitCounter_Int_reg(2),
      I1 => BitCounter_Int_reg(0),
      I2 => BitCounter_Int_reg(4),
      I3 => BitCounter_Int_reg(3),
      O => \FSM_onehot_I2SState[5]_i_3_n_0\
    );
\FSM_onehot_I2SState[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => BitCounter_Int_reg(4),
      I1 => BitCounter_Int_reg(0),
      I2 => BitCounter_Int_reg(3),
      I3 => BitCounter_Int_reg(2),
      O => \FSM_onehot_I2SState[5]_i_4_n_0\
    );
\FSM_onehot_I2SState[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_I2SState[5]_i_6_n_0\,
      I1 => \FSM_onehot_I2SState[5]_i_7_n_0\,
      I2 => BitCounter_Int_reg(8),
      I3 => BitCounter_Int_reg(9),
      I4 => \FSM_onehot_I2SState[5]_i_8_n_0\,
      I5 => \FSM_onehot_I2SState[5]_i_9_n_0\,
      O => \FSM_onehot_I2SState[5]_i_5_n_0\
    );
\FSM_onehot_I2SState[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => BitCounter_Int_reg(18),
      I1 => BitCounter_Int_reg(19),
      I2 => BitCounter_Int_reg(16),
      I3 => BitCounter_Int_reg(17),
      I4 => \FSM_onehot_I2SState[5]_i_10_n_0\,
      O => \FSM_onehot_I2SState[5]_i_6_n_0\
    );
\FSM_onehot_I2SState[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BitCounter_Int_reg(10),
      I1 => BitCounter_Int_reg(11),
      O => \FSM_onehot_I2SState[5]_i_7_n_0\
    );
\FSM_onehot_I2SState[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BitCounter_Int_reg(13),
      I1 => BitCounter_Int_reg(12),
      I2 => BitCounter_Int_reg(15),
      I3 => BitCounter_Int_reg(14),
      O => \FSM_onehot_I2SState[5]_i_8_n_0\
    );
\FSM_onehot_I2SState[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_I2SState[5]_i_11_n_0\,
      I1 => BitCounter_Int_reg(25),
      I2 => BitCounter_Int_reg(24),
      I3 => BitCounter_Int_reg(27),
      I4 => BitCounter_Int_reg(26),
      I5 => \FSM_onehot_I2SState[5]_i_12_n_0\,
      O => \FSM_onehot_I2SState[5]_i_9_n_0\
    );
LRCLK_Int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Locked,
      I1 => Resetn_IBUF,
      O => \^sr\(0)
    );
LRCLK_Int_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(23),
      I1 => BitCounter_Int_reg(22),
      O => LRCLK_Int_i_10_n_0
    );
LRCLK_Int_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(21),
      I1 => BitCounter_Int_reg(20),
      O => LRCLK_Int_i_11_n_0
    );
LRCLK_Int_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(19),
      I1 => BitCounter_Int_reg(18),
      O => LRCLK_Int_i_13_n_0
    );
LRCLK_Int_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(17),
      I1 => BitCounter_Int_reg(16),
      O => LRCLK_Int_i_14_n_0
    );
LRCLK_Int_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(15),
      I1 => BitCounter_Int_reg(14),
      O => LRCLK_Int_i_15_n_0
    );
LRCLK_Int_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(13),
      I1 => BitCounter_Int_reg(12),
      O => LRCLK_Int_i_16_n_0
    );
LRCLK_Int_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(4),
      I1 => BitCounter_Int_reg(5),
      O => LRCLK_Int_i_17_n_0
    );
LRCLK_Int_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(11),
      I1 => BitCounter_Int_reg(10),
      O => LRCLK_Int_i_18_n_0
    );
LRCLK_Int_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(9),
      I1 => BitCounter_Int_reg(8),
      O => LRCLK_Int_i_19_n_0
    );
LRCLK_Int_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(7),
      I1 => BitCounter_Int_reg(6),
      O => LRCLK_Int_i_20_n_0
    );
LRCLK_Int_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => BitCounter_Int_reg(4),
      I1 => BitCounter_Int_reg(5),
      O => LRCLK_Int_i_21_n_0
    );
LRCLK_Int_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(31),
      I1 => BitCounter_Int_reg(30),
      O => LRCLK_Int_i_5_n_0
    );
LRCLK_Int_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(29),
      I1 => BitCounter_Int_reg(28),
      O => LRCLK_Int_i_6_n_0
    );
LRCLK_Int_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(27),
      I1 => BitCounter_Int_reg(26),
      O => LRCLK_Int_i_8_n_0
    );
LRCLK_Int_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter_Int_reg(25),
      I1 => BitCounter_Int_reg(24),
      O => LRCLK_Int_i_9_n_0
    );
LRCLK_Int_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => LRCLK_Int_reg_i_2_n_5,
      Q => LRCLK_OBUF,
      S => \^sr\(0)
    );
LRCLK_Int_reg_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => LRCLK_Int_reg_i_12_n_0,
      CO(2) => LRCLK_Int_reg_i_12_n_1,
      CO(1) => LRCLK_Int_reg_i_12_n_2,
      CO(0) => LRCLK_Int_reg_i_12_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => LRCLK_Int_i_17_n_0,
      O(3 downto 0) => NLW_LRCLK_Int_reg_i_12_O_UNCONNECTED(3 downto 0),
      S(3) => LRCLK_Int_i_18_n_0,
      S(2) => LRCLK_Int_i_19_n_0,
      S(1) => LRCLK_Int_i_20_n_0,
      S(0) => LRCLK_Int_i_21_n_0
    );
LRCLK_Int_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => LRCLK_Int_reg_i_4_n_0,
      CO(3 downto 2) => NLW_LRCLK_Int_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => LRCLK_Int1,
      CO(0) => LRCLK_Int_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => BitCounter_Int_reg(31),
      DI(0) => '0',
      O(3) => NLW_LRCLK_Int_reg_i_2_O_UNCONNECTED(3),
      O(2) => LRCLK_Int_reg_i_2_n_5,
      O(1 downto 0) => NLW_LRCLK_Int_reg_i_2_O_UNCONNECTED(1 downto 0),
      S(3 downto 2) => B"01",
      S(1) => LRCLK_Int_i_5_n_0,
      S(0) => LRCLK_Int_i_6_n_0
    );
LRCLK_Int_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => LRCLK_Int_reg_i_7_n_0,
      CO(3) => LRCLK_Int_reg_i_4_n_0,
      CO(2) => LRCLK_Int_reg_i_4_n_1,
      CO(1) => LRCLK_Int_reg_i_4_n_2,
      CO(0) => LRCLK_Int_reg_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_LRCLK_Int_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => LRCLK_Int_i_8_n_0,
      S(2) => LRCLK_Int_i_9_n_0,
      S(1) => LRCLK_Int_i_10_n_0,
      S(0) => LRCLK_Int_i_11_n_0
    );
LRCLK_Int_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => LRCLK_Int_reg_i_12_n_0,
      CO(3) => LRCLK_Int_reg_i_7_n_0,
      CO(2) => LRCLK_Int_reg_i_7_n_1,
      CO(1) => LRCLK_Int_reg_i_7_n_2,
      CO(0) => LRCLK_Int_reg_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_LRCLK_Int_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => LRCLK_Int_i_13_n_0,
      S(2) => LRCLK_Int_i_14_n_0,
      S(1) => LRCLK_Int_i_15_n_0,
      S(0) => LRCLK_Int_i_16_n_0
    );
SD_Int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => p_1_in,
      Q => SD_OBUF,
      R => \^sr\(0)
    );
\ShiftReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \ShiftReg_reg[31]_0\(0),
      I1 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I2 => BitCounter_Int_reg(2),
      I3 => BitCounter_Int_reg(0),
      I4 => BitCounter_Int_reg(4),
      I5 => BitCounter_Int_reg(3),
      O => ShiftReg(0)
    );
\ShiftReg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(10),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(10),
      O => ShiftReg(10)
    );
\ShiftReg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(11),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(11),
      O => ShiftReg(11)
    );
\ShiftReg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(12),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(12),
      O => ShiftReg(12)
    );
\ShiftReg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(13),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(13),
      O => ShiftReg(13)
    );
\ShiftReg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(14),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(14),
      O => ShiftReg(14)
    );
\ShiftReg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(15),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(15),
      O => ShiftReg(15)
    );
\ShiftReg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(16),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(16),
      O => ShiftReg(16)
    );
\ShiftReg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(17),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(17),
      O => ShiftReg(17)
    );
\ShiftReg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(18),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(18),
      O => ShiftReg(18)
    );
\ShiftReg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(19),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(19),
      O => ShiftReg(19)
    );
\ShiftReg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(1),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(1),
      O => ShiftReg(1)
    );
\ShiftReg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(20),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(20),
      O => ShiftReg(20)
    );
\ShiftReg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(21),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(21),
      O => ShiftReg(21)
    );
\ShiftReg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(22),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(22),
      O => ShiftReg(22)
    );
\ShiftReg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(23),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(23),
      O => ShiftReg(23)
    );
\ShiftReg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(24),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(24),
      O => ShiftReg(24)
    );
\ShiftReg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(25),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(25),
      O => ShiftReg(25)
    );
\ShiftReg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(26),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(26),
      O => ShiftReg(26)
    );
\ShiftReg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(27),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(27),
      O => ShiftReg(27)
    );
\ShiftReg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(28),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(28),
      O => ShiftReg(28)
    );
\ShiftReg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(29),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(29),
      O => ShiftReg(29)
    );
\ShiftReg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(2),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(2),
      O => ShiftReg(2)
    );
\ShiftReg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(30),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(30),
      O => ShiftReg(30)
    );
\ShiftReg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(31),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(31),
      O => ShiftReg(31)
    );
\ShiftReg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(3),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(3),
      O => ShiftReg(3)
    );
\ShiftReg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(4),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(4),
      O => ShiftReg(4)
    );
\ShiftReg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(5),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(5),
      O => ShiftReg(5)
    );
\ShiftReg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(6),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(6),
      O => ShiftReg(6)
    );
\ShiftReg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(7),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(7),
      O => ShiftReg(7)
    );
\ShiftReg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(8),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(8),
      O => ShiftReg(8)
    );
\ShiftReg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => data1(9),
      I1 => \FSM_onehot_I2SState[5]_i_3_n_0\,
      I2 => \FSM_onehot_I2SState[5]_i_5_n_0\,
      I3 => \ShiftReg_reg[31]_0\(9),
      O => ShiftReg(9)
    );
\ShiftReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(0),
      Q => data1(1),
      R => \^sr\(0)
    );
\ShiftReg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(10),
      Q => data1(11),
      R => \^sr\(0)
    );
\ShiftReg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(11),
      Q => data1(12),
      R => \^sr\(0)
    );
\ShiftReg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(12),
      Q => data1(13),
      R => \^sr\(0)
    );
\ShiftReg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(13),
      Q => data1(14),
      R => \^sr\(0)
    );
\ShiftReg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(14),
      Q => data1(15),
      R => \^sr\(0)
    );
\ShiftReg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(15),
      Q => data1(16),
      R => \^sr\(0)
    );
\ShiftReg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(16),
      Q => data1(17),
      R => \^sr\(0)
    );
\ShiftReg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(17),
      Q => data1(18),
      R => \^sr\(0)
    );
\ShiftReg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(18),
      Q => data1(19),
      R => \^sr\(0)
    );
\ShiftReg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(19),
      Q => data1(20),
      R => \^sr\(0)
    );
\ShiftReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(1),
      Q => data1(2),
      R => \^sr\(0)
    );
\ShiftReg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(20),
      Q => data1(21),
      R => \^sr\(0)
    );
\ShiftReg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(21),
      Q => data1(22),
      R => \^sr\(0)
    );
\ShiftReg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(22),
      Q => data1(23),
      R => \^sr\(0)
    );
\ShiftReg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(23),
      Q => data1(24),
      R => \^sr\(0)
    );
\ShiftReg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(24),
      Q => data1(25),
      R => \^sr\(0)
    );
\ShiftReg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(25),
      Q => data1(26),
      R => \^sr\(0)
    );
\ShiftReg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(26),
      Q => data1(27),
      R => \^sr\(0)
    );
\ShiftReg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(27),
      Q => data1(28),
      R => \^sr\(0)
    );
\ShiftReg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(28),
      Q => data1(29),
      R => \^sr\(0)
    );
\ShiftReg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(29),
      Q => data1(30),
      R => \^sr\(0)
    );
\ShiftReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(2),
      Q => data1(3),
      R => \^sr\(0)
    );
\ShiftReg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(30),
      Q => data1(31),
      R => \^sr\(0)
    );
\ShiftReg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(31),
      Q => p_1_in,
      R => \^sr\(0)
    );
\ShiftReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(3),
      Q => data1(4),
      R => \^sr\(0)
    );
\ShiftReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(4),
      Q => data1(5),
      R => \^sr\(0)
    );
\ShiftReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(5),
      Q => data1(6),
      R => \^sr\(0)
    );
\ShiftReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(6),
      Q => data1(7),
      R => \^sr\(0)
    );
\ShiftReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(7),
      Q => data1(8),
      R => \^sr\(0)
    );
\ShiftReg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(8),
      Q => data1(9),
      R => \^sr\(0)
    );
\ShiftReg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => ShiftReg(9),
      Q => data1(10),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \DataROM_AXI4S_ROM_0_1__blk_mem_gen_prim_wrapper_init\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_prim_wrapper_init\ : entity is "blk_mem_gen_prim_wrapper_init";
end \DataROM_AXI4S_ROM_0_1__blk_mem_gen_prim_wrapper_init\;

architecture STRUCTURE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_prim_wrapper_init\ is
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
      INIT_00 => X"E78DE2A0DD4ED79FD197CB3CC495BDAAB67FAF1EA78D9FD597FC900A88098000",
      INIT_01 => X"F702F9BCFBFAFDBBFEFDFFBFFFFFFFBFFEFDFDBBFBFAF9BCF702F3D1F02AEC12",
      INIT_02 => X"97FC9FD5A78DAF1EB67FBDAAC495CB3CD197D79FDD4EE2A0E78DEC12F02AF3D1",
      INIT_03 => X"22B128602E6834C33B6A4255498050E15872602A68036FF577F680008809900A",
      INIT_04 => X"040502440102004000000040010202440405064308FD0C2E0FD513ED18721D5F",
      INIT_05 => X"587250E1498042553B6A34C32E68286022B11D5F187213ED0FD50C2E08FD0643",
      INIT_06 => X"00000000000000000000000000000000000000000000000077F66FF56803602A",
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
      DOADO(15 downto 0) => douta(15 downto 0),
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
entity ClockGeneration_clk_wiz_0_0 is
  port (
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end ClockGeneration_clk_wiz_0_0;

architecture STRUCTURE of ClockGeneration_clk_wiz_0_0 is
begin
inst: entity work.ClockGeneration_clk_wiz_0_0_ClockGeneration_clk_wiz_0_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      locked => locked
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
    AudioClock_reg_0 : out STD_LOGIC;
    TREADY : out STD_LOGIC;
    SCLK_OBUF : out STD_LOGIC;
    SD_Int_reg : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Clock : in STD_LOGIC;
    Resetn_IBUF : in STD_LOGIC;
    Locked : in STD_LOGIC;
    TVALID : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end I2S;

architecture STRUCTURE of I2S is
  signal AudioClock_i_1_n_0 : STD_LOGIC;
  signal \^audioclock_reg_0\ : STD_LOGIC;
  signal \AudioData[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[0]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[10]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[10]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[11]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[11]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[12]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[12]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[13]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[13]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[14]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[14]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[15]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[15]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[16]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[16]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[17]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[17]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[18]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[18]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[19]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[19]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[1]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[20]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[20]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[21]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[21]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[22]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[22]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[23]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[23]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[24]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[24]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[25]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[25]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[26]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[26]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[27]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[27]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[28]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[28]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[29]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[29]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[2]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[2]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[30]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[30]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[31]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[31]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[3]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[3]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[4]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[4]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[5]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[5]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[6]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[6]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[7]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[7]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[8]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[8]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[9]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[9]_i_2_n_0\ : STD_LOGIC;
  signal Data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal FIFOState : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FIFO_Ext[0]_3\ : STD_LOGIC;
  signal \FIFO_Ext[1]_4\ : STD_LOGIC;
  signal \FIFO_Ext[2]_5\ : STD_LOGIC;
  signal \FIFO_Ext[3][31]_i_10_n_0\ : STD_LOGIC;
  signal \FIFO_Ext[3][31]_i_11_n_0\ : STD_LOGIC;
  signal \FIFO_Ext[3][31]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_Ext[3][31]_i_4_n_0\ : STD_LOGIC;
  signal \FIFO_Ext[3][31]_i_5_n_0\ : STD_LOGIC;
  signal \FIFO_Ext[3][31]_i_6_n_0\ : STD_LOGIC;
  signal \FIFO_Ext[3][31]_i_7_n_0\ : STD_LOGIC;
  signal \FIFO_Ext[3][31]_i_8_n_0\ : STD_LOGIC;
  signal \FIFO_Ext[3]_2\ : STD_LOGIC;
  signal FIFO_Ext_Full : STD_LOGIC;
  signal FIFO_Ext_Full_i_1_n_0 : STD_LOGIC;
  signal FIFO_Ext_Full_reg_n_0 : STD_LOGIC;
  signal \FIFO_Ext_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_Ext_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_Ext_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_Ext_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_Int[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \FIFO_Int[3][31]_i_2_n_0\ : STD_LOGIC;
  signal FIFO_Int_Full : STD_LOGIC;
  signal FIFO_Int_Full_reg_n_0 : STD_LOGIC;
  signal \FIFO_Int_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_Int_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_Int_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_Int_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FSM_onehot_I2SState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_I2SState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_I2SState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_I2SState_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_I2SState_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_I2SState_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_I2SState_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_sequential_FIFOState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_FIFOState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_FIFOState_reg_n_0_[1]\ : STD_LOGIC;
  signal MCLK_Cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \MCLK_Cnt[31]_i_10_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_11_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal MCLK_Cnt_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \MCLK_Cnt_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[31]_i_3_n_7\ : STD_LOGIC;
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
  signal ReadCount : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ReadCount0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \ReadCount1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__0_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__0_n_1\ : STD_LOGIC;
  signal \ReadCount1_carry__0_n_2\ : STD_LOGIC;
  signal \ReadCount1_carry__0_n_3\ : STD_LOGIC;
  signal \ReadCount1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__1_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__1_n_1\ : STD_LOGIC;
  signal \ReadCount1_carry__1_n_2\ : STD_LOGIC;
  signal \ReadCount1_carry__1_n_3\ : STD_LOGIC;
  signal \ReadCount1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ReadCount1_carry__2_n_1\ : STD_LOGIC;
  signal \ReadCount1_carry__2_n_2\ : STD_LOGIC;
  signal \ReadCount1_carry__2_n_3\ : STD_LOGIC;
  signal ReadCount1_carry_i_1_n_0 : STD_LOGIC;
  signal ReadCount1_carry_i_2_n_0 : STD_LOGIC;
  signal ReadCount1_carry_i_3_n_0 : STD_LOGIC;
  signal ReadCount1_carry_i_4_n_0 : STD_LOGIC;
  signal ReadCount1_carry_i_5_n_0 : STD_LOGIC;
  signal ReadCount1_carry_n_0 : STD_LOGIC;
  signal ReadCount1_carry_n_1 : STD_LOGIC;
  signal ReadCount1_carry_n_2 : STD_LOGIC;
  signal ReadCount1_carry_n_3 : STD_LOGIC;
  signal \ReadCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount[0]_i_2_n_0\ : STD_LOGIC;
  signal \ReadCount[31]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ReadCount_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ReadCount_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ReadCount_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ReadCount_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ReadCount_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ReadCount_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \ReadCount_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \ReadCount_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \ReadCount_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \ReadCount_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \ReadCount_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \ReadCount_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \ReadCount_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \ReadCount_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \ReadCount_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \ReadCount_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \ReadCount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ReadCount_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ReadCount_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ReadCount_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCount_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ReadCount_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ReadCount_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \^tready\ : STD_LOGIC;
  signal TREADY_Int_i_1_n_0 : STD_LOGIC;
  signal Transmitter_n_3 : STD_LOGIC;
  signal Transmitter_n_4 : STD_LOGIC;
  signal Transmitter_n_5 : STD_LOGIC;
  signal Transmitter_n_6 : STD_LOGIC;
  signal Transmitter_n_7 : STD_LOGIC;
  signal Transmitter_n_8 : STD_LOGIC;
  signal WriteCount : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal WriteCount0 : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \WriteCount0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal WriteCount_0 : STD_LOGIC;
  signal \WriteCount_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \WriteCount_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \WriteCount_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \WriteCount_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \WriteCount_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \WriteCount_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \WriteCount_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \WriteCount_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \WriteCount_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \WriteCount_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \WriteCount_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \WriteCount_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \WriteCount_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \WriteCount_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \WriteCount_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \WriteCount_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \WriteCount_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \WriteCount_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \WriteCount_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \WriteCount_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \WriteCount_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \WriteCount_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \WriteCount_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \WriteCount_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \WriteCount_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \WriteCount_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \WriteCount_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \WriteCount_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \WriteCount_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \WriteCount_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[10]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[11]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[12]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[13]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[14]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[15]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[16]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[17]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[18]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[19]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[20]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[21]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[22]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[23]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[24]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[25]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[26]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[27]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[28]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[29]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[30]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[31]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[3]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[4]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[5]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[6]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[7]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[8]\ : STD_LOGIC;
  signal \WriteCount_reg_n_0_[9]\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal in4 : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal \NLW_MCLK_Cnt_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_MCLK_Cnt_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ReadCount1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ReadCount1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ReadCount1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ReadCount1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ReadCount_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ReadCount_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_WriteCount0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_WriteCount0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_WriteCount0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_WriteCount0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_WriteCount_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_WriteCount_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AudioClock_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FIFO_Ext[3][31]_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of FIFO_Ext_Full_i_1 : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_I2SState_reg[0]\ : label is "reset:000001,waitforsync:000100,starttransmission:010000,waitfortransmissionend:100000,waitforfifo:000010,loaddata:001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_I2SState_reg[1]\ : label is "reset:000001,waitforsync:000100,starttransmission:010000,waitfortransmissionend:100000,waitforfifo:000010,loaddata:001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_I2SState_reg[2]\ : label is "reset:000001,waitforsync:000100,starttransmission:010000,waitfortransmissionend:100000,waitforfifo:000010,loaddata:001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_I2SState_reg[3]\ : label is "reset:000001,waitforsync:000100,starttransmission:010000,waitfortransmissionend:100000,waitforfifo:000010,loaddata:001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_I2SState_reg[4]\ : label is "reset:000001,waitforsync:000100,starttransmission:010000,waitfortransmissionend:100000,waitforfifo:000010,loaddata:001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_I2SState_reg[5]\ : label is "reset:000001,waitforsync:000100,starttransmission:010000,waitfortransmissionend:100000,waitforfifo:000010,loaddata:001000";
  attribute SOFT_HLUTNM of \FSM_sequential_FIFOState[1]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES of \FSM_sequential_FIFOState_reg[0]\ : label is "reset:00,ackdata:10,fifofull:11,waitforvalid:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_FIFOState_reg[1]\ : label is "reset:00,ackdata:10,fifofull:11,waitforvalid:01";
  attribute SOFT_HLUTNM of \MCLK_Cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \MCLK_Cnt[10]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \MCLK_Cnt[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \MCLK_Cnt[12]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \MCLK_Cnt[13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \MCLK_Cnt[14]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \MCLK_Cnt[15]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \MCLK_Cnt[16]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \MCLK_Cnt[17]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \MCLK_Cnt[18]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \MCLK_Cnt[19]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \MCLK_Cnt[20]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \MCLK_Cnt[21]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \MCLK_Cnt[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \MCLK_Cnt[23]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \MCLK_Cnt[24]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \MCLK_Cnt[25]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \MCLK_Cnt[26]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \MCLK_Cnt[27]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \MCLK_Cnt[28]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \MCLK_Cnt[29]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \MCLK_Cnt[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \MCLK_Cnt[30]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \MCLK_Cnt[31]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \MCLK_Cnt[31]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \MCLK_Cnt[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \MCLK_Cnt[4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \MCLK_Cnt[5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \MCLK_Cnt[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \MCLK_Cnt[7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \MCLK_Cnt[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \MCLK_Cnt[9]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of SCLK_OBUF_inst_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of TREADY_Int_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \WriteCount[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \WriteCount[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \WriteCount[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \WriteCount[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \WriteCount[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \WriteCount[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \WriteCount[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \WriteCount[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \WriteCount[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \WriteCount[18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \WriteCount[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \WriteCount[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \WriteCount[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \WriteCount[21]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \WriteCount[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \WriteCount[23]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \WriteCount[24]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \WriteCount[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \WriteCount[26]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \WriteCount[27]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \WriteCount[28]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \WriteCount[29]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \WriteCount[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \WriteCount[30]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \WriteCount[31]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \WriteCount[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \WriteCount[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \WriteCount[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \WriteCount[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \WriteCount[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \WriteCount[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \WriteCount[9]_i_1\ : label is "soft_lutpair17";
begin
  AudioClock_reg_0 <= \^audioclock_reg_0\;
  TREADY <= \^tready\;
AudioClock_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => Locked,
      I2 => Resetn_IBUF,
      I3 => \^audioclock_reg_0\,
      O => AudioClock_i_1_n_0
    );
AudioClock_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => AudioClock_i_1_n_0,
      Q => \^audioclock_reg_0\,
      R => '0'
    );
\AudioData[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(0),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[0]_i_2_n_0\,
      O => \AudioData[0]_i_1_n_0\
    );
\AudioData[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(0),
      I1 => \FIFO_Int_reg[1]\(0),
      I2 => \FIFO_Int_reg[2]\(0),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[0]_i_2_n_0\
    );
\AudioData[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(10),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[10]_i_2_n_0\,
      O => \AudioData[10]_i_1_n_0\
    );
\AudioData[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(10),
      I1 => \FIFO_Int_reg[1]\(10),
      I2 => \FIFO_Int_reg[2]\(10),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[10]_i_2_n_0\
    );
\AudioData[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(11),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[11]_i_2_n_0\,
      O => \AudioData[11]_i_1_n_0\
    );
\AudioData[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(11),
      I1 => \FIFO_Int_reg[1]\(11),
      I2 => \FIFO_Int_reg[2]\(11),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[11]_i_2_n_0\
    );
\AudioData[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(12),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[12]_i_2_n_0\,
      O => \AudioData[12]_i_1_n_0\
    );
\AudioData[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(12),
      I1 => \FIFO_Int_reg[1]\(12),
      I2 => \FIFO_Int_reg[2]\(12),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[12]_i_2_n_0\
    );
\AudioData[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(13),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[13]_i_2_n_0\,
      O => \AudioData[13]_i_1_n_0\
    );
\AudioData[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(13),
      I1 => \FIFO_Int_reg[1]\(13),
      I2 => \FIFO_Int_reg[2]\(13),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[13]_i_2_n_0\
    );
\AudioData[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(14),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[14]_i_2_n_0\,
      O => \AudioData[14]_i_1_n_0\
    );
\AudioData[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(14),
      I1 => \FIFO_Int_reg[1]\(14),
      I2 => \FIFO_Int_reg[2]\(14),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[14]_i_2_n_0\
    );
\AudioData[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(15),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[15]_i_2_n_0\,
      O => \AudioData[15]_i_1_n_0\
    );
\AudioData[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(15),
      I1 => \FIFO_Int_reg[1]\(15),
      I2 => \FIFO_Int_reg[2]\(15),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[15]_i_2_n_0\
    );
\AudioData[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(16),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[16]_i_2_n_0\,
      O => \AudioData[16]_i_1_n_0\
    );
\AudioData[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(16),
      I1 => \FIFO_Int_reg[1]\(16),
      I2 => \FIFO_Int_reg[2]\(16),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[16]_i_2_n_0\
    );
\AudioData[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(17),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[17]_i_2_n_0\,
      O => \AudioData[17]_i_1_n_0\
    );
\AudioData[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(17),
      I1 => \FIFO_Int_reg[1]\(17),
      I2 => \FIFO_Int_reg[2]\(17),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[17]_i_2_n_0\
    );
\AudioData[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(18),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[18]_i_2_n_0\,
      O => \AudioData[18]_i_1_n_0\
    );
\AudioData[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(18),
      I1 => \FIFO_Int_reg[1]\(18),
      I2 => \FIFO_Int_reg[2]\(18),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[18]_i_2_n_0\
    );
\AudioData[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(19),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[19]_i_2_n_0\,
      O => \AudioData[19]_i_1_n_0\
    );
\AudioData[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(19),
      I1 => \FIFO_Int_reg[1]\(19),
      I2 => \FIFO_Int_reg[2]\(19),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[19]_i_2_n_0\
    );
\AudioData[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(1),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[1]_i_2_n_0\,
      O => \AudioData[1]_i_1_n_0\
    );
\AudioData[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(1),
      I1 => \FIFO_Int_reg[1]\(1),
      I2 => \FIFO_Int_reg[2]\(1),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[1]_i_2_n_0\
    );
\AudioData[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(20),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[20]_i_2_n_0\,
      O => \AudioData[20]_i_1_n_0\
    );
\AudioData[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(20),
      I1 => \FIFO_Int_reg[1]\(20),
      I2 => \FIFO_Int_reg[2]\(20),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[20]_i_2_n_0\
    );
\AudioData[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(21),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[21]_i_2_n_0\,
      O => \AudioData[21]_i_1_n_0\
    );
\AudioData[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(21),
      I1 => \FIFO_Int_reg[1]\(21),
      I2 => \FIFO_Int_reg[2]\(21),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[21]_i_2_n_0\
    );
\AudioData[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(22),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[22]_i_2_n_0\,
      O => \AudioData[22]_i_1_n_0\
    );
\AudioData[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(22),
      I1 => \FIFO_Int_reg[1]\(22),
      I2 => \FIFO_Int_reg[2]\(22),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[22]_i_2_n_0\
    );
\AudioData[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(23),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[23]_i_2_n_0\,
      O => \AudioData[23]_i_1_n_0\
    );
\AudioData[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(23),
      I1 => \FIFO_Int_reg[1]\(23),
      I2 => \FIFO_Int_reg[2]\(23),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[23]_i_2_n_0\
    );
\AudioData[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(24),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[24]_i_2_n_0\,
      O => \AudioData[24]_i_1_n_0\
    );
\AudioData[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(24),
      I1 => \FIFO_Int_reg[1]\(24),
      I2 => \FIFO_Int_reg[2]\(24),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[24]_i_2_n_0\
    );
\AudioData[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(25),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[25]_i_2_n_0\,
      O => \AudioData[25]_i_1_n_0\
    );
\AudioData[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(25),
      I1 => \FIFO_Int_reg[1]\(25),
      I2 => \FIFO_Int_reg[2]\(25),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[25]_i_2_n_0\
    );
\AudioData[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(26),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[26]_i_2_n_0\,
      O => \AudioData[26]_i_1_n_0\
    );
\AudioData[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(26),
      I1 => \FIFO_Int_reg[1]\(26),
      I2 => \FIFO_Int_reg[2]\(26),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[26]_i_2_n_0\
    );
\AudioData[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(27),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[27]_i_2_n_0\,
      O => \AudioData[27]_i_1_n_0\
    );
\AudioData[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(27),
      I1 => \FIFO_Int_reg[1]\(27),
      I2 => \FIFO_Int_reg[2]\(27),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[27]_i_2_n_0\
    );
\AudioData[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(28),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[28]_i_2_n_0\,
      O => \AudioData[28]_i_1_n_0\
    );
\AudioData[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(28),
      I1 => \FIFO_Int_reg[1]\(28),
      I2 => \FIFO_Int_reg[2]\(28),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[28]_i_2_n_0\
    );
\AudioData[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(29),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[29]_i_2_n_0\,
      O => \AudioData[29]_i_1_n_0\
    );
\AudioData[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(29),
      I1 => \FIFO_Int_reg[1]\(29),
      I2 => \FIFO_Int_reg[2]\(29),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[29]_i_2_n_0\
    );
\AudioData[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(2),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[2]_i_2_n_0\,
      O => \AudioData[2]_i_1_n_0\
    );
\AudioData[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(2),
      I1 => \FIFO_Int_reg[1]\(2),
      I2 => \FIFO_Int_reg[2]\(2),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[2]_i_2_n_0\
    );
\AudioData[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(30),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[30]_i_2_n_0\,
      O => \AudioData[30]_i_1_n_0\
    );
\AudioData[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(30),
      I1 => \FIFO_Int_reg[1]\(30),
      I2 => \FIFO_Int_reg[2]\(30),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[30]_i_2_n_0\
    );
\AudioData[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(31),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[31]_i_2_n_0\,
      O => \AudioData[31]_i_1_n_0\
    );
\AudioData[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(31),
      I1 => \FIFO_Int_reg[1]\(31),
      I2 => \FIFO_Int_reg[2]\(31),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[31]_i_2_n_0\
    );
\AudioData[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(3),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[3]_i_2_n_0\,
      O => \AudioData[3]_i_1_n_0\
    );
\AudioData[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(3),
      I1 => \FIFO_Int_reg[1]\(3),
      I2 => \FIFO_Int_reg[2]\(3),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[3]_i_2_n_0\
    );
\AudioData[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(4),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[4]_i_2_n_0\,
      O => \AudioData[4]_i_1_n_0\
    );
\AudioData[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(4),
      I1 => \FIFO_Int_reg[1]\(4),
      I2 => \FIFO_Int_reg[2]\(4),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[4]_i_2_n_0\
    );
\AudioData[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(5),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[5]_i_2_n_0\,
      O => \AudioData[5]_i_1_n_0\
    );
\AudioData[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(5),
      I1 => \FIFO_Int_reg[1]\(5),
      I2 => \FIFO_Int_reg[2]\(5),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[5]_i_2_n_0\
    );
\AudioData[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(6),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[6]_i_2_n_0\,
      O => \AudioData[6]_i_1_n_0\
    );
\AudioData[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(6),
      I1 => \FIFO_Int_reg[1]\(6),
      I2 => \FIFO_Int_reg[2]\(6),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[6]_i_2_n_0\
    );
\AudioData[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(7),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[7]_i_2_n_0\,
      O => \AudioData[7]_i_1_n_0\
    );
\AudioData[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(7),
      I1 => \FIFO_Int_reg[1]\(7),
      I2 => \FIFO_Int_reg[2]\(7),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[7]_i_2_n_0\
    );
\AudioData[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(8),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[8]_i_2_n_0\,
      O => \AudioData[8]_i_1_n_0\
    );
\AudioData[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(8),
      I1 => \FIFO_Int_reg[1]\(8),
      I2 => \FIFO_Int_reg[2]\(8),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[8]_i_2_n_0\
    );
\AudioData[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FIFO_Int_reg[3]\(9),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => ReadCount(0),
      I3 => ReadCount(1),
      I4 => \AudioData[9]_i_2_n_0\,
      O => \AudioData[9]_i_1_n_0\
    );
\AudioData[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CCAA0000"
    )
        port map (
      I0 => \FIFO_Int_reg[0]\(9),
      I1 => \FIFO_Int_reg[1]\(9),
      I2 => \FIFO_Int_reg[2]\(9),
      I3 => ReadCount(0),
      I4 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I5 => ReadCount(1),
      O => \AudioData[9]_i_2_n_0\
    );
\AudioData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[0]_i_1_n_0\,
      Q => Data(0),
      R => '0'
    );
\AudioData_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[10]_i_1_n_0\,
      Q => Data(10),
      R => '0'
    );
\AudioData_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[11]_i_1_n_0\,
      Q => Data(11),
      R => '0'
    );
\AudioData_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[12]_i_1_n_0\,
      Q => Data(12),
      R => '0'
    );
\AudioData_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[13]_i_1_n_0\,
      Q => Data(13),
      R => '0'
    );
\AudioData_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[14]_i_1_n_0\,
      Q => Data(14),
      R => '0'
    );
\AudioData_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[15]_i_1_n_0\,
      Q => Data(15),
      R => '0'
    );
\AudioData_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[16]_i_1_n_0\,
      Q => Data(16),
      R => '0'
    );
\AudioData_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[17]_i_1_n_0\,
      Q => Data(17),
      R => '0'
    );
\AudioData_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[18]_i_1_n_0\,
      Q => Data(18),
      R => '0'
    );
\AudioData_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[19]_i_1_n_0\,
      Q => Data(19),
      R => '0'
    );
\AudioData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[1]_i_1_n_0\,
      Q => Data(1),
      R => '0'
    );
\AudioData_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[20]_i_1_n_0\,
      Q => Data(20),
      R => '0'
    );
\AudioData_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[21]_i_1_n_0\,
      Q => Data(21),
      R => '0'
    );
\AudioData_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[22]_i_1_n_0\,
      Q => Data(22),
      R => '0'
    );
\AudioData_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[23]_i_1_n_0\,
      Q => Data(23),
      R => '0'
    );
\AudioData_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[24]_i_1_n_0\,
      Q => Data(24),
      R => '0'
    );
\AudioData_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[25]_i_1_n_0\,
      Q => Data(25),
      R => '0'
    );
\AudioData_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[26]_i_1_n_0\,
      Q => Data(26),
      R => '0'
    );
\AudioData_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[27]_i_1_n_0\,
      Q => Data(27),
      R => '0'
    );
\AudioData_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[28]_i_1_n_0\,
      Q => Data(28),
      R => '0'
    );
\AudioData_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[29]_i_1_n_0\,
      Q => Data(29),
      R => '0'
    );
\AudioData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[2]_i_1_n_0\,
      Q => Data(2),
      R => '0'
    );
\AudioData_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[30]_i_1_n_0\,
      Q => Data(30),
      R => '0'
    );
\AudioData_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[31]_i_1_n_0\,
      Q => Data(31),
      R => '0'
    );
\AudioData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[3]_i_1_n_0\,
      Q => Data(3),
      R => '0'
    );
\AudioData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[4]_i_1_n_0\,
      Q => Data(4),
      R => '0'
    );
\AudioData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[5]_i_1_n_0\,
      Q => Data(5),
      R => '0'
    );
\AudioData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[6]_i_1_n_0\,
      Q => Data(6),
      R => '0'
    );
\AudioData_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[7]_i_1_n_0\,
      Q => Data(7),
      R => '0'
    );
\AudioData_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[8]_i_1_n_0\,
      Q => Data(8),
      R => '0'
    );
\AudioData_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \AudioData[9]_i_1_n_0\,
      Q => Data(9),
      R => '0'
    );
\FIFO_Ext[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[1]\,
      I1 => \WriteCount_reg_n_0_[0]\,
      I2 => \FIFO_Ext[3][31]_i_3_n_0\,
      I3 => \FIFO_Ext[3][31]_i_4_n_0\,
      I4 => \FIFO_Ext[3][31]_i_5_n_0\,
      I5 => \FIFO_Ext[3][31]_i_6_n_0\,
      O => \FIFO_Ext[0]_3\
    );
\FIFO_Ext[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[1]\,
      I1 => \WriteCount_reg_n_0_[0]\,
      I2 => \FIFO_Ext[3][31]_i_3_n_0\,
      I3 => \FIFO_Ext[3][31]_i_4_n_0\,
      I4 => \FIFO_Ext[3][31]_i_5_n_0\,
      I5 => \FIFO_Ext[3][31]_i_6_n_0\,
      O => \FIFO_Ext[1]_4\
    );
\FIFO_Ext[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[0]\,
      I1 => \WriteCount_reg_n_0_[1]\,
      I2 => \FIFO_Ext[3][31]_i_3_n_0\,
      I3 => \FIFO_Ext[3][31]_i_4_n_0\,
      I4 => \FIFO_Ext[3][31]_i_5_n_0\,
      I5 => \FIFO_Ext[3][31]_i_6_n_0\,
      O => \FIFO_Ext[2]_5\
    );
\FIFO_Ext[3][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => FIFOState(0),
      I1 => \FSM_sequential_FIFOState_reg_n_0_[1]\,
      O => WriteCount0
    );
\FIFO_Ext[3][31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[28]\,
      I1 => \WriteCount_reg_n_0_[29]\,
      O => \FIFO_Ext[3][31]_i_10_n_0\
    );
\FIFO_Ext[3][31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[11]\,
      I1 => \WriteCount_reg_n_0_[10]\,
      I2 => \WriteCount_reg_n_0_[9]\,
      I3 => \WriteCount_reg_n_0_[8]\,
      O => \FIFO_Ext[3][31]_i_11_n_0\
    );
\FIFO_Ext[3][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \FIFO_Ext[3][31]_i_3_n_0\,
      I1 => \FIFO_Ext[3][31]_i_4_n_0\,
      I2 => \FIFO_Ext[3][31]_i_5_n_0\,
      I3 => \FIFO_Ext[3][31]_i_6_n_0\,
      I4 => \WriteCount_reg_n_0_[1]\,
      I5 => \WriteCount_reg_n_0_[0]\,
      O => \FIFO_Ext[3]_2\
    );
\FIFO_Ext[3][31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[20]\,
      I1 => \WriteCount_reg_n_0_[21]\,
      I2 => \WriteCount_reg_n_0_[22]\,
      I3 => \WriteCount_reg_n_0_[23]\,
      I4 => \FIFO_Ext[3][31]_i_7_n_0\,
      O => \FIFO_Ext[3][31]_i_3_n_0\
    );
\FIFO_Ext[3][31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[12]\,
      I1 => \WriteCount_reg_n_0_[13]\,
      I2 => \WriteCount_reg_n_0_[14]\,
      I3 => \WriteCount_reg_n_0_[15]\,
      I4 => \FIFO_Ext[3][31]_i_8_n_0\,
      O => \FIFO_Ext[3][31]_i_4_n_0\
    );
\FIFO_Ext[3][31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => FIFO_Ext_Full,
      I1 => \WriteCount_reg_n_0_[2]\,
      I2 => \WriteCount_reg_n_0_[3]\,
      I3 => \FIFO_Ext[3][31]_i_10_n_0\,
      I4 => \WriteCount_reg_n_0_[30]\,
      I5 => \WriteCount_reg_n_0_[31]\,
      O => \FIFO_Ext[3][31]_i_5_n_0\
    );
\FIFO_Ext[3][31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[4]\,
      I1 => \WriteCount_reg_n_0_[5]\,
      I2 => \WriteCount_reg_n_0_[6]\,
      I3 => \WriteCount_reg_n_0_[7]\,
      I4 => \FIFO_Ext[3][31]_i_11_n_0\,
      O => \FIFO_Ext[3][31]_i_6_n_0\
    );
\FIFO_Ext[3][31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[27]\,
      I1 => \WriteCount_reg_n_0_[26]\,
      I2 => \WriteCount_reg_n_0_[25]\,
      I3 => \WriteCount_reg_n_0_[24]\,
      O => \FIFO_Ext[3][31]_i_7_n_0\
    );
\FIFO_Ext[3][31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[19]\,
      I1 => \WriteCount_reg_n_0_[18]\,
      I2 => \WriteCount_reg_n_0_[17]\,
      I3 => \WriteCount_reg_n_0_[16]\,
      O => \FIFO_Ext[3][31]_i_8_n_0\
    );
\FIFO_Ext[3][31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => FIFOState(0),
      I1 => \FSM_sequential_FIFOState_reg_n_0_[1]\,
      O => FIFO_Ext_Full
    );
FIFO_Ext_Full_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => FIFOState(0),
      I1 => \FSM_sequential_FIFOState_reg_n_0_[1]\,
      I2 => FIFO_Ext_Full_reg_n_0,
      O => FIFO_Ext_Full_i_1_n_0
    );
FIFO_Ext_Full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => FIFO_Ext_Full_i_1_n_0,
      Q => FIFO_Ext_Full_reg_n_0,
      R => '0'
    );
\FIFO_Ext_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(0),
      Q => \FIFO_Ext_reg[0]\(0),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(10),
      Q => \FIFO_Ext_reg[0]\(10),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(11),
      Q => \FIFO_Ext_reg[0]\(11),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(12),
      Q => \FIFO_Ext_reg[0]\(12),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(13),
      Q => \FIFO_Ext_reg[0]\(13),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(14),
      Q => \FIFO_Ext_reg[0]\(14),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(15),
      Q => \FIFO_Ext_reg[0]\(15),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(16),
      Q => \FIFO_Ext_reg[0]\(16),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(17),
      Q => \FIFO_Ext_reg[0]\(17),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(18),
      Q => \FIFO_Ext_reg[0]\(18),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(19),
      Q => \FIFO_Ext_reg[0]\(19),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(1),
      Q => \FIFO_Ext_reg[0]\(1),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(20),
      Q => \FIFO_Ext_reg[0]\(20),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(21),
      Q => \FIFO_Ext_reg[0]\(21),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(22),
      Q => \FIFO_Ext_reg[0]\(22),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(23),
      Q => \FIFO_Ext_reg[0]\(23),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(24),
      Q => \FIFO_Ext_reg[0]\(24),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(25),
      Q => \FIFO_Ext_reg[0]\(25),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(26),
      Q => \FIFO_Ext_reg[0]\(26),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(27),
      Q => \FIFO_Ext_reg[0]\(27),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(28),
      Q => \FIFO_Ext_reg[0]\(28),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(29),
      Q => \FIFO_Ext_reg[0]\(29),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(2),
      Q => \FIFO_Ext_reg[0]\(2),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(30),
      Q => \FIFO_Ext_reg[0]\(30),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(31),
      Q => \FIFO_Ext_reg[0]\(31),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(3),
      Q => \FIFO_Ext_reg[0]\(3),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(4),
      Q => \FIFO_Ext_reg[0]\(4),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(5),
      Q => \FIFO_Ext_reg[0]\(5),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(6),
      Q => \FIFO_Ext_reg[0]\(6),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(7),
      Q => \FIFO_Ext_reg[0]\(7),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(8),
      Q => \FIFO_Ext_reg[0]\(8),
      R => WriteCount0
    );
\FIFO_Ext_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[0]_3\,
      D => D(9),
      Q => \FIFO_Ext_reg[0]\(9),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(0),
      Q => \FIFO_Ext_reg[1]\(0),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(10),
      Q => \FIFO_Ext_reg[1]\(10),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(11),
      Q => \FIFO_Ext_reg[1]\(11),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(12),
      Q => \FIFO_Ext_reg[1]\(12),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(13),
      Q => \FIFO_Ext_reg[1]\(13),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(14),
      Q => \FIFO_Ext_reg[1]\(14),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(15),
      Q => \FIFO_Ext_reg[1]\(15),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(16),
      Q => \FIFO_Ext_reg[1]\(16),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(17),
      Q => \FIFO_Ext_reg[1]\(17),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(18),
      Q => \FIFO_Ext_reg[1]\(18),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(19),
      Q => \FIFO_Ext_reg[1]\(19),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(1),
      Q => \FIFO_Ext_reg[1]\(1),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(20),
      Q => \FIFO_Ext_reg[1]\(20),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(21),
      Q => \FIFO_Ext_reg[1]\(21),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(22),
      Q => \FIFO_Ext_reg[1]\(22),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(23),
      Q => \FIFO_Ext_reg[1]\(23),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(24),
      Q => \FIFO_Ext_reg[1]\(24),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(25),
      Q => \FIFO_Ext_reg[1]\(25),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(26),
      Q => \FIFO_Ext_reg[1]\(26),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(27),
      Q => \FIFO_Ext_reg[1]\(27),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(28),
      Q => \FIFO_Ext_reg[1]\(28),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(29),
      Q => \FIFO_Ext_reg[1]\(29),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(2),
      Q => \FIFO_Ext_reg[1]\(2),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(30),
      Q => \FIFO_Ext_reg[1]\(30),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(31),
      Q => \FIFO_Ext_reg[1]\(31),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(3),
      Q => \FIFO_Ext_reg[1]\(3),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(4),
      Q => \FIFO_Ext_reg[1]\(4),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(5),
      Q => \FIFO_Ext_reg[1]\(5),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(6),
      Q => \FIFO_Ext_reg[1]\(6),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(7),
      Q => \FIFO_Ext_reg[1]\(7),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(8),
      Q => \FIFO_Ext_reg[1]\(8),
      R => WriteCount0
    );
\FIFO_Ext_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[1]_4\,
      D => D(9),
      Q => \FIFO_Ext_reg[1]\(9),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(0),
      Q => \FIFO_Ext_reg[2]\(0),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(10),
      Q => \FIFO_Ext_reg[2]\(10),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(11),
      Q => \FIFO_Ext_reg[2]\(11),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(12),
      Q => \FIFO_Ext_reg[2]\(12),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(13),
      Q => \FIFO_Ext_reg[2]\(13),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(14),
      Q => \FIFO_Ext_reg[2]\(14),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(15),
      Q => \FIFO_Ext_reg[2]\(15),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(16),
      Q => \FIFO_Ext_reg[2]\(16),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(17),
      Q => \FIFO_Ext_reg[2]\(17),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(18),
      Q => \FIFO_Ext_reg[2]\(18),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(19),
      Q => \FIFO_Ext_reg[2]\(19),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(1),
      Q => \FIFO_Ext_reg[2]\(1),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(20),
      Q => \FIFO_Ext_reg[2]\(20),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(21),
      Q => \FIFO_Ext_reg[2]\(21),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(22),
      Q => \FIFO_Ext_reg[2]\(22),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(23),
      Q => \FIFO_Ext_reg[2]\(23),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(24),
      Q => \FIFO_Ext_reg[2]\(24),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(25),
      Q => \FIFO_Ext_reg[2]\(25),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(26),
      Q => \FIFO_Ext_reg[2]\(26),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(27),
      Q => \FIFO_Ext_reg[2]\(27),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(28),
      Q => \FIFO_Ext_reg[2]\(28),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(29),
      Q => \FIFO_Ext_reg[2]\(29),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(2),
      Q => \FIFO_Ext_reg[2]\(2),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(30),
      Q => \FIFO_Ext_reg[2]\(30),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(31),
      Q => \FIFO_Ext_reg[2]\(31),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(3),
      Q => \FIFO_Ext_reg[2]\(3),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(4),
      Q => \FIFO_Ext_reg[2]\(4),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(5),
      Q => \FIFO_Ext_reg[2]\(5),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(6),
      Q => \FIFO_Ext_reg[2]\(6),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(7),
      Q => \FIFO_Ext_reg[2]\(7),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(8),
      Q => \FIFO_Ext_reg[2]\(8),
      R => WriteCount0
    );
\FIFO_Ext_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[2]_5\,
      D => D(9),
      Q => \FIFO_Ext_reg[2]\(9),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(0),
      Q => \FIFO_Ext_reg[3]\(0),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(10),
      Q => \FIFO_Ext_reg[3]\(10),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(11),
      Q => \FIFO_Ext_reg[3]\(11),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(12),
      Q => \FIFO_Ext_reg[3]\(12),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(13),
      Q => \FIFO_Ext_reg[3]\(13),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(14),
      Q => \FIFO_Ext_reg[3]\(14),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(15),
      Q => \FIFO_Ext_reg[3]\(15),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(16),
      Q => \FIFO_Ext_reg[3]\(16),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(17),
      Q => \FIFO_Ext_reg[3]\(17),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(18),
      Q => \FIFO_Ext_reg[3]\(18),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(19),
      Q => \FIFO_Ext_reg[3]\(19),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(1),
      Q => \FIFO_Ext_reg[3]\(1),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(20),
      Q => \FIFO_Ext_reg[3]\(20),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(21),
      Q => \FIFO_Ext_reg[3]\(21),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(22),
      Q => \FIFO_Ext_reg[3]\(22),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(23),
      Q => \FIFO_Ext_reg[3]\(23),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(24),
      Q => \FIFO_Ext_reg[3]\(24),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(25),
      Q => \FIFO_Ext_reg[3]\(25),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(26),
      Q => \FIFO_Ext_reg[3]\(26),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(27),
      Q => \FIFO_Ext_reg[3]\(27),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(28),
      Q => \FIFO_Ext_reg[3]\(28),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(29),
      Q => \FIFO_Ext_reg[3]\(29),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(2),
      Q => \FIFO_Ext_reg[3]\(2),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(30),
      Q => \FIFO_Ext_reg[3]\(30),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(31),
      Q => \FIFO_Ext_reg[3]\(31),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(3),
      Q => \FIFO_Ext_reg[3]\(3),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(4),
      Q => \FIFO_Ext_reg[3]\(4),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(5),
      Q => \FIFO_Ext_reg[3]\(5),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(6),
      Q => \FIFO_Ext_reg[3]\(6),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(7),
      Q => \FIFO_Ext_reg[3]\(7),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(8),
      Q => \FIFO_Ext_reg[3]\(8),
      R => WriteCount0
    );
\FIFO_Ext_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Ext[3]_2\,
      D => D(9),
      Q => \FIFO_Ext_reg[3]\(9),
      R => WriteCount0
    );
\FIFO_Int[3][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FIFO_Int[3][31]_i_2_n_0\,
      I1 => \FSM_onehot_I2SState_reg_n_0_[1]\,
      O => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int[3][31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_I2SState_reg_n_0_[1]\,
      I1 => FIFO_Ext_Full_reg_n_0,
      I2 => \FSM_onehot_I2SState_reg_n_0_[0]\,
      O => \FIFO_Int[3][31]_i_2_n_0\
    );
FIFO_Int_Full_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => FIFO_Ext_Full_reg_n_0,
      I1 => \FSM_onehot_I2SState_reg_n_0_[1]\,
      O => FIFO_Int_Full
    );
FIFO_Int_Full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => Transmitter_n_8,
      Q => FIFO_Int_Full_reg_n_0,
      R => '0'
    );
\FIFO_Int_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(0),
      Q => \FIFO_Int_reg[0]\(0),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(10),
      Q => \FIFO_Int_reg[0]\(10),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(11),
      Q => \FIFO_Int_reg[0]\(11),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(12),
      Q => \FIFO_Int_reg[0]\(12),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(13),
      Q => \FIFO_Int_reg[0]\(13),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(14),
      Q => \FIFO_Int_reg[0]\(14),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(15),
      Q => \FIFO_Int_reg[0]\(15),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(16),
      Q => \FIFO_Int_reg[0]\(16),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(17),
      Q => \FIFO_Int_reg[0]\(17),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(18),
      Q => \FIFO_Int_reg[0]\(18),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(19),
      Q => \FIFO_Int_reg[0]\(19),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(1),
      Q => \FIFO_Int_reg[0]\(1),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(20),
      Q => \FIFO_Int_reg[0]\(20),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(21),
      Q => \FIFO_Int_reg[0]\(21),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(22),
      Q => \FIFO_Int_reg[0]\(22),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(23),
      Q => \FIFO_Int_reg[0]\(23),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(24),
      Q => \FIFO_Int_reg[0]\(24),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(25),
      Q => \FIFO_Int_reg[0]\(25),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(26),
      Q => \FIFO_Int_reg[0]\(26),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(27),
      Q => \FIFO_Int_reg[0]\(27),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(28),
      Q => \FIFO_Int_reg[0]\(28),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(29),
      Q => \FIFO_Int_reg[0]\(29),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(2),
      Q => \FIFO_Int_reg[0]\(2),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(30),
      Q => \FIFO_Int_reg[0]\(30),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(31),
      Q => \FIFO_Int_reg[0]\(31),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(3),
      Q => \FIFO_Int_reg[0]\(3),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(4),
      Q => \FIFO_Int_reg[0]\(4),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(5),
      Q => \FIFO_Int_reg[0]\(5),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(6),
      Q => \FIFO_Int_reg[0]\(6),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(7),
      Q => \FIFO_Int_reg[0]\(7),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(8),
      Q => \FIFO_Int_reg[0]\(8),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[0]\(9),
      Q => \FIFO_Int_reg[0]\(9),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(0),
      Q => \FIFO_Int_reg[1]\(0),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(10),
      Q => \FIFO_Int_reg[1]\(10),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(11),
      Q => \FIFO_Int_reg[1]\(11),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(12),
      Q => \FIFO_Int_reg[1]\(12),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(13),
      Q => \FIFO_Int_reg[1]\(13),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(14),
      Q => \FIFO_Int_reg[1]\(14),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(15),
      Q => \FIFO_Int_reg[1]\(15),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(16),
      Q => \FIFO_Int_reg[1]\(16),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(17),
      Q => \FIFO_Int_reg[1]\(17),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(18),
      Q => \FIFO_Int_reg[1]\(18),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(19),
      Q => \FIFO_Int_reg[1]\(19),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(1),
      Q => \FIFO_Int_reg[1]\(1),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(20),
      Q => \FIFO_Int_reg[1]\(20),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(21),
      Q => \FIFO_Int_reg[1]\(21),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(22),
      Q => \FIFO_Int_reg[1]\(22),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(23),
      Q => \FIFO_Int_reg[1]\(23),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(24),
      Q => \FIFO_Int_reg[1]\(24),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(25),
      Q => \FIFO_Int_reg[1]\(25),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(26),
      Q => \FIFO_Int_reg[1]\(26),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(27),
      Q => \FIFO_Int_reg[1]\(27),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(28),
      Q => \FIFO_Int_reg[1]\(28),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(29),
      Q => \FIFO_Int_reg[1]\(29),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(2),
      Q => \FIFO_Int_reg[1]\(2),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(30),
      Q => \FIFO_Int_reg[1]\(30),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(31),
      Q => \FIFO_Int_reg[1]\(31),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(3),
      Q => \FIFO_Int_reg[1]\(3),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(4),
      Q => \FIFO_Int_reg[1]\(4),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(5),
      Q => \FIFO_Int_reg[1]\(5),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(6),
      Q => \FIFO_Int_reg[1]\(6),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(7),
      Q => \FIFO_Int_reg[1]\(7),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(8),
      Q => \FIFO_Int_reg[1]\(8),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[1]\(9),
      Q => \FIFO_Int_reg[1]\(9),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(0),
      Q => \FIFO_Int_reg[2]\(0),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(10),
      Q => \FIFO_Int_reg[2]\(10),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(11),
      Q => \FIFO_Int_reg[2]\(11),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(12),
      Q => \FIFO_Int_reg[2]\(12),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(13),
      Q => \FIFO_Int_reg[2]\(13),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(14),
      Q => \FIFO_Int_reg[2]\(14),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(15),
      Q => \FIFO_Int_reg[2]\(15),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(16),
      Q => \FIFO_Int_reg[2]\(16),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(17),
      Q => \FIFO_Int_reg[2]\(17),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(18),
      Q => \FIFO_Int_reg[2]\(18),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(19),
      Q => \FIFO_Int_reg[2]\(19),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(1),
      Q => \FIFO_Int_reg[2]\(1),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(20),
      Q => \FIFO_Int_reg[2]\(20),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(21),
      Q => \FIFO_Int_reg[2]\(21),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(22),
      Q => \FIFO_Int_reg[2]\(22),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(23),
      Q => \FIFO_Int_reg[2]\(23),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(24),
      Q => \FIFO_Int_reg[2]\(24),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(25),
      Q => \FIFO_Int_reg[2]\(25),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(26),
      Q => \FIFO_Int_reg[2]\(26),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(27),
      Q => \FIFO_Int_reg[2]\(27),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(28),
      Q => \FIFO_Int_reg[2]\(28),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(29),
      Q => \FIFO_Int_reg[2]\(29),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(2),
      Q => \FIFO_Int_reg[2]\(2),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(30),
      Q => \FIFO_Int_reg[2]\(30),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(31),
      Q => \FIFO_Int_reg[2]\(31),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(3),
      Q => \FIFO_Int_reg[2]\(3),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(4),
      Q => \FIFO_Int_reg[2]\(4),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(5),
      Q => \FIFO_Int_reg[2]\(5),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(6),
      Q => \FIFO_Int_reg[2]\(6),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(7),
      Q => \FIFO_Int_reg[2]\(7),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(8),
      Q => \FIFO_Int_reg[2]\(8),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[2]\(9),
      Q => \FIFO_Int_reg[2]\(9),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(0),
      Q => \FIFO_Int_reg[3]\(0),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(10),
      Q => \FIFO_Int_reg[3]\(10),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(11),
      Q => \FIFO_Int_reg[3]\(11),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(12),
      Q => \FIFO_Int_reg[3]\(12),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(13),
      Q => \FIFO_Int_reg[3]\(13),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(14),
      Q => \FIFO_Int_reg[3]\(14),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(15),
      Q => \FIFO_Int_reg[3]\(15),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(16),
      Q => \FIFO_Int_reg[3]\(16),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(17),
      Q => \FIFO_Int_reg[3]\(17),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(18),
      Q => \FIFO_Int_reg[3]\(18),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(19),
      Q => \FIFO_Int_reg[3]\(19),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(1),
      Q => \FIFO_Int_reg[3]\(1),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(20),
      Q => \FIFO_Int_reg[3]\(20),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(21),
      Q => \FIFO_Int_reg[3]\(21),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(22),
      Q => \FIFO_Int_reg[3]\(22),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(23),
      Q => \FIFO_Int_reg[3]\(23),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(24),
      Q => \FIFO_Int_reg[3]\(24),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(25),
      Q => \FIFO_Int_reg[3]\(25),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(26),
      Q => \FIFO_Int_reg[3]\(26),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(27),
      Q => \FIFO_Int_reg[3]\(27),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(28),
      Q => \FIFO_Int_reg[3]\(28),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(29),
      Q => \FIFO_Int_reg[3]\(29),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(2),
      Q => \FIFO_Int_reg[3]\(2),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(30),
      Q => \FIFO_Int_reg[3]\(30),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(31),
      Q => \FIFO_Int_reg[3]\(31),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(3),
      Q => \FIFO_Int_reg[3]\(3),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(4),
      Q => \FIFO_Int_reg[3]\(4),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(5),
      Q => \FIFO_Int_reg[3]\(5),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(6),
      Q => \FIFO_Int_reg[3]\(6),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(7),
      Q => \FIFO_Int_reg[3]\(7),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(8),
      Q => \FIFO_Int_reg[3]\(8),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FIFO_Int_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_Int[3][31]_i_2_n_0\,
      D => \FIFO_Ext_reg[3]\(9),
      Q => \FIFO_Int_reg[3]\(9),
      R => \FIFO_Int[3][31]_i_1_n_0\
    );
\FSM_onehot_I2SState[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => Resetn_IBUF,
      I1 => Locked,
      I2 => \FSM_onehot_I2SState_reg_n_0_[0]\,
      O => \FSM_onehot_I2SState[0]_i_1_n_0\
    );
\FSM_onehot_I2SState[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FIFO_Int[3][31]_i_2_n_0\,
      I1 => \FSM_onehot_I2SState_reg_n_0_[4]\,
      I2 => \FSM_onehot_I2SState_reg_n_0_[5]\,
      I3 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I4 => \FSM_onehot_I2SState_reg_n_0_[2]\,
      O => \FSM_onehot_I2SState[5]_i_1_n_0\
    );
\FSM_onehot_I2SState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clock,
      CE => \FSM_onehot_I2SState[5]_i_1_n_0\,
      D => \FSM_onehot_I2SState[0]_i_1_n_0\,
      Q => \FSM_onehot_I2SState_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_I2SState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FSM_onehot_I2SState[5]_i_1_n_0\,
      D => Transmitter_n_7,
      Q => \FSM_onehot_I2SState_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_I2SState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FSM_onehot_I2SState[5]_i_1_n_0\,
      D => Transmitter_n_6,
      Q => \FSM_onehot_I2SState_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_I2SState_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FSM_onehot_I2SState[5]_i_1_n_0\,
      D => Transmitter_n_5,
      Q => \FSM_onehot_I2SState_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_I2SState_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FSM_onehot_I2SState[5]_i_1_n_0\,
      D => Transmitter_n_4,
      Q => \FSM_onehot_I2SState_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_I2SState_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FSM_onehot_I2SState[5]_i_1_n_0\,
      D => Transmitter_n_3,
      Q => \FSM_onehot_I2SState_reg_n_0_[5]\,
      R => '0'
    );
\FSM_sequential_FIFOState[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBABABA"
    )
        port map (
      I0 => \FSM_sequential_FIFOState_reg_n_0_[1]\,
      I1 => TVALID,
      I2 => FIFOState(0),
      I3 => Locked,
      I4 => Resetn_IBUF,
      O => \FSM_sequential_FIFOState[0]_i_1_n_0\
    );
\FSM_sequential_FIFOState[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB080"
    )
        port map (
      I0 => FIFO_Int_Full_reg_n_0,
      I1 => \FSM_sequential_FIFOState_reg_n_0_[1]\,
      I2 => FIFOState(0),
      I3 => TVALID,
      I4 => \FIFO_Ext[3]_2\,
      O => \FSM_sequential_FIFOState[1]_i_1_n_0\
    );
\FSM_sequential_FIFOState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \FSM_sequential_FIFOState[0]_i_1_n_0\,
      Q => FIFOState(0),
      R => '0'
    );
\FSM_sequential_FIFOState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \FSM_sequential_FIFOState[1]_i_1_n_0\,
      Q => \FSM_sequential_FIFOState_reg_n_0_[1]\,
      R => '0'
    );
\MCLK_Cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MCLK_Cnt(0),
      O => MCLK_Cnt_1(0)
    );
\MCLK_Cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[12]_i_2_n_6\,
      O => MCLK_Cnt_1(10)
    );
\MCLK_Cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[12]_i_2_n_5\,
      O => MCLK_Cnt_1(11)
    );
\MCLK_Cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[12]_i_2_n_4\,
      O => MCLK_Cnt_1(12)
    );
\MCLK_Cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[16]_i_2_n_7\,
      O => MCLK_Cnt_1(13)
    );
\MCLK_Cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[16]_i_2_n_6\,
      O => MCLK_Cnt_1(14)
    );
\MCLK_Cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[16]_i_2_n_5\,
      O => MCLK_Cnt_1(15)
    );
\MCLK_Cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[16]_i_2_n_4\,
      O => MCLK_Cnt_1(16)
    );
\MCLK_Cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[20]_i_2_n_7\,
      O => MCLK_Cnt_1(17)
    );
\MCLK_Cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[20]_i_2_n_6\,
      O => MCLK_Cnt_1(18)
    );
\MCLK_Cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[20]_i_2_n_5\,
      O => MCLK_Cnt_1(19)
    );
\MCLK_Cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[4]_i_2_n_7\,
      O => MCLK_Cnt_1(1)
    );
\MCLK_Cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[20]_i_2_n_4\,
      O => MCLK_Cnt_1(20)
    );
\MCLK_Cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[24]_i_2_n_7\,
      O => MCLK_Cnt_1(21)
    );
\MCLK_Cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[24]_i_2_n_6\,
      O => MCLK_Cnt_1(22)
    );
\MCLK_Cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[24]_i_2_n_5\,
      O => MCLK_Cnt_1(23)
    );
\MCLK_Cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[24]_i_2_n_4\,
      O => MCLK_Cnt_1(24)
    );
\MCLK_Cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[28]_i_2_n_7\,
      O => MCLK_Cnt_1(25)
    );
\MCLK_Cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[28]_i_2_n_6\,
      O => MCLK_Cnt_1(26)
    );
\MCLK_Cnt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[28]_i_2_n_5\,
      O => MCLK_Cnt_1(27)
    );
\MCLK_Cnt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[28]_i_2_n_4\,
      O => MCLK_Cnt_1(28)
    );
\MCLK_Cnt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[31]_i_3_n_7\,
      O => MCLK_Cnt_1(29)
    );
\MCLK_Cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[4]_i_2_n_6\,
      O => MCLK_Cnt_1(2)
    );
\MCLK_Cnt[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[31]_i_3_n_6\,
      O => MCLK_Cnt_1(30)
    );
\MCLK_Cnt[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[31]_i_3_n_5\,
      O => MCLK_Cnt_1(31)
    );
\MCLK_Cnt[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(29),
      I1 => MCLK_Cnt(28),
      I2 => MCLK_Cnt(31),
      I3 => MCLK_Cnt(30),
      O => \MCLK_Cnt[31]_i_10_n_0\
    );
\MCLK_Cnt[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(21),
      I1 => MCLK_Cnt(20),
      I2 => MCLK_Cnt(23),
      I3 => MCLK_Cnt(22),
      O => \MCLK_Cnt[31]_i_11_n_0\
    );
\MCLK_Cnt[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_4_n_0\,
      I1 => \MCLK_Cnt[31]_i_5_n_0\,
      I2 => \MCLK_Cnt[31]_i_6_n_0\,
      I3 => \MCLK_Cnt[31]_i_7_n_0\,
      O => \MCLK_Cnt[31]_i_2_n_0\
    );
\MCLK_Cnt[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => MCLK_Cnt(10),
      I1 => MCLK_Cnt(11),
      I2 => MCLK_Cnt(8),
      I3 => MCLK_Cnt(9),
      I4 => \MCLK_Cnt[31]_i_8_n_0\,
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
      I4 => \MCLK_Cnt[31]_i_9_n_0\,
      O => \MCLK_Cnt[31]_i_5_n_0\
    );
\MCLK_Cnt[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => MCLK_Cnt(26),
      I1 => MCLK_Cnt(27),
      I2 => MCLK_Cnt(24),
      I3 => MCLK_Cnt(25),
      I4 => \MCLK_Cnt[31]_i_10_n_0\,
      O => \MCLK_Cnt[31]_i_6_n_0\
    );
\MCLK_Cnt[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => MCLK_Cnt(18),
      I1 => MCLK_Cnt(19),
      I2 => MCLK_Cnt(16),
      I3 => MCLK_Cnt(17),
      I4 => \MCLK_Cnt[31]_i_11_n_0\,
      O => \MCLK_Cnt[31]_i_7_n_0\
    );
\MCLK_Cnt[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(13),
      I1 => MCLK_Cnt(12),
      I2 => MCLK_Cnt(15),
      I3 => MCLK_Cnt(14),
      O => \MCLK_Cnt[31]_i_8_n_0\
    );
\MCLK_Cnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(5),
      I1 => MCLK_Cnt(4),
      I2 => MCLK_Cnt(7),
      I3 => MCLK_Cnt(6),
      O => \MCLK_Cnt[31]_i_9_n_0\
    );
\MCLK_Cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[4]_i_2_n_5\,
      O => MCLK_Cnt_1(3)
    );
\MCLK_Cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[4]_i_2_n_4\,
      O => MCLK_Cnt_1(4)
    );
\MCLK_Cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[8]_i_2_n_7\,
      O => MCLK_Cnt_1(5)
    );
\MCLK_Cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[8]_i_2_n_6\,
      O => MCLK_Cnt_1(6)
    );
\MCLK_Cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[8]_i_2_n_5\,
      O => MCLK_Cnt_1(7)
    );
\MCLK_Cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[8]_i_2_n_4\,
      O => MCLK_Cnt_1(8)
    );
\MCLK_Cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_2_n_0\,
      I1 => \MCLK_Cnt_reg[12]_i_2_n_7\,
      O => MCLK_Cnt_1(9)
    );
\MCLK_Cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(0),
      Q => MCLK_Cnt(0),
      R => p_0_in
    );
\MCLK_Cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(10),
      Q => MCLK_Cnt(10),
      R => p_0_in
    );
\MCLK_Cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(11),
      Q => MCLK_Cnt(11),
      R => p_0_in
    );
\MCLK_Cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(12),
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
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(13),
      Q => MCLK_Cnt(13),
      R => p_0_in
    );
\MCLK_Cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(14),
      Q => MCLK_Cnt(14),
      R => p_0_in
    );
\MCLK_Cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(15),
      Q => MCLK_Cnt(15),
      R => p_0_in
    );
\MCLK_Cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(16),
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
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(17),
      Q => MCLK_Cnt(17),
      R => p_0_in
    );
\MCLK_Cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(18),
      Q => MCLK_Cnt(18),
      R => p_0_in
    );
\MCLK_Cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(19),
      Q => MCLK_Cnt(19),
      R => p_0_in
    );
\MCLK_Cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(1),
      Q => MCLK_Cnt(1),
      R => p_0_in
    );
\MCLK_Cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(20),
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
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(21),
      Q => MCLK_Cnt(21),
      R => p_0_in
    );
\MCLK_Cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(22),
      Q => MCLK_Cnt(22),
      R => p_0_in
    );
\MCLK_Cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(23),
      Q => MCLK_Cnt(23),
      R => p_0_in
    );
\MCLK_Cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(24),
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
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(25),
      Q => MCLK_Cnt(25),
      R => p_0_in
    );
\MCLK_Cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(26),
      Q => MCLK_Cnt(26),
      R => p_0_in
    );
\MCLK_Cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(27),
      Q => MCLK_Cnt(27),
      R => p_0_in
    );
\MCLK_Cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(28),
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
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(29),
      Q => MCLK_Cnt(29),
      R => p_0_in
    );
\MCLK_Cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(2),
      Q => MCLK_Cnt(2),
      R => p_0_in
    );
\MCLK_Cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(30),
      Q => MCLK_Cnt(30),
      R => p_0_in
    );
\MCLK_Cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(31),
      Q => MCLK_Cnt(31),
      R => p_0_in
    );
\MCLK_Cnt_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_MCLK_Cnt_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \MCLK_Cnt_reg[31]_i_3_n_2\,
      CO(0) => \MCLK_Cnt_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_MCLK_Cnt_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2) => \MCLK_Cnt_reg[31]_i_3_n_5\,
      O(1) => \MCLK_Cnt_reg[31]_i_3_n_6\,
      O(0) => \MCLK_Cnt_reg[31]_i_3_n_7\,
      S(3) => '0',
      S(2 downto 0) => MCLK_Cnt(31 downto 29)
    );
\MCLK_Cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(3),
      Q => MCLK_Cnt(3),
      R => p_0_in
    );
\MCLK_Cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(4),
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
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(5),
      Q => MCLK_Cnt(5),
      R => p_0_in
    );
\MCLK_Cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(6),
      Q => MCLK_Cnt(6),
      R => p_0_in
    );
\MCLK_Cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(7),
      Q => MCLK_Cnt(7),
      R => p_0_in
    );
\MCLK_Cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(8),
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
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_1(9),
      Q => MCLK_Cnt(9),
      R => p_0_in
    );
ReadCount1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ReadCount1_carry_n_0,
      CO(2) => ReadCount1_carry_n_1,
      CO(1) => ReadCount1_carry_n_2,
      CO(0) => ReadCount1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => ReadCount1_carry_i_1_n_0,
      O(3 downto 0) => NLW_ReadCount1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ReadCount1_carry_i_2_n_0,
      S(2) => ReadCount1_carry_i_3_n_0,
      S(1) => ReadCount1_carry_i_4_n_0,
      S(0) => ReadCount1_carry_i_5_n_0
    );
\ReadCount1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ReadCount1_carry_n_0,
      CO(3) => \ReadCount1_carry__0_n_0\,
      CO(2) => \ReadCount1_carry__0_n_1\,
      CO(1) => \ReadCount1_carry__0_n_2\,
      CO(0) => \ReadCount1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ReadCount1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ReadCount1_carry__0_i_1_n_0\,
      S(2) => \ReadCount1_carry__0_i_2_n_0\,
      S(1) => \ReadCount1_carry__0_i_3_n_0\,
      S(0) => \ReadCount1_carry__0_i_4_n_0\
    );
\ReadCount1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(14),
      I1 => ReadCount(15),
      O => \ReadCount1_carry__0_i_1_n_0\
    );
\ReadCount1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(12),
      I1 => ReadCount(13),
      O => \ReadCount1_carry__0_i_2_n_0\
    );
\ReadCount1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(10),
      I1 => ReadCount(11),
      O => \ReadCount1_carry__0_i_3_n_0\
    );
\ReadCount1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(8),
      I1 => ReadCount(9),
      O => \ReadCount1_carry__0_i_4_n_0\
    );
\ReadCount1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCount1_carry__0_n_0\,
      CO(3) => \ReadCount1_carry__1_n_0\,
      CO(2) => \ReadCount1_carry__1_n_1\,
      CO(1) => \ReadCount1_carry__1_n_2\,
      CO(0) => \ReadCount1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ReadCount1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ReadCount1_carry__1_i_1_n_0\,
      S(2) => \ReadCount1_carry__1_i_2_n_0\,
      S(1) => \ReadCount1_carry__1_i_3_n_0\,
      S(0) => \ReadCount1_carry__1_i_4_n_0\
    );
\ReadCount1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(22),
      I1 => ReadCount(23),
      O => \ReadCount1_carry__1_i_1_n_0\
    );
\ReadCount1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(20),
      I1 => ReadCount(21),
      O => \ReadCount1_carry__1_i_2_n_0\
    );
\ReadCount1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(18),
      I1 => ReadCount(19),
      O => \ReadCount1_carry__1_i_3_n_0\
    );
\ReadCount1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(16),
      I1 => ReadCount(17),
      O => \ReadCount1_carry__1_i_4_n_0\
    );
\ReadCount1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCount1_carry__1_n_0\,
      CO(3) => in4,
      CO(2) => \ReadCount1_carry__2_n_1\,
      CO(1) => \ReadCount1_carry__2_n_2\,
      CO(0) => \ReadCount1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => ReadCount(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_ReadCount1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ReadCount1_carry__2_i_1_n_0\,
      S(2) => \ReadCount1_carry__2_i_2_n_0\,
      S(1) => \ReadCount1_carry__2_i_3_n_0\,
      S(0) => \ReadCount1_carry__2_i_4_n_0\
    );
\ReadCount1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(30),
      I1 => ReadCount(31),
      O => \ReadCount1_carry__2_i_1_n_0\
    );
\ReadCount1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(28),
      I1 => ReadCount(29),
      O => \ReadCount1_carry__2_i_2_n_0\
    );
\ReadCount1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(26),
      I1 => ReadCount(27),
      O => \ReadCount1_carry__2_i_3_n_0\
    );
\ReadCount1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(24),
      I1 => ReadCount(25),
      O => \ReadCount1_carry__2_i_4_n_0\
    );
ReadCount1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ReadCount(0),
      I1 => ReadCount(1),
      O => ReadCount1_carry_i_1_n_0
    );
ReadCount1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(6),
      I1 => ReadCount(7),
      O => ReadCount1_carry_i_2_n_0
    );
ReadCount1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(4),
      I1 => ReadCount(5),
      O => ReadCount1_carry_i_3_n_0
    );
ReadCount1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ReadCount(2),
      I1 => ReadCount(3),
      O => ReadCount1_carry_i_4_n_0
    );
ReadCount1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCount(0),
      I1 => ReadCount(1),
      O => ReadCount1_carry_i_5_n_0
    );
\ReadCount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_I2SState_reg_n_0_[0]\,
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      O => \ReadCount[0]_i_1_n_0\
    );
\ReadCount[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ReadCount(0),
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => in4,
      O => \ReadCount[0]_i_2_n_0\
    );
\ReadCount[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => \FSM_onehot_I2SState_reg_n_0_[0]\,
      I1 => \FSM_onehot_I2SState_reg_n_0_[3]\,
      I2 => in4,
      O => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => \ReadCount[0]_i_2_n_0\,
      Q => ReadCount(0),
      R => '0'
    );
\ReadCount_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(10),
      Q => ReadCount(10),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(11),
      Q => ReadCount(11),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(12),
      Q => ReadCount(12),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCount_reg[8]_i_1_n_0\,
      CO(3) => \ReadCount_reg[12]_i_1_n_0\,
      CO(2) => \ReadCount_reg[12]_i_1_n_1\,
      CO(1) => \ReadCount_reg[12]_i_1_n_2\,
      CO(0) => \ReadCount_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ReadCount0(12 downto 9),
      S(3 downto 0) => ReadCount(12 downto 9)
    );
\ReadCount_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(13),
      Q => ReadCount(13),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(14),
      Q => ReadCount(14),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(15),
      Q => ReadCount(15),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(16),
      Q => ReadCount(16),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCount_reg[12]_i_1_n_0\,
      CO(3) => \ReadCount_reg[16]_i_1_n_0\,
      CO(2) => \ReadCount_reg[16]_i_1_n_1\,
      CO(1) => \ReadCount_reg[16]_i_1_n_2\,
      CO(0) => \ReadCount_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ReadCount0(16 downto 13),
      S(3 downto 0) => ReadCount(16 downto 13)
    );
\ReadCount_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(17),
      Q => ReadCount(17),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(18),
      Q => ReadCount(18),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(19),
      Q => ReadCount(19),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(1),
      Q => ReadCount(1),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(20),
      Q => ReadCount(20),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCount_reg[16]_i_1_n_0\,
      CO(3) => \ReadCount_reg[20]_i_1_n_0\,
      CO(2) => \ReadCount_reg[20]_i_1_n_1\,
      CO(1) => \ReadCount_reg[20]_i_1_n_2\,
      CO(0) => \ReadCount_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ReadCount0(20 downto 17),
      S(3 downto 0) => ReadCount(20 downto 17)
    );
\ReadCount_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(21),
      Q => ReadCount(21),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(22),
      Q => ReadCount(22),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(23),
      Q => ReadCount(23),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(24),
      Q => ReadCount(24),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCount_reg[20]_i_1_n_0\,
      CO(3) => \ReadCount_reg[24]_i_1_n_0\,
      CO(2) => \ReadCount_reg[24]_i_1_n_1\,
      CO(1) => \ReadCount_reg[24]_i_1_n_2\,
      CO(0) => \ReadCount_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ReadCount0(24 downto 21),
      S(3 downto 0) => ReadCount(24 downto 21)
    );
\ReadCount_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(25),
      Q => ReadCount(25),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(26),
      Q => ReadCount(26),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(27),
      Q => ReadCount(27),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(28),
      Q => ReadCount(28),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCount_reg[24]_i_1_n_0\,
      CO(3) => \ReadCount_reg[28]_i_1_n_0\,
      CO(2) => \ReadCount_reg[28]_i_1_n_1\,
      CO(1) => \ReadCount_reg[28]_i_1_n_2\,
      CO(0) => \ReadCount_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ReadCount0(28 downto 25),
      S(3 downto 0) => ReadCount(28 downto 25)
    );
\ReadCount_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(29),
      Q => ReadCount(29),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(2),
      Q => ReadCount(2),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(30),
      Q => ReadCount(30),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(31),
      Q => ReadCount(31),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCount_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_ReadCount_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ReadCount_reg[31]_i_2_n_2\,
      CO(0) => \ReadCount_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_ReadCount_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => ReadCount0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => ReadCount(31 downto 29)
    );
\ReadCount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(3),
      Q => ReadCount(3),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(4),
      Q => ReadCount(4),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ReadCount_reg[4]_i_1_n_0\,
      CO(2) => \ReadCount_reg[4]_i_1_n_1\,
      CO(1) => \ReadCount_reg[4]_i_1_n_2\,
      CO(0) => \ReadCount_reg[4]_i_1_n_3\,
      CYINIT => ReadCount(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ReadCount0(4 downto 1),
      S(3 downto 0) => ReadCount(4 downto 1)
    );
\ReadCount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(5),
      Q => ReadCount(5),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(6),
      Q => ReadCount(6),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(7),
      Q => ReadCount(7),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(8),
      Q => ReadCount(8),
      R => \ReadCount[31]_i_1_n_0\
    );
\ReadCount_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCount_reg[4]_i_1_n_0\,
      CO(3) => \ReadCount_reg[8]_i_1_n_0\,
      CO(2) => \ReadCount_reg[8]_i_1_n_1\,
      CO(1) => \ReadCount_reg[8]_i_1_n_2\,
      CO(0) => \ReadCount_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ReadCount0(8 downto 5),
      S(3 downto 0) => ReadCount(8 downto 5)
    );
\ReadCount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCount[0]_i_1_n_0\,
      D => ReadCount0(9),
      Q => ReadCount(9),
      R => \ReadCount[31]_i_1_n_0\
    );
SCLK_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^audioclock_reg_0\,
      I1 => Resetn_IBUF,
      I2 => Locked,
      O => SCLK_OBUF
    );
TREADY_Int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => TVALID,
      I1 => FIFOState(0),
      I2 => \FSM_sequential_FIFOState_reg_n_0_[1]\,
      I3 => \^tready\,
      O => TREADY_Int_i_1_n_0
    );
TREADY_Int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => TREADY_Int_i_1_n_0,
      Q => \^tready\,
      R => '0'
    );
Transmitter: entity work.I2S_Transmitter
     port map (
      CO(0) => in4,
      D(4) => Transmitter_n_3,
      D(3) => Transmitter_n_4,
      D(2) => Transmitter_n_5,
      D(1) => Transmitter_n_6,
      D(0) => Transmitter_n_7,
      FIFO_Int_Full => FIFO_Int_Full,
      FIFO_Int_Full_reg => \FIFO_Int[3][31]_i_2_n_0\,
      FIFO_Int_Full_reg_0 => FIFO_Int_Full_reg_n_0,
      \FSM_onehot_I2SState_reg[5]\ => Transmitter_n_8,
      LRCLK_OBUF => LRCLK_OBUF,
      Locked => Locked,
      Q(5) => \FSM_onehot_I2SState_reg_n_0_[5]\,
      Q(4) => \FSM_onehot_I2SState_reg_n_0_[4]\,
      Q(3) => \FSM_onehot_I2SState_reg_n_0_[3]\,
      Q(2) => \FSM_onehot_I2SState_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_I2SState_reg_n_0_[1]\,
      Q(0) => \FSM_onehot_I2SState_reg_n_0_[0]\,
      Resetn_IBUF => Resetn_IBUF,
      SD_Int_reg_0 => SD_Int_reg,
      SD_OBUF => SD_OBUF,
      SR(0) => p_0_in,
      \ShiftReg_reg[31]_0\(31 downto 0) => Data(31 downto 0)
    );
\WriteCount0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \WriteCount0_inferred__0/i__carry_n_0\,
      CO(2) => \WriteCount0_inferred__0/i__carry_n_1\,
      CO(1) => \WriteCount0_inferred__0/i__carry_n_2\,
      CO(0) => \WriteCount0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1_n_0\,
      O(3 downto 0) => \NLW_WriteCount0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\WriteCount0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \WriteCount0_inferred__0/i__carry_n_0\,
      CO(3) => \WriteCount0_inferred__0/i__carry__0_n_0\,
      CO(2) => \WriteCount0_inferred__0/i__carry__0_n_1\,
      CO(1) => \WriteCount0_inferred__0/i__carry__0_n_2\,
      CO(0) => \WriteCount0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_WriteCount0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\WriteCount0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \WriteCount0_inferred__0/i__carry__0_n_0\,
      CO(3) => \WriteCount0_inferred__0/i__carry__1_n_0\,
      CO(2) => \WriteCount0_inferred__0/i__carry__1_n_1\,
      CO(1) => \WriteCount0_inferred__0/i__carry__1_n_2\,
      CO(0) => \WriteCount0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_WriteCount0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\WriteCount0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \WriteCount0_inferred__0/i__carry__1_n_0\,
      CO(3) => \WriteCount0_inferred__0/i__carry__2_n_0\,
      CO(2) => \WriteCount0_inferred__0/i__carry__2_n_1\,
      CO(1) => \WriteCount0_inferred__0/i__carry__2_n_2\,
      CO(0) => \WriteCount0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \WriteCount_reg_n_0_[31]\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_WriteCount0_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\WriteCount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[0]\,
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(0)
    );
\WriteCount[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(10),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(10)
    );
\WriteCount[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(11),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(11)
    );
\WriteCount[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(12),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(12)
    );
\WriteCount[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(13),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(13)
    );
\WriteCount[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(14),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(14)
    );
\WriteCount[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(15),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(15)
    );
\WriteCount[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(16),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(16)
    );
\WriteCount[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(17),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(17)
    );
\WriteCount[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(18),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(18)
    );
\WriteCount[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(19),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(19)
    );
\WriteCount[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(1),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(1)
    );
\WriteCount[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(20),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(20)
    );
\WriteCount[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(21),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(21)
    );
\WriteCount[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(22),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(22)
    );
\WriteCount[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(23),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(23)
    );
\WriteCount[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(24),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(24)
    );
\WriteCount[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(25),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(25)
    );
\WriteCount[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(26),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(26)
    );
\WriteCount[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(27),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(27)
    );
\WriteCount[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(28),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(28)
    );
\WriteCount[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(29),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(29)
    );
\WriteCount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(2),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(2)
    );
\WriteCount[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(30),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(30)
    );
\WriteCount[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7040"
    )
        port map (
      I0 => FIFO_Int_Full_reg_n_0,
      I1 => FIFOState(0),
      I2 => \FSM_sequential_FIFOState_reg_n_0_[1]\,
      I3 => \WriteCount0_inferred__0/i__carry__2_n_0\,
      O => WriteCount_0
    );
\WriteCount[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(31),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(31)
    );
\WriteCount[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(3),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(3)
    );
\WriteCount[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(4),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(4)
    );
\WriteCount[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(5),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(5)
    );
\WriteCount[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(6),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(6)
    );
\WriteCount[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(7),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(7)
    );
\WriteCount[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(8),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(8)
    );
\WriteCount[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => in7(9),
      I1 => FIFOState(0),
      I2 => FIFO_Int_Full_reg_n_0,
      O => WriteCount(9)
    );
\WriteCount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(0),
      Q => \WriteCount_reg_n_0_[0]\,
      R => WriteCount0
    );
\WriteCount_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(10),
      Q => \WriteCount_reg_n_0_[10]\,
      R => WriteCount0
    );
\WriteCount_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(11),
      Q => \WriteCount_reg_n_0_[11]\,
      R => WriteCount0
    );
\WriteCount_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(12),
      Q => \WriteCount_reg_n_0_[12]\,
      R => WriteCount0
    );
\WriteCount_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \WriteCount_reg[8]_i_2_n_0\,
      CO(3) => \WriteCount_reg[12]_i_2_n_0\,
      CO(2) => \WriteCount_reg[12]_i_2_n_1\,
      CO(1) => \WriteCount_reg[12]_i_2_n_2\,
      CO(0) => \WriteCount_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(12 downto 9),
      S(3) => \WriteCount_reg_n_0_[12]\,
      S(2) => \WriteCount_reg_n_0_[11]\,
      S(1) => \WriteCount_reg_n_0_[10]\,
      S(0) => \WriteCount_reg_n_0_[9]\
    );
\WriteCount_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(13),
      Q => \WriteCount_reg_n_0_[13]\,
      R => WriteCount0
    );
\WriteCount_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(14),
      Q => \WriteCount_reg_n_0_[14]\,
      R => WriteCount0
    );
\WriteCount_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(15),
      Q => \WriteCount_reg_n_0_[15]\,
      R => WriteCount0
    );
\WriteCount_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(16),
      Q => \WriteCount_reg_n_0_[16]\,
      R => WriteCount0
    );
\WriteCount_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \WriteCount_reg[12]_i_2_n_0\,
      CO(3) => \WriteCount_reg[16]_i_2_n_0\,
      CO(2) => \WriteCount_reg[16]_i_2_n_1\,
      CO(1) => \WriteCount_reg[16]_i_2_n_2\,
      CO(0) => \WriteCount_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(16 downto 13),
      S(3) => \WriteCount_reg_n_0_[16]\,
      S(2) => \WriteCount_reg_n_0_[15]\,
      S(1) => \WriteCount_reg_n_0_[14]\,
      S(0) => \WriteCount_reg_n_0_[13]\
    );
\WriteCount_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(17),
      Q => \WriteCount_reg_n_0_[17]\,
      R => WriteCount0
    );
\WriteCount_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(18),
      Q => \WriteCount_reg_n_0_[18]\,
      R => WriteCount0
    );
\WriteCount_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(19),
      Q => \WriteCount_reg_n_0_[19]\,
      R => WriteCount0
    );
\WriteCount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(1),
      Q => \WriteCount_reg_n_0_[1]\,
      R => WriteCount0
    );
\WriteCount_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(20),
      Q => \WriteCount_reg_n_0_[20]\,
      R => WriteCount0
    );
\WriteCount_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \WriteCount_reg[16]_i_2_n_0\,
      CO(3) => \WriteCount_reg[20]_i_2_n_0\,
      CO(2) => \WriteCount_reg[20]_i_2_n_1\,
      CO(1) => \WriteCount_reg[20]_i_2_n_2\,
      CO(0) => \WriteCount_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(20 downto 17),
      S(3) => \WriteCount_reg_n_0_[20]\,
      S(2) => \WriteCount_reg_n_0_[19]\,
      S(1) => \WriteCount_reg_n_0_[18]\,
      S(0) => \WriteCount_reg_n_0_[17]\
    );
\WriteCount_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(21),
      Q => \WriteCount_reg_n_0_[21]\,
      R => WriteCount0
    );
\WriteCount_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(22),
      Q => \WriteCount_reg_n_0_[22]\,
      R => WriteCount0
    );
\WriteCount_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(23),
      Q => \WriteCount_reg_n_0_[23]\,
      R => WriteCount0
    );
\WriteCount_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(24),
      Q => \WriteCount_reg_n_0_[24]\,
      R => WriteCount0
    );
\WriteCount_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \WriteCount_reg[20]_i_2_n_0\,
      CO(3) => \WriteCount_reg[24]_i_2_n_0\,
      CO(2) => \WriteCount_reg[24]_i_2_n_1\,
      CO(1) => \WriteCount_reg[24]_i_2_n_2\,
      CO(0) => \WriteCount_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(24 downto 21),
      S(3) => \WriteCount_reg_n_0_[24]\,
      S(2) => \WriteCount_reg_n_0_[23]\,
      S(1) => \WriteCount_reg_n_0_[22]\,
      S(0) => \WriteCount_reg_n_0_[21]\
    );
\WriteCount_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(25),
      Q => \WriteCount_reg_n_0_[25]\,
      R => WriteCount0
    );
\WriteCount_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(26),
      Q => \WriteCount_reg_n_0_[26]\,
      R => WriteCount0
    );
\WriteCount_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(27),
      Q => \WriteCount_reg_n_0_[27]\,
      R => WriteCount0
    );
\WriteCount_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(28),
      Q => \WriteCount_reg_n_0_[28]\,
      R => WriteCount0
    );
\WriteCount_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \WriteCount_reg[24]_i_2_n_0\,
      CO(3) => \WriteCount_reg[28]_i_2_n_0\,
      CO(2) => \WriteCount_reg[28]_i_2_n_1\,
      CO(1) => \WriteCount_reg[28]_i_2_n_2\,
      CO(0) => \WriteCount_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(28 downto 25),
      S(3) => \WriteCount_reg_n_0_[28]\,
      S(2) => \WriteCount_reg_n_0_[27]\,
      S(1) => \WriteCount_reg_n_0_[26]\,
      S(0) => \WriteCount_reg_n_0_[25]\
    );
\WriteCount_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(29),
      Q => \WriteCount_reg_n_0_[29]\,
      R => WriteCount0
    );
\WriteCount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(2),
      Q => \WriteCount_reg_n_0_[2]\,
      R => WriteCount0
    );
\WriteCount_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(30),
      Q => \WriteCount_reg_n_0_[30]\,
      R => WriteCount0
    );
\WriteCount_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(31),
      Q => \WriteCount_reg_n_0_[31]\,
      R => WriteCount0
    );
\WriteCount_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \WriteCount_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_WriteCount_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \WriteCount_reg[31]_i_3_n_2\,
      CO(0) => \WriteCount_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_WriteCount_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => in7(31 downto 29),
      S(3) => '0',
      S(2) => \WriteCount_reg_n_0_[31]\,
      S(1) => \WriteCount_reg_n_0_[30]\,
      S(0) => \WriteCount_reg_n_0_[29]\
    );
\WriteCount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(3),
      Q => \WriteCount_reg_n_0_[3]\,
      R => WriteCount0
    );
\WriteCount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(4),
      Q => \WriteCount_reg_n_0_[4]\,
      R => WriteCount0
    );
\WriteCount_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \WriteCount_reg[4]_i_2_n_0\,
      CO(2) => \WriteCount_reg[4]_i_2_n_1\,
      CO(1) => \WriteCount_reg[4]_i_2_n_2\,
      CO(0) => \WriteCount_reg[4]_i_2_n_3\,
      CYINIT => \WriteCount_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(4 downto 1),
      S(3) => \WriteCount_reg_n_0_[4]\,
      S(2) => \WriteCount_reg_n_0_[3]\,
      S(1) => \WriteCount_reg_n_0_[2]\,
      S(0) => \WriteCount_reg_n_0_[1]\
    );
\WriteCount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(5),
      Q => \WriteCount_reg_n_0_[5]\,
      R => WriteCount0
    );
\WriteCount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(6),
      Q => \WriteCount_reg_n_0_[6]\,
      R => WriteCount0
    );
\WriteCount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(7),
      Q => \WriteCount_reg_n_0_[7]\,
      R => WriteCount0
    );
\WriteCount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(8),
      Q => \WriteCount_reg_n_0_[8]\,
      R => WriteCount0
    );
\WriteCount_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \WriteCount_reg[4]_i_2_n_0\,
      CO(3) => \WriteCount_reg[8]_i_2_n_0\,
      CO(2) => \WriteCount_reg[8]_i_2_n_1\,
      CO(1) => \WriteCount_reg[8]_i_2_n_2\,
      CO(0) => \WriteCount_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(8 downto 5),
      S(3) => \WriteCount_reg_n_0_[8]\,
      S(2) => \WriteCount_reg_n_0_[7]\,
      S(1) => \WriteCount_reg_n_0_[6]\,
      S(0) => \WriteCount_reg_n_0_[5]\
    );
\WriteCount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => WriteCount_0,
      D => WriteCount(9),
      Q => \WriteCount_reg_n_0_[9]\,
      R => WriteCount0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[14]\,
      I1 => \WriteCount_reg_n_0_[15]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[12]\,
      I1 => \WriteCount_reg_n_0_[13]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[10]\,
      I1 => \WriteCount_reg_n_0_[11]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[8]\,
      I1 => \WriteCount_reg_n_0_[9]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[22]\,
      I1 => \WriteCount_reg_n_0_[23]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[20]\,
      I1 => \WriteCount_reg_n_0_[21]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[18]\,
      I1 => \WriteCount_reg_n_0_[19]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[16]\,
      I1 => \WriteCount_reg_n_0_[17]\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[30]\,
      I1 => \WriteCount_reg_n_0_[31]\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[28]\,
      I1 => \WriteCount_reg_n_0_[29]\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[26]\,
      I1 => \WriteCount_reg_n_0_[27]\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[24]\,
      I1 => \WriteCount_reg_n_0_[25]\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[0]\,
      I1 => \WriteCount_reg_n_0_[1]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[6]\,
      I1 => \WriteCount_reg_n_0_[7]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[4]\,
      I1 => \WriteCount_reg_n_0_[5]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[2]\,
      I1 => \WriteCount_reg_n_0_[3]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \WriteCount_reg_n_0_[1]\,
      I1 => \WriteCount_reg_n_0_[0]\,
      O => \i__carry_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \DataROM_AXI4S_ROM_0_1__blk_mem_gen_prim_width\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_prim_width\ : entity is "blk_mem_gen_prim_width";
end \DataROM_AXI4S_ROM_0_1__blk_mem_gen_prim_width\;

architecture STRUCTURE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_prim_width\ is
begin
\prim_init.ram\: entity work.\DataROM_AXI4S_ROM_0_1__blk_mem_gen_prim_wrapper_init\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ClockGeneration is
  port (
    ClockIn : in STD_LOGIC;
    ClockOut : out STD_LOGIC;
    Locked : out STD_LOGIC
  );
  attribute hw_handoff : string;
  attribute hw_handoff of ClockGeneration : entity is "ClockGeneration.hwdef";
end ClockGeneration;

architecture STRUCTURE of ClockGeneration is
  attribute syn_black_box : string;
  attribute syn_black_box of ClockingWIzard : label is "TRUE";
  attribute x_interface_info : string;
  attribute x_interface_info of ClockIn : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ClockIn : signal is "XIL_INTERFACENAME CLK.CLOCKIN, CLK_DOMAIN ClockGeneration_clk_in1_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute x_interface_info of ClockOut : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKOUT CLK";
  attribute x_interface_parameter of ClockOut : signal is "XIL_INTERFACENAME CLK.CLOCKOUT, CLK_DOMAIN /ClockingWIzard_clk_out1, FREQ_HZ 12288013, INSERT_VIP 0, PHASE 0.0";
begin
ClockingWIzard: entity work.ClockGeneration_clk_wiz_0_0
     port map (
      clk_in1 => ClockIn,
      clk_out1 => ClockOut,
      locked => Locked
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \DataROM_AXI4S_ROM_0_1__blk_mem_gen_generic_cstr\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_generic_cstr\ : entity is "blk_mem_gen_generic_cstr";
end \DataROM_AXI4S_ROM_0_1__blk_mem_gen_generic_cstr\;

architecture STRUCTURE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_generic_cstr\ is
begin
\ramloop[0].ram.r\: entity work.\DataROM_AXI4S_ROM_0_1__blk_mem_gen_prim_width\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \DataROM_AXI4S_ROM_0_1__blk_mem_gen_top\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_top\ : entity is "blk_mem_gen_top";
end \DataROM_AXI4S_ROM_0_1__blk_mem_gen_top\;

architecture STRUCTURE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_top\ is
begin
\valid.cstr\: entity work.\DataROM_AXI4S_ROM_0_1__blk_mem_gen_generic_cstr\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2_synth\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2_synth\ : entity is "blk_mem_gen_v8_4_2_synth";
end \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2_synth\;

architecture STRUCTURE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2_synth\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\DataROM_AXI4S_ROM_0_1__blk_mem_gen_top\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
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
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 11;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 11;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "Estimated Power for IP     :     2.43555 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "ROM_blk_mem_gen_0_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 2048;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 2048;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 2048;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 2048;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "blk_mem_gen_v8_4_2";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ : entity is "yes";
end \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\;

architecture STRUCTURE of \DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\ is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
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
inst_blk_mem_gen: entity work.\DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2_synth\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \DataROM_AXI4S_ROM_0_1__ROM_blk_mem_gen_0_0\ is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \DataROM_AXI4S_ROM_0_1__ROM_blk_mem_gen_0_0\ : entity is "ROM_blk_mem_gen_0_0,blk_mem_gen_v8_4_2,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_AXI4S_ROM_0_1__ROM_blk_mem_gen_0_0\ : entity is "ROM_blk_mem_gen_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \DataROM_AXI4S_ROM_0_1__ROM_blk_mem_gen_0_0\ : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \DataROM_AXI4S_ROM_0_1__ROM_blk_mem_gen_0_0\ : entity is "blk_mem_gen_v8_4_2,Vivado 2018.3";
end \DataROM_AXI4S_ROM_0_1__ROM_blk_mem_gen_0_0\;

architecture STRUCTURE of \DataROM_AXI4S_ROM_0_1__ROM_blk_mem_gen_0_0\ is
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
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
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
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.43555 mW";
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
  attribute C_INIT_FILE_NAME of U0 : label is "ROM_blk_mem_gen_0_0.mif";
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
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.\DataROM_AXI4S_ROM_0_1__blk_mem_gen_v8_4_2\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => B"00000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(15 downto 0) => B"0000000000000000",
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_U0_doutb_UNCONNECTED(15 downto 0),
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
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => B"0000000000000000",
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
entity \DataROM_AXI4S_ROM_0_1__AXI4S_ROM\ is
  port (
    M_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_TLAST : out STD_LOGIC;
    M_TVALID : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    M_TREADY : in STD_LOGIC;
    ARESETN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_AXI4S_ROM_0_1__AXI4S_ROM\ : entity is "AXI4S_ROM";
end \DataROM_AXI4S_ROM_0_1__AXI4S_ROM\;

architecture STRUCTURE of \DataROM_AXI4S_ROM_0_1__AXI4S_ROM\ is
  signal Address : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \Address[10]_i_1_n_0\ : STD_LOGIC;
  signal \Address[11]_i_1_n_0\ : STD_LOGIC;
  signal \Address[12]_i_1_n_0\ : STD_LOGIC;
  signal \Address[13]_i_1_n_0\ : STD_LOGIC;
  signal \Address[14]_i_1_n_0\ : STD_LOGIC;
  signal \Address[15]_i_1_n_0\ : STD_LOGIC;
  signal \Address[16]_i_1_n_0\ : STD_LOGIC;
  signal \Address[17]_i_1_n_0\ : STD_LOGIC;
  signal \Address[18]_i_1_n_0\ : STD_LOGIC;
  signal \Address[19]_i_1_n_0\ : STD_LOGIC;
  signal \Address[1]_i_1_n_0\ : STD_LOGIC;
  signal \Address[20]_i_1_n_0\ : STD_LOGIC;
  signal \Address[21]_i_1_n_0\ : STD_LOGIC;
  signal \Address[22]_i_1_n_0\ : STD_LOGIC;
  signal \Address[23]_i_1_n_0\ : STD_LOGIC;
  signal \Address[24]_i_1_n_0\ : STD_LOGIC;
  signal \Address[25]_i_1_n_0\ : STD_LOGIC;
  signal \Address[26]_i_1_n_0\ : STD_LOGIC;
  signal \Address[27]_i_1_n_0\ : STD_LOGIC;
  signal \Address[28]_i_1_n_0\ : STD_LOGIC;
  signal \Address[29]_i_1_n_0\ : STD_LOGIC;
  signal \Address[2]_i_1_n_0\ : STD_LOGIC;
  signal \Address[30]_i_1_n_0\ : STD_LOGIC;
  signal \Address[31]_i_1_n_0\ : STD_LOGIC;
  signal \Address[31]_i_2_n_0\ : STD_LOGIC;
  signal \Address[3]_i_1_n_0\ : STD_LOGIC;
  signal \Address[4]_i_1_n_0\ : STD_LOGIC;
  signal \Address[5]_i_1_n_0\ : STD_LOGIC;
  signal \Address[6]_i_1_n_0\ : STD_LOGIC;
  signal \Address[7]_i_1_n_0\ : STD_LOGIC;
  signal \Address[8]_i_1_n_0\ : STD_LOGIC;
  signal \Address[9]_i_1_n_0\ : STD_LOGIC;
  signal Address_0 : STD_LOGIC;
  signal \Address_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \Address_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \Address_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \Address_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \Address_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \Address_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \Address_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \Address_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \Address_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \Address_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \Address_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \Address_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \Address_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \Address_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \Address_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \Address_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \Address_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \Address_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \Address_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \Address_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \Address_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \Address_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \Address_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \Address_reg_n_0_[11]\ : STD_LOGIC;
  signal \Address_reg_n_0_[12]\ : STD_LOGIC;
  signal \Address_reg_n_0_[13]\ : STD_LOGIC;
  signal \Address_reg_n_0_[14]\ : STD_LOGIC;
  signal \Address_reg_n_0_[15]\ : STD_LOGIC;
  signal \Address_reg_n_0_[16]\ : STD_LOGIC;
  signal \Address_reg_n_0_[17]\ : STD_LOGIC;
  signal \Address_reg_n_0_[18]\ : STD_LOGIC;
  signal \Address_reg_n_0_[19]\ : STD_LOGIC;
  signal \Address_reg_n_0_[20]\ : STD_LOGIC;
  signal \Address_reg_n_0_[21]\ : STD_LOGIC;
  signal \Address_reg_n_0_[22]\ : STD_LOGIC;
  signal \Address_reg_n_0_[23]\ : STD_LOGIC;
  signal \Address_reg_n_0_[24]\ : STD_LOGIC;
  signal \Address_reg_n_0_[25]\ : STD_LOGIC;
  signal \Address_reg_n_0_[26]\ : STD_LOGIC;
  signal \Address_reg_n_0_[27]\ : STD_LOGIC;
  signal \Address_reg_n_0_[28]\ : STD_LOGIC;
  signal \Address_reg_n_0_[29]\ : STD_LOGIC;
  signal \Address_reg_n_0_[30]\ : STD_LOGIC;
  signal \Address_reg_n_0_[31]\ : STD_LOGIC;
  signal CurrentState : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_sequential_CurrentState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CurrentState[1]_i_1_n_0\ : STD_LOGIC;
  signal \^m_tvalid\ : STD_LOGIC;
  signal ROM_Address : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TLAST_Int : STD_LOGIC;
  signal TLAST_Int0 : STD_LOGIC;
  signal TLAST_Int_i_1_n_0 : STD_LOGIC;
  signal TLAST_Int_i_2_n_0 : STD_LOGIC;
  signal TLAST_Int_i_3_n_0 : STD_LOGIC;
  signal TLAST_Int_i_4_n_0 : STD_LOGIC;
  signal TLAST_Int_i_5_n_0 : STD_LOGIC;
  signal TLAST_Int_i_6_n_0 : STD_LOGIC;
  signal TLAST_Int_i_7_n_0 : STD_LOGIC;
  signal TLAST_Int_i_8_n_0 : STD_LOGIC;
  signal TLAST_Int_i_9_n_0 : STD_LOGIC;
  signal TVALID_Int_i_1_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_Address_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Address_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Address[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Address[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Address[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Address[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Address[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Address[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Address[16]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Address[17]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Address[18]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Address[19]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Address[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Address[20]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Address[21]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Address[22]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Address[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Address[24]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Address[25]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Address[26]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Address[27]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Address[28]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Address[29]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Address[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Address[30]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Address[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Address[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Address[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Address[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Address[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Address[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Address[9]_i_1\ : label is "soft_lutpair12";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DataROM : label is "ROM_blk_mem_gen_0_0,blk_mem_gen_v8_4_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DataROM : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of DataROM : label is "blk_mem_gen_v8_4_2,Vivado 2018.3";
  attribute SOFT_HLUTNM of \FSM_sequential_CurrentState[0]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_CurrentState_reg[0]\ : label is "reset:00,endofreset:01,waitforready:11,readdata:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_CurrentState_reg[1]\ : label is "reset:00,endofreset:01,waitforready:11,readdata:10";
  attribute SOFT_HLUTNM of TVALID_Int_i_1 : label is "soft_lutpair0";
begin
  M_TVALID <= \^m_tvalid\;
\Address[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CurrentState(0),
      O => Address_0
    );
\Address[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentState(1),
      I1 => ROM_Address(0),
      O => Address(0)
    );
\Address[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(10),
      O => \Address[10]_i_1_n_0\
    );
\Address[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(11),
      O => \Address[11]_i_1_n_0\
    );
\Address[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(12),
      O => \Address[12]_i_1_n_0\
    );
\Address[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(13),
      O => \Address[13]_i_1_n_0\
    );
\Address[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(14),
      O => \Address[14]_i_1_n_0\
    );
\Address[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(15),
      O => \Address[15]_i_1_n_0\
    );
\Address[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(16),
      O => \Address[16]_i_1_n_0\
    );
\Address[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(17),
      O => \Address[17]_i_1_n_0\
    );
\Address[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(18),
      O => \Address[18]_i_1_n_0\
    );
\Address[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(19),
      O => \Address[19]_i_1_n_0\
    );
\Address[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(1),
      O => \Address[1]_i_1_n_0\
    );
\Address[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(20),
      O => \Address[20]_i_1_n_0\
    );
\Address[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(21),
      O => \Address[21]_i_1_n_0\
    );
\Address[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(22),
      O => \Address[22]_i_1_n_0\
    );
\Address[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(23),
      O => \Address[23]_i_1_n_0\
    );
\Address[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(24),
      O => \Address[24]_i_1_n_0\
    );
\Address[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(25),
      O => \Address[25]_i_1_n_0\
    );
\Address[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(26),
      O => \Address[26]_i_1_n_0\
    );
\Address[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(27),
      O => \Address[27]_i_1_n_0\
    );
\Address[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(28),
      O => \Address[28]_i_1_n_0\
    );
\Address[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(29),
      O => \Address[29]_i_1_n_0\
    );
\Address[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(2),
      O => \Address[2]_i_1_n_0\
    );
\Address[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(30),
      O => \Address[30]_i_1_n_0\
    );
\Address[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => TLAST_Int_i_5_n_0,
      I1 => TLAST_Int_i_4_n_0,
      I2 => TLAST_Int_i_3_n_0,
      I3 => TLAST_Int_i_2_n_0,
      I4 => CurrentState(0),
      O => \Address[31]_i_1_n_0\
    );
\Address[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(31),
      O => \Address[31]_i_2_n_0\
    );
\Address[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(3),
      O => \Address[3]_i_1_n_0\
    );
\Address[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(4),
      O => \Address[4]_i_1_n_0\
    );
\Address[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(5),
      O => \Address[5]_i_1_n_0\
    );
\Address[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(6),
      O => \Address[6]_i_1_n_0\
    );
\Address[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(7),
      O => \Address[7]_i_1_n_0\
    );
\Address[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(8),
      O => \Address[8]_i_1_n_0\
    );
\Address[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CurrentState(1),
      I1 => data0(9),
      O => \Address[9]_i_1_n_0\
    );
\Address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => Address(0),
      Q => ROM_Address(0),
      R => '0'
    );
\Address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[10]_i_1_n_0\,
      Q => ROM_Address(10),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[11]_i_1_n_0\,
      Q => \Address_reg_n_0_[11]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[12]_i_1_n_0\,
      Q => \Address_reg_n_0_[12]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[8]_i_2_n_0\,
      CO(3) => \Address_reg[12]_i_2_n_0\,
      CO(2) => \Address_reg[12]_i_2_n_1\,
      CO(1) => \Address_reg[12]_i_2_n_2\,
      CO(0) => \Address_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \Address_reg_n_0_[12]\,
      S(2) => \Address_reg_n_0_[11]\,
      S(1 downto 0) => ROM_Address(10 downto 9)
    );
\Address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[13]_i_1_n_0\,
      Q => \Address_reg_n_0_[13]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[14]_i_1_n_0\,
      Q => \Address_reg_n_0_[14]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[15]_i_1_n_0\,
      Q => \Address_reg_n_0_[15]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[16]_i_1_n_0\,
      Q => \Address_reg_n_0_[16]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[12]_i_2_n_0\,
      CO(3) => \Address_reg[16]_i_2_n_0\,
      CO(2) => \Address_reg[16]_i_2_n_1\,
      CO(1) => \Address_reg[16]_i_2_n_2\,
      CO(0) => \Address_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \Address_reg_n_0_[16]\,
      S(2) => \Address_reg_n_0_[15]\,
      S(1) => \Address_reg_n_0_[14]\,
      S(0) => \Address_reg_n_0_[13]\
    );
\Address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[17]_i_1_n_0\,
      Q => \Address_reg_n_0_[17]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[18]_i_1_n_0\,
      Q => \Address_reg_n_0_[18]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[19]_i_1_n_0\,
      Q => \Address_reg_n_0_[19]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[1]_i_1_n_0\,
      Q => ROM_Address(1),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[20]_i_1_n_0\,
      Q => \Address_reg_n_0_[20]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[16]_i_2_n_0\,
      CO(3) => \Address_reg[20]_i_2_n_0\,
      CO(2) => \Address_reg[20]_i_2_n_1\,
      CO(1) => \Address_reg[20]_i_2_n_2\,
      CO(0) => \Address_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \Address_reg_n_0_[20]\,
      S(2) => \Address_reg_n_0_[19]\,
      S(1) => \Address_reg_n_0_[18]\,
      S(0) => \Address_reg_n_0_[17]\
    );
\Address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[21]_i_1_n_0\,
      Q => \Address_reg_n_0_[21]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[22]_i_1_n_0\,
      Q => \Address_reg_n_0_[22]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[23]_i_1_n_0\,
      Q => \Address_reg_n_0_[23]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[24]_i_1_n_0\,
      Q => \Address_reg_n_0_[24]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[20]_i_2_n_0\,
      CO(3) => \Address_reg[24]_i_2_n_0\,
      CO(2) => \Address_reg[24]_i_2_n_1\,
      CO(1) => \Address_reg[24]_i_2_n_2\,
      CO(0) => \Address_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \Address_reg_n_0_[24]\,
      S(2) => \Address_reg_n_0_[23]\,
      S(1) => \Address_reg_n_0_[22]\,
      S(0) => \Address_reg_n_0_[21]\
    );
\Address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[25]_i_1_n_0\,
      Q => \Address_reg_n_0_[25]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[26]_i_1_n_0\,
      Q => \Address_reg_n_0_[26]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[27]_i_1_n_0\,
      Q => \Address_reg_n_0_[27]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[28]_i_1_n_0\,
      Q => \Address_reg_n_0_[28]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[24]_i_2_n_0\,
      CO(3) => \Address_reg[28]_i_2_n_0\,
      CO(2) => \Address_reg[28]_i_2_n_1\,
      CO(1) => \Address_reg[28]_i_2_n_2\,
      CO(0) => \Address_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \Address_reg_n_0_[28]\,
      S(2) => \Address_reg_n_0_[27]\,
      S(1) => \Address_reg_n_0_[26]\,
      S(0) => \Address_reg_n_0_[25]\
    );
\Address_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[29]_i_1_n_0\,
      Q => \Address_reg_n_0_[29]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[2]_i_1_n_0\,
      Q => ROM_Address(2),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[30]_i_1_n_0\,
      Q => \Address_reg_n_0_[30]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[31]_i_2_n_0\,
      Q => \Address_reg_n_0_[31]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_Address_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Address_reg[31]_i_3_n_2\,
      CO(0) => \Address_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_Address_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \Address_reg_n_0_[31]\,
      S(1) => \Address_reg_n_0_[30]\,
      S(0) => \Address_reg_n_0_[29]\
    );
\Address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[3]_i_1_n_0\,
      Q => ROM_Address(3),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[4]_i_1_n_0\,
      Q => ROM_Address(4),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Address_reg[4]_i_2_n_0\,
      CO(2) => \Address_reg[4]_i_2_n_1\,
      CO(1) => \Address_reg[4]_i_2_n_2\,
      CO(0) => \Address_reg[4]_i_2_n_3\,
      CYINIT => ROM_Address(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => ROM_Address(4 downto 1)
    );
\Address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[5]_i_1_n_0\,
      Q => ROM_Address(5),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[6]_i_1_n_0\,
      Q => ROM_Address(6),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[7]_i_1_n_0\,
      Q => ROM_Address(7),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[8]_i_1_n_0\,
      Q => ROM_Address(8),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[4]_i_2_n_0\,
      CO(3) => \Address_reg[8]_i_2_n_0\,
      CO(2) => \Address_reg[8]_i_2_n_1\,
      CO(1) => \Address_reg[8]_i_2_n_2\,
      CO(0) => \Address_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => ROM_Address(8 downto 5)
    );
\Address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[9]_i_1_n_0\,
      Q => ROM_Address(9),
      R => \Address[31]_i_1_n_0\
    );
DataROM: entity work.\DataROM_AXI4S_ROM_0_1__ROM_blk_mem_gen_0_0\
     port map (
      addra(10 downto 0) => ROM_Address(10 downto 0),
      clka => ACLK,
      douta(15 downto 0) => douta(15 downto 0)
    );
\FSM_sequential_CurrentState[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44FC"
    )
        port map (
      I0 => M_TREADY,
      I1 => CurrentState(1),
      I2 => ARESETN,
      I3 => CurrentState(0),
      O => \FSM_sequential_CurrentState[0]_i_1_n_0\
    );
\FSM_sequential_CurrentState[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CurrentState(0),
      I1 => CurrentState(1),
      O => \FSM_sequential_CurrentState[1]_i_1_n_0\
    );
\FSM_sequential_CurrentState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \FSM_sequential_CurrentState[0]_i_1_n_0\,
      Q => CurrentState(0),
      R => '0'
    );
\FSM_sequential_CurrentState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \FSM_sequential_CurrentState[1]_i_1_n_0\,
      Q => CurrentState(1),
      R => '0'
    );
\TDATA_Int[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CurrentState(1),
      I1 => CurrentState(0),
      O => TLAST_Int0
    );
\TDATA_Int[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentState(1),
      I1 => CurrentState(0),
      O => TLAST_Int
    );
\TDATA_Int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(0),
      Q => M_TDATA(0),
      R => TLAST_Int0
    );
\TDATA_Int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(10),
      Q => M_TDATA(10),
      R => TLAST_Int0
    );
\TDATA_Int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(11),
      Q => M_TDATA(11),
      R => TLAST_Int0
    );
\TDATA_Int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(12),
      Q => M_TDATA(12),
      R => TLAST_Int0
    );
\TDATA_Int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(13),
      Q => M_TDATA(13),
      R => TLAST_Int0
    );
\TDATA_Int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(14),
      Q => M_TDATA(14),
      R => TLAST_Int0
    );
\TDATA_Int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(15),
      Q => M_TDATA(15),
      R => TLAST_Int0
    );
\TDATA_Int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(1),
      Q => M_TDATA(1),
      R => TLAST_Int0
    );
\TDATA_Int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(2),
      Q => M_TDATA(2),
      R => TLAST_Int0
    );
\TDATA_Int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(3),
      Q => M_TDATA(3),
      R => TLAST_Int0
    );
\TDATA_Int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(4),
      Q => M_TDATA(4),
      R => TLAST_Int0
    );
\TDATA_Int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(5),
      Q => M_TDATA(5),
      R => TLAST_Int0
    );
\TDATA_Int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(6),
      Q => M_TDATA(6),
      R => TLAST_Int0
    );
\TDATA_Int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(7),
      Q => M_TDATA(7),
      R => TLAST_Int0
    );
\TDATA_Int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(8),
      Q => M_TDATA(8),
      R => TLAST_Int0
    );
\TDATA_Int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => douta(9),
      Q => M_TDATA(9),
      R => TLAST_Int0
    );
TLAST_Int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => TLAST_Int_i_2_n_0,
      I1 => TLAST_Int_i_3_n_0,
      I2 => TLAST_Int_i_4_n_0,
      I3 => TLAST_Int_i_5_n_0,
      O => TLAST_Int_i_1_n_0
    );
TLAST_Int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \Address_reg_n_0_[11]\,
      I1 => \Address_reg_n_0_[23]\,
      I2 => \Address_reg_n_0_[29]\,
      I3 => \Address_reg_n_0_[28]\,
      I4 => TLAST_Int_i_6_n_0,
      O => TLAST_Int_i_2_n_0
    );
TLAST_Int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \Address_reg_n_0_[14]\,
      I1 => \Address_reg_n_0_[18]\,
      I2 => ROM_Address(0),
      I3 => ROM_Address(3),
      I4 => TLAST_Int_i_7_n_0,
      O => TLAST_Int_i_3_n_0
    );
TLAST_Int_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \Address_reg_n_0_[13]\,
      I1 => \Address_reg_n_0_[17]\,
      I2 => \Address_reg_n_0_[24]\,
      I3 => ROM_Address(6),
      I4 => TLAST_Int_i_8_n_0,
      O => TLAST_Int_i_4_n_0
    );
TLAST_Int_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ROM_Address(8),
      I1 => \Address_reg_n_0_[20]\,
      I2 => \Address_reg_n_0_[27]\,
      I3 => ROM_Address(7),
      I4 => TLAST_Int_i_9_n_0,
      O => TLAST_Int_i_5_n_0
    );
TLAST_Int_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => ROM_Address(1),
      I1 => ROM_Address(2),
      I2 => \Address_reg_n_0_[19]\,
      I3 => \Address_reg_n_0_[15]\,
      O => TLAST_Int_i_6_n_0
    );
TLAST_Int_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ROM_Address(4),
      I1 => \Address_reg_n_0_[31]\,
      I2 => \Address_reg_n_0_[22]\,
      I3 => ROM_Address(10),
      O => TLAST_Int_i_7_n_0
    );
TLAST_Int_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Address_reg_n_0_[30]\,
      I1 => \Address_reg_n_0_[26]\,
      I2 => \Address_reg_n_0_[21]\,
      I3 => ROM_Address(9),
      O => TLAST_Int_i_8_n_0
    );
TLAST_Int_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => ROM_Address(5),
      I1 => \Address_reg_n_0_[25]\,
      I2 => \Address_reg_n_0_[16]\,
      I3 => \Address_reg_n_0_[12]\,
      O => TLAST_Int_i_9_n_0
    );
TLAST_Int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => TLAST_Int,
      D => TLAST_Int_i_1_n_0,
      Q => M_TLAST,
      R => TLAST_Int0
    );
TVALID_Int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7C0C"
    )
        port map (
      I0 => M_TREADY,
      I1 => CurrentState(1),
      I2 => CurrentState(0),
      I3 => \^m_tvalid\,
      O => TVALID_Int_i_1_n_0
    );
TVALID_Int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => TVALID_Int_i_1_n_0,
      Q => \^m_tvalid\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM_AXI4S_ROM_0_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_TID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_TREADY : in STD_LOGIC;
    M_TVALID : out STD_LOGIC;
    M_TLAST : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DataROM_AXI4S_ROM_0_1 : entity is "DataROM_AXI4S_ROM_0_1,AXI4S_ROM,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DataROM_AXI4S_ROM_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of DataROM_AXI4S_ROM_0_1 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of DataROM_AXI4S_ROM_0_1 : entity is "AXI4S_ROM,Vivado 2018.3";
end DataROM_AXI4S_ROM_0_1;

architecture STRUCTURE of DataROM_AXI4S_ROM_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of ACLK : signal is "xilinx.com:signal:clock:1.0 M_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ACLK : signal is "XIL_INTERFACENAME M_ACLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET ARESETN, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN DataROM_ACLK_0, INSERT_VIP 0";
  attribute x_interface_info of ARESETN : signal is "xilinx.com:signal:reset:1.0 M_ARESETN RST";
  attribute x_interface_parameter of ARESETN : signal is "XIL_INTERFACENAME M_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of M_TLAST : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute x_interface_info of M_TREADY : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of M_TVALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of M_TDATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_parameter of M_TDATA : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN DataROM_ACLK_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of M_TID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TID";
begin
  M_TDATA(31) <= \<const0>\;
  M_TDATA(30) <= \<const0>\;
  M_TDATA(29) <= \<const0>\;
  M_TDATA(28) <= \<const0>\;
  M_TDATA(27) <= \<const0>\;
  M_TDATA(26) <= \<const0>\;
  M_TDATA(25) <= \<const0>\;
  M_TDATA(24) <= \<const0>\;
  M_TDATA(23) <= \<const0>\;
  M_TDATA(22) <= \<const0>\;
  M_TDATA(21) <= \<const0>\;
  M_TDATA(20) <= \<const0>\;
  M_TDATA(19) <= \<const0>\;
  M_TDATA(18) <= \<const0>\;
  M_TDATA(17) <= \<const0>\;
  M_TDATA(16) <= \<const0>\;
  M_TDATA(15 downto 0) <= \^m_tdata\(15 downto 0);
  M_TID(7) <= \<const0>\;
  M_TID(6) <= \<const0>\;
  M_TID(5) <= \<const0>\;
  M_TID(4) <= \<const0>\;
  M_TID(3) <= \<const0>\;
  M_TID(2) <= \<const0>\;
  M_TID(1) <= \<const0>\;
  M_TID(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.\DataROM_AXI4S_ROM_0_1__AXI4S_ROM\
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M_TDATA(15 downto 0) => \^m_tdata\(15 downto 0),
      M_TLAST => M_TLAST,
      M_TREADY => M_TREADY,
      M_TVALID => M_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TLAST : out STD_LOGIC;
    TREADY : in STD_LOGIC;
    TVALID : out STD_LOGIC
  );
  attribute hw_handoff : string;
  attribute hw_handoff of DataROM : entity is "DataROM.hwdef";
end DataROM;

architecture STRUCTURE of DataROM is
  attribute syn_black_box : string;
  attribute syn_black_box of SineROM : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of SineROM : label is "AXI4S_ROM,Vivado 2018.3";
  attribute x_interface_info : string;
  attribute x_interface_info of ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ACLK : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET ARESETN, CLK_DOMAIN DataROM_ACLK_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute x_interface_info of ARESETN : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute x_interface_parameter of ARESETN : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
SineROM: entity work.DataROM_AXI4S_ROM_0_1
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M_TDATA(31 downto 0) => TDATA(31 downto 0),
      M_TID(7 downto 0) => TID(7 downto 0),
      M_TLAST => TLAST,
      M_TREADY => TREADY,
      M_TVALID => TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top is
  port (
    Clock : in STD_LOGIC;
    Resetn : in STD_LOGIC;
    Active : out STD_LOGIC;
    Last : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    LRCLK : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    SD : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
  attribute WIDTH : integer;
  attribute WIDTH of Top : entity is 16;
end Top;

architecture STRUCTURE of Top is
  signal Active_OBUF : STD_LOGIC;
  signal ClockOut : STD_LOGIC;
  signal Clock_IBUF : STD_LOGIC;
  signal I2S_Transmitter_n_2 : STD_LOGIC;
  signal LRCLK_Int_reg_i_3_n_0 : STD_LOGIC;
  signal LRCLK_OBUF : STD_LOGIC;
  signal Last_OBUF : STD_LOGIC;
  signal Locked : STD_LOGIC;
  signal MCLK_OBUF : STD_LOGIC;
  signal MCLK_OBUF_BUFG : STD_LOGIC;
  signal Resetn_IBUF : STD_LOGIC;
  signal SCLK_OBUF : STD_LOGIC;
  signal SD_OBUF : STD_LOGIC;
  signal TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TREADY : STD_LOGIC;
  signal TVALID : STD_LOGIC;
  signal NLW_AudioData_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Active_OBUF_inst_i_1 : label is "soft_lutpair37";
  attribute hw_handoff : string;
  attribute hw_handoff of AudioData : label is "DataROM.hwdef";
  attribute OPT_INSERTED : boolean;
  attribute OPT_INSERTED of Clock_IBUF_inst : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Clock_IBUF_inst : label is "MLO ";
  attribute hw_handoff of InputClock : label is "ClockGeneration.hwdef";
  attribute SOFT_HLUTNM of MCLK_OBUF_BUFG_inst_i_1 : label is "soft_lutpair37";
begin
Active_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Active_OBUF,
      O => Active
    );
Active_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Resetn_IBUF,
      I1 => Locked,
      O => Active_OBUF
    );
AudioData: entity work.DataROM
     port map (
      ACLK => Clock_IBUF,
      ARESETN => Active_OBUF,
      TDATA(31 downto 0) => TDATA(31 downto 0),
      TID(7 downto 0) => NLW_AudioData_TID_UNCONNECTED(7 downto 0),
      TLAST => Last_OBUF,
      TREADY => TREADY,
      TVALID => TVALID
    );
Clock_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Clock,
      O => Clock_IBUF
    );
I2S_Transmitter: entity work.I2S
     port map (
      AudioClock_reg_0 => I2S_Transmitter_n_2,
      CLK => MCLK_OBUF_BUFG,
      Clock => Clock_IBUF,
      D(31 downto 0) => TDATA(31 downto 0),
      LRCLK_OBUF => LRCLK_OBUF,
      Locked => Locked,
      Resetn_IBUF => Resetn_IBUF,
      SCLK_OBUF => SCLK_OBUF,
      SD_Int_reg => LRCLK_Int_reg_i_3_n_0,
      SD_OBUF => SD_OBUF,
      TREADY => TREADY,
      TVALID => TVALID
    );
InputClock: entity work.ClockGeneration
     port map (
      ClockIn => Clock_IBUF,
      ClockOut => ClockOut,
      Locked => Locked
    );
LRCLK_Int_reg_i_3: unisim.vcomponents.BUFG
     port map (
      I => I2S_Transmitter_n_2,
      O => LRCLK_Int_reg_i_3_n_0
    );
LRCLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LRCLK_OBUF,
      O => LRCLK
    );
Last_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Last_OBUF,
      O => Last
    );
MCLK_OBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => MCLK_OBUF,
      O => MCLK_OBUF_BUFG
    );
MCLK_OBUF_BUFG_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Locked,
      I1 => ClockOut,
      O => MCLK_OBUF
    );
MCLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => MCLK_OBUF_BUFG,
      O => MCLK
    );
Resetn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Resetn,
      O => Resetn_IBUF
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
