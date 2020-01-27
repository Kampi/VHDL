-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug  9 16:36:12 2019
-- Host        : PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Dropbox/Git/VHDL/I2S/I2S_Audio.sim/sim_2/impl/func/xsim/Testbench_func_impl.vhd
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
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of clkout1_buf : label is "BUFG_OPT ";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
  attribute OPT_MODIFIED of mmcm_adv_inst : label is "MLO BUFG_OPT ";
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
      COMPENSATION => "BUF_IN",
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
entity \DataROM_AXI4S_ROM_0_1__ROM\ is
  port (
    M_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ACLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    TLAST_Int0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwropt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_AXI4S_ROM_0_1__ROM\ : entity is "ROM";
end \DataROM_AXI4S_ROM_0_1__ROM\;

architecture STRUCTURE of \DataROM_AXI4S_ROM_0_1__ROM\ is
  signal NLW_DataOut_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_DataOut_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_DataOut_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of DataOut_reg : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of DataOut_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of DataOut_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of DataOut_reg : label is "ENARDEN=NEW";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of DataOut_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of DataOut_reg : label is "U0/DataROM/DataOut";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of DataOut_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of DataOut_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of DataOut_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of DataOut_reg : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of DataOut_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of DataOut_reg : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of DataOut_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of DataOut_reg : label is 15;
begin
DataOut_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"000",
      ADDRARDADDR(10 downto 4) => ADDRARDADDR(6 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => ACLK,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => M_TDATA(15 downto 0),
      DOBDO(15 downto 0) => NLW_DataOut_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_DataOut_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_DataOut_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => pwropt,
      ENBWREN => '0',
      REGCEAREGCE => Q(0),
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => TLAST_Int0,
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
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
    FIFO_1_Full_reg : out STD_LOGIC;
    FIFO_1_Full_reg_0 : out STD_LOGIC;
    \FSM_sequential_I2SState_reg[2]\ : out STD_LOGIC;
    SD_Int_reg_0 : in STD_LOGIC;
    Resetn_IBUF : in STD_LOGIC;
    Locked : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    I2SState : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_sequential_I2SState_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_I2SState_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_I2SState_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_I2SState_reg[0]_0\ : in STD_LOGIC
  );
end I2S_Transmitter;

architecture STRUCTURE of I2S_Transmitter is
  signal BitCounter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BitCounter_Int1 : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__0_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \BitCounter_Int1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal BitCounter_Int1_carry_i_1_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_2_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_3_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_4_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_5_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_6_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_i_7_n_0 : STD_LOGIC;
  signal BitCounter_Int1_carry_n_0 : STD_LOGIC;
  signal \BitCounter_Int[0]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int[0]_i_3_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \BitCounter_Int_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[2]_i_9_n_0\ : STD_LOGIC;
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
  signal LRCLK_Int_reg_i_2_n_5 : STD_LOGIC;
  signal LRCLK_Int_reg_i_4_n_0 : STD_LOGIC;
  signal LRCLK_Int_reg_i_7_n_0 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ShiftReg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal NLW_BitCounter_Int1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_BitCounter_Int1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BitCounter_Int1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter_Int1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BitCounter_Int1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter_Int1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BitCounter_Int1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter_Int1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BitCounter_Int_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter_Int_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter_Int_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter_Int_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter_Int_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter_Int_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BitCounter_Int_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BitCounter_Int_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_LRCLK_Int_reg_i_12_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_LRCLK_Int_reg_i_12_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_Int_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_Int_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_Int_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_LRCLK_Int_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_LRCLK_Int_reg_i_7_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_LRCLK_Int_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of BitCounter_Int1_carry : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int1_carry__0\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int1_carry__1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int1_carry__2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int_reg[0]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int_reg[12]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int_reg[16]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int_reg[20]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int_reg[24]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int_reg[28]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int_reg[4]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BitCounter_Int_reg[8]_i_1\ : label is "SWEEP ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_I2SState[2]_i_1\ : label is "soft_lutpair1";
  attribute OPT_MODIFIED of LRCLK_Int_reg_i_12 : label is "SWEEP ";
  attribute OPT_MODIFIED of LRCLK_Int_reg_i_2 : label is "SWEEP ";
  attribute OPT_MODIFIED of LRCLK_Int_reg_i_4 : label is "SWEEP ";
  attribute OPT_MODIFIED of LRCLK_Int_reg_i_7 : label is "SWEEP ";
  attribute SOFT_HLUTNM of \ShiftReg[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ShiftReg[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ShiftReg[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ShiftReg[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ShiftReg[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ShiftReg[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ShiftReg[15]_i_1\ : label is "soft_lutpair9";
  attribute OPT_MODIFIED of \ShiftReg[16]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[16]_i_1\ : label is "soft_lutpair9";
  attribute OPT_MODIFIED of \ShiftReg[17]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[17]_i_1\ : label is "soft_lutpair10";
  attribute OPT_MODIFIED of \ShiftReg[18]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[18]_i_1\ : label is "soft_lutpair11";
  attribute OPT_MODIFIED of \ShiftReg[19]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ShiftReg[1]_i_1\ : label is "soft_lutpair2";
  attribute OPT_MODIFIED of \ShiftReg[20]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[20]_i_1\ : label is "soft_lutpair10";
  attribute OPT_MODIFIED of \ShiftReg[21]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[21]_i_1\ : label is "soft_lutpair11";
  attribute OPT_MODIFIED of \ShiftReg[22]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[22]_i_1\ : label is "soft_lutpair13";
  attribute OPT_MODIFIED of \ShiftReg[23]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[23]_i_1\ : label is "soft_lutpair12";
  attribute OPT_MODIFIED of \ShiftReg[24]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[24]_i_1\ : label is "soft_lutpair13";
  attribute OPT_MODIFIED of \ShiftReg[25]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[25]_i_1\ : label is "soft_lutpair14";
  attribute OPT_MODIFIED of \ShiftReg[26]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[26]_i_1\ : label is "soft_lutpair14";
  attribute OPT_MODIFIED of \ShiftReg[27]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[27]_i_1\ : label is "soft_lutpair15";
  attribute OPT_MODIFIED of \ShiftReg[28]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[28]_i_1\ : label is "soft_lutpair15";
  attribute OPT_MODIFIED of \ShiftReg[29]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[29]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ShiftReg[2]_i_1\ : label is "soft_lutpair3";
  attribute OPT_MODIFIED of \ShiftReg[30]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[30]_i_1\ : label is "soft_lutpair16";
  attribute OPT_MODIFIED of \ShiftReg[31]_i_1\ : label is "PROPCONST ";
  attribute SOFT_HLUTNM of \ShiftReg[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ShiftReg[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ShiftReg[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ShiftReg[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ShiftReg[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ShiftReg[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ShiftReg[9]_i_1\ : label is "soft_lutpair6";
begin
  SR(0) <= \^sr\(0);
BitCounter_Int1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => BitCounter_Int1_carry_n_0,
      CO(2 downto 0) => NLW_BitCounter_Int1_carry_CO_UNCONNECTED(2 downto 0),
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
      CO(2 downto 0) => \NLW_BitCounter_Int1_carry__0_CO_UNCONNECTED\(2 downto 0),
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
      I0 => BitCounter(15),
      I1 => BitCounter(14),
      O => \BitCounter_Int1_carry__0_i_1_n_0\
    );
\BitCounter_Int1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(13),
      I1 => BitCounter(12),
      O => \BitCounter_Int1_carry__0_i_2_n_0\
    );
\BitCounter_Int1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(11),
      I1 => BitCounter(10),
      O => \BitCounter_Int1_carry__0_i_3_n_0\
    );
\BitCounter_Int1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(9),
      I1 => BitCounter(8),
      O => \BitCounter_Int1_carry__0_i_4_n_0\
    );
\BitCounter_Int1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int1_carry__0_n_0\,
      CO(3) => \BitCounter_Int1_carry__1_n_0\,
      CO(2 downto 0) => \NLW_BitCounter_Int1_carry__1_CO_UNCONNECTED\(2 downto 0),
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
      I0 => BitCounter(23),
      I1 => BitCounter(22),
      O => \BitCounter_Int1_carry__1_i_1_n_0\
    );
\BitCounter_Int1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(21),
      I1 => BitCounter(20),
      O => \BitCounter_Int1_carry__1_i_2_n_0\
    );
\BitCounter_Int1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(19),
      I1 => BitCounter(18),
      O => \BitCounter_Int1_carry__1_i_3_n_0\
    );
\BitCounter_Int1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(17),
      I1 => BitCounter(16),
      O => \BitCounter_Int1_carry__1_i_4_n_0\
    );
\BitCounter_Int1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int1_carry__1_n_0\,
      CO(3) => BitCounter_Int1,
      CO(2 downto 0) => \NLW_BitCounter_Int1_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => BitCounter(31),
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
      I0 => BitCounter(31),
      I1 => BitCounter(30),
      O => \BitCounter_Int1_carry__2_i_1_n_0\
    );
\BitCounter_Int1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(29),
      I1 => BitCounter(28),
      O => \BitCounter_Int1_carry__2_i_2_n_0\
    );
\BitCounter_Int1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(26),
      I1 => BitCounter(27),
      O => \BitCounter_Int1_carry__2_i_3_n_0\
    );
\BitCounter_Int1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(25),
      I1 => BitCounter(24),
      O => \BitCounter_Int1_carry__2_i_4_n_0\
    );
BitCounter_Int1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(5),
      I1 => BitCounter(4),
      O => BitCounter_Int1_carry_i_1_n_0
    );
BitCounter_Int1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => BitCounter(3),
      I1 => BitCounter(2),
      O => BitCounter_Int1_carry_i_2_n_0
    );
BitCounter_Int1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => BitCounter(1),
      I1 => BitCounter(0),
      O => BitCounter_Int1_carry_i_3_n_0
    );
BitCounter_Int1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(7),
      I1 => BitCounter(6),
      O => BitCounter_Int1_carry_i_4_n_0
    );
BitCounter_Int1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => BitCounter(4),
      I1 => BitCounter(5),
      O => BitCounter_Int1_carry_i_5_n_0
    );
BitCounter_Int1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BitCounter(2),
      I1 => BitCounter(3),
      O => BitCounter_Int1_carry_i_6_n_0
    );
BitCounter_Int1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BitCounter(0),
      I1 => BitCounter(1),
      O => BitCounter_Int1_carry_i_7_n_0
    );
\BitCounter_Int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => BitCounter_Int1,
      I1 => Resetn_IBUF,
      I2 => Locked,
      O => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(0),
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
      Q => BitCounter(0),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \BitCounter_Int_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_BitCounter_Int_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \BitCounter_Int_reg[0]_i_2_n_4\,
      O(2) => \BitCounter_Int_reg[0]_i_2_n_5\,
      O(1) => \BitCounter_Int_reg[0]_i_2_n_6\,
      O(0) => \BitCounter_Int_reg[0]_i_2_n_7\,
      S(3 downto 1) => BitCounter(3 downto 1),
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
      Q => BitCounter(10),
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
      Q => BitCounter(11),
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
      Q => BitCounter(12),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[8]_i_1_n_0\,
      CO(3) => \BitCounter_Int_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BitCounter_Int_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[12]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[12]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[12]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[12]_i_1_n_7\,
      S(3 downto 0) => BitCounter(15 downto 12)
    );
\BitCounter_Int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[12]_i_1_n_6\,
      Q => BitCounter(13),
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
      Q => BitCounter(14),
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
      Q => BitCounter(15),
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
      Q => BitCounter(16),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[12]_i_1_n_0\,
      CO(3) => \BitCounter_Int_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BitCounter_Int_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[16]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[16]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[16]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[16]_i_1_n_7\,
      S(3 downto 0) => BitCounter(19 downto 16)
    );
\BitCounter_Int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[16]_i_1_n_6\,
      Q => BitCounter(17),
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
      Q => BitCounter(18),
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
      Q => BitCounter(19),
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
      Q => BitCounter(1),
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
      Q => BitCounter(20),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[16]_i_1_n_0\,
      CO(3) => \BitCounter_Int_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BitCounter_Int_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[20]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[20]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[20]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[20]_i_1_n_7\,
      S(3 downto 0) => BitCounter(23 downto 20)
    );
\BitCounter_Int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[20]_i_1_n_6\,
      Q => BitCounter(21),
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
      Q => BitCounter(22),
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
      Q => BitCounter(23),
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
      Q => BitCounter(24),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[20]_i_1_n_0\,
      CO(3) => \BitCounter_Int_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BitCounter_Int_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[24]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[24]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[24]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[24]_i_1_n_7\,
      S(3 downto 0) => BitCounter(27 downto 24)
    );
\BitCounter_Int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[24]_i_1_n_6\,
      Q => BitCounter(25),
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
      Q => BitCounter(26),
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
      Q => BitCounter(27),
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
      Q => BitCounter(28),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_BitCounter_Int_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[28]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[28]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[28]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[28]_i_1_n_7\,
      S(3 downto 0) => BitCounter(31 downto 28)
    );
\BitCounter_Int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[28]_i_1_n_6\,
      Q => BitCounter(29),
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
      Q => BitCounter(2),
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
      Q => BitCounter(30),
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
      Q => BitCounter(31),
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
      Q => BitCounter(3),
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
      Q => BitCounter(4),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[0]_i_2_n_0\,
      CO(3) => \BitCounter_Int_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BitCounter_Int_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[4]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[4]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[4]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[4]_i_1_n_7\,
      S(3 downto 0) => BitCounter(7 downto 4)
    );
\BitCounter_Int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[4]_i_1_n_6\,
      Q => BitCounter(5),
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
      Q => BitCounter(6),
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
      Q => BitCounter(7),
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
      Q => BitCounter(8),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\BitCounter_Int_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BitCounter_Int_reg[4]_i_1_n_0\,
      CO(3) => \BitCounter_Int_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BitCounter_Int_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BitCounter_Int_reg[8]_i_1_n_4\,
      O(2) => \BitCounter_Int_reg[8]_i_1_n_5\,
      O(1) => \BitCounter_Int_reg[8]_i_1_n_6\,
      O(0) => \BitCounter_Int_reg[8]_i_1_n_7\,
      S(3 downto 0) => BitCounter(11 downto 8)
    );
\BitCounter_Int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SD_Int_reg_0,
      CE => '1',
      D => \BitCounter_Int_reg[8]_i_1_n_6\,
      Q => BitCounter(9),
      R => \BitCounter_Int[0]_i_1_n_0\
    );
\FSM_sequential_I2SState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003FFFFAAAB0000"
    )
        port map (
      I0 => \FSM_sequential_I2SState[0]_i_2_n_0\,
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => \FSM_sequential_I2SState_reg[1]\,
      I3 => \FSM_sequential_I2SState_reg[0]\,
      I4 => \FSM_sequential_I2SState_reg[0]_0\,
      I5 => I2SState(0),
      O => FIFO_1_Full_reg_0
    );
\FSM_sequential_I2SState[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010101010FF10"
    )
        port map (
      I0 => \FSM_sequential_I2SState[2]_i_5_n_0\,
      I1 => \FSM_sequential_I2SState[0]_i_5_n_0\,
      I2 => \FSM_sequential_I2SState[2]_i_6_n_0\,
      I3 => ARESETN,
      I4 => I2SState(1),
      I5 => I2SState(2),
      O => \FSM_sequential_I2SState[0]_i_2_n_0\
    );
\FSM_sequential_I2SState[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => BitCounter(1),
      I1 => BitCounter(0),
      I2 => BitCounter(6),
      I3 => BitCounter(7),
      I4 => \FSM_sequential_I2SState[0]_i_6_n_0\,
      O => \FSM_sequential_I2SState[0]_i_5_n_0\
    );
\FSM_sequential_I2SState[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFFFFFF"
    )
        port map (
      I0 => BitCounter(2),
      I1 => BitCounter(3),
      I2 => I2SState(2),
      I3 => I2SState(1),
      I4 => BitCounter(5),
      I5 => BitCounter(4),
      O => \FSM_sequential_I2SState[0]_i_6_n_0\
    );
\FSM_sequential_I2SState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FFFF0F004040"
    )
        port map (
      I0 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I1 => \FSM_sequential_I2SState_reg[1]\,
      I2 => I2SState(2),
      I3 => \FSM_sequential_I2SState_reg[1]_0\,
      I4 => I2SState(0),
      I5 => I2SState(1),
      O => FIFO_1_Full_reg
    );
\FSM_sequential_I2SState[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCC8"
    )
        port map (
      I0 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I1 => I2SState(2),
      I2 => I2SState(0),
      I3 => I2SState(1),
      O => \FSM_sequential_I2SState_reg[2]\
    );
\FSM_sequential_I2SState[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BitCounter(25),
      I1 => BitCounter(24),
      I2 => BitCounter(21),
      I3 => BitCounter(20),
      O => \FSM_sequential_I2SState[2]_i_10_n_0\
    );
\FSM_sequential_I2SState[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BitCounter(29),
      I1 => BitCounter(28),
      I2 => BitCounter(17),
      I3 => BitCounter(16),
      O => \FSM_sequential_I2SState[2]_i_11_n_0\
    );
\FSM_sequential_I2SState[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_I2SState[2]_i_3_n_0\,
      I1 => \FSM_sequential_I2SState[2]_i_4_n_0\,
      I2 => BitCounter(4),
      I3 => BitCounter(5),
      I4 => \FSM_sequential_I2SState[2]_i_5_n_0\,
      I5 => \FSM_sequential_I2SState[2]_i_6_n_0\,
      O => \FSM_sequential_I2SState[2]_i_2_n_0\
    );
\FSM_sequential_I2SState[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BitCounter(1),
      I1 => BitCounter(0),
      I2 => BitCounter(2),
      I3 => BitCounter(3),
      O => \FSM_sequential_I2SState[2]_i_3_n_0\
    );
\FSM_sequential_I2SState[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BitCounter(6),
      I1 => BitCounter(7),
      O => \FSM_sequential_I2SState[2]_i_4_n_0\
    );
\FSM_sequential_I2SState[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => BitCounter(12),
      I1 => BitCounter(13),
      I2 => BitCounter(14),
      I3 => BitCounter(15),
      I4 => \FSM_sequential_I2SState[2]_i_7_n_0\,
      O => \FSM_sequential_I2SState[2]_i_5_n_0\
    );
\FSM_sequential_I2SState[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \FSM_sequential_I2SState[2]_i_8_n_0\,
      I1 => \FSM_sequential_I2SState[2]_i_9_n_0\,
      I2 => BitCounter(23),
      I3 => BitCounter(22),
      I4 => \FSM_sequential_I2SState[2]_i_10_n_0\,
      I5 => \FSM_sequential_I2SState[2]_i_11_n_0\,
      O => \FSM_sequential_I2SState[2]_i_6_n_0\
    );
\FSM_sequential_I2SState[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BitCounter(11),
      I1 => BitCounter(10),
      I2 => BitCounter(9),
      I3 => BitCounter(8),
      O => \FSM_sequential_I2SState[2]_i_7_n_0\
    );
\FSM_sequential_I2SState[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => BitCounter(31),
      I1 => BitCounter(30),
      I2 => BitCounter(19),
      I3 => BitCounter(18),
      O => \FSM_sequential_I2SState[2]_i_8_n_0\
    );
\FSM_sequential_I2SState[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(26),
      I1 => BitCounter(27),
      O => \FSM_sequential_I2SState[2]_i_9_n_0\
    );
LRCLK_Int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Resetn_IBUF,
      I1 => Locked,
      O => \^sr\(0)
    );
LRCLK_Int_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(23),
      I1 => BitCounter(22),
      O => LRCLK_Int_i_10_n_0
    );
LRCLK_Int_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(21),
      I1 => BitCounter(20),
      O => LRCLK_Int_i_11_n_0
    );
LRCLK_Int_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(19),
      I1 => BitCounter(18),
      O => LRCLK_Int_i_13_n_0
    );
LRCLK_Int_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(17),
      I1 => BitCounter(16),
      O => LRCLK_Int_i_14_n_0
    );
LRCLK_Int_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(15),
      I1 => BitCounter(14),
      O => LRCLK_Int_i_15_n_0
    );
LRCLK_Int_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(13),
      I1 => BitCounter(12),
      O => LRCLK_Int_i_16_n_0
    );
LRCLK_Int_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(5),
      I1 => BitCounter(4),
      O => LRCLK_Int_i_17_n_0
    );
LRCLK_Int_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(11),
      I1 => BitCounter(10),
      O => LRCLK_Int_i_18_n_0
    );
LRCLK_Int_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(9),
      I1 => BitCounter(8),
      O => LRCLK_Int_i_19_n_0
    );
LRCLK_Int_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(7),
      I1 => BitCounter(6),
      O => LRCLK_Int_i_20_n_0
    );
LRCLK_Int_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => BitCounter(4),
      I1 => BitCounter(5),
      O => LRCLK_Int_i_21_n_0
    );
LRCLK_Int_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(31),
      I1 => BitCounter(30),
      O => LRCLK_Int_i_5_n_0
    );
LRCLK_Int_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(29),
      I1 => BitCounter(28),
      O => LRCLK_Int_i_6_n_0
    );
LRCLK_Int_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(26),
      I1 => BitCounter(27),
      O => LRCLK_Int_i_8_n_0
    );
LRCLK_Int_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BitCounter(25),
      I1 => BitCounter(24),
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
      CO(2 downto 0) => NLW_LRCLK_Int_reg_i_12_CO_UNCONNECTED(2 downto 0),
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
      CO(3 downto 0) => NLW_LRCLK_Int_reg_i_2_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => BitCounter(31),
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
      CO(2 downto 0) => NLW_LRCLK_Int_reg_i_4_CO_UNCONNECTED(2 downto 0),
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
      CO(2 downto 0) => NLW_LRCLK_Int_reg_i_7_CO_UNCONNECTED(2 downto 0),
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
\ShiftReg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data(0),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(0)
    );
\ShiftReg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(10),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(10),
      O => ShiftReg(10)
    );
\ShiftReg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(11),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(11),
      O => ShiftReg(11)
    );
\ShiftReg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(12),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(12),
      O => ShiftReg(12)
    );
\ShiftReg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(13),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(13),
      O => ShiftReg(13)
    );
\ShiftReg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(14),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(14),
      O => ShiftReg(14)
    );
\ShiftReg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(15),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(15),
      O => ShiftReg(15)
    );
\ShiftReg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(16),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(16)
    );
\ShiftReg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(17),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(17)
    );
\ShiftReg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(18),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(18)
    );
\ShiftReg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(19),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(19)
    );
\ShiftReg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(1),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(1),
      O => ShiftReg(1)
    );
\ShiftReg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(20),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(20)
    );
\ShiftReg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(21),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(21)
    );
\ShiftReg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(22),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(22)
    );
\ShiftReg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(23),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(23)
    );
\ShiftReg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(24),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(24)
    );
\ShiftReg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(25),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(25)
    );
\ShiftReg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(26),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(26)
    );
\ShiftReg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(27),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(27)
    );
\ShiftReg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(28),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(28)
    );
\ShiftReg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(29),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(29)
    );
\ShiftReg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(2),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(2),
      O => ShiftReg(2)
    );
\ShiftReg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(30),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(30)
    );
\ShiftReg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data1(31),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      O => ShiftReg(31)
    );
\ShiftReg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(3),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(3),
      O => ShiftReg(3)
    );
\ShiftReg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(4),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(4),
      O => ShiftReg(4)
    );
\ShiftReg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(5),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(5),
      O => ShiftReg(5)
    );
\ShiftReg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(6),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(6),
      O => ShiftReg(6)
    );
\ShiftReg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(7),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(7),
      O => ShiftReg(7)
    );
\ShiftReg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(8),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(8),
      O => ShiftReg(8)
    );
\ShiftReg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(9),
      I1 => \FSM_sequential_I2SState[2]_i_2_n_0\,
      I2 => Data(9),
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
entity \DataROM_AXI4S_ROM_0_1__AXI4S_ROM\ is
  port (
    M_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_TVALID : out STD_LOGIC;
    M_TLAST : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \DataROM_AXI4S_ROM_0_1__AXI4S_ROM\ : entity is "AXI4S_ROM";
end \DataROM_AXI4S_ROM_0_1__AXI4S_ROM\;

architecture STRUCTURE of \DataROM_AXI4S_ROM_0_1__AXI4S_ROM\ is
  signal Address : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \Address[0]_i_1_n_0\ : STD_LOGIC;
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
  signal \Address[31]_i_3_n_0\ : STD_LOGIC;
  signal \Address[3]_i_1_n_0\ : STD_LOGIC;
  signal \Address[4]_i_1_n_0\ : STD_LOGIC;
  signal \Address[5]_i_1_n_0\ : STD_LOGIC;
  signal \Address[6]_i_1_n_0\ : STD_LOGIC;
  signal \Address[7]_i_1_n_0\ : STD_LOGIC;
  signal \Address[8]_i_1_n_0\ : STD_LOGIC;
  signal \Address[9]_i_1_n_0\ : STD_LOGIC;
  signal Address_0 : STD_LOGIC;
  signal \Address_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \Address_reg_rep_n_0_[0]\ : STD_LOGIC;
  signal \Address_reg_rep_n_0_[1]\ : STD_LOGIC;
  signal \Address_reg_rep_n_0_[2]\ : STD_LOGIC;
  signal \Address_reg_rep_n_0_[3]\ : STD_LOGIC;
  signal \Address_reg_rep_n_0_[4]\ : STD_LOGIC;
  signal \Address_reg_rep_n_0_[5]\ : STD_LOGIC;
  signal \Address_reg_rep_n_0_[6]\ : STD_LOGIC;
  signal \Address_rep[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_CurrentState_reg_n_0_[3]\ : STD_LOGIC;
  signal \^m_tlast\ : STD_LOGIC;
  signal \^m_tvalid\ : STD_LOGIC;
  signal TDATA_Int : STD_LOGIC;
  signal TLAST_Int0 : STD_LOGIC;
  signal TLAST_Int_i_10_n_0 : STD_LOGIC;
  signal TLAST_Int_i_11_n_0 : STD_LOGIC;
  signal TLAST_Int_i_12_n_0 : STD_LOGIC;
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
  signal \NLW_Address_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Address_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Address_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Address_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Address_reg[28]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Address_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Address_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Address_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Address_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Address[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Address[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Address[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Address[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Address[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Address[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Address[16]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Address[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Address[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Address[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Address[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Address[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Address[24]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Address[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Address[26]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Address[27]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Address[28]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Address[29]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Address[30]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Address[9]_i_1\ : label is "soft_lutpair10";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Address_reg[12]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \Address_reg[16]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \Address_reg[20]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \Address_reg[24]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \Address_reg[28]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \Address_reg[31]_i_4\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \Address_reg[4]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \Address_reg[8]_i_2\ : label is "SWEEP ";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \Address_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \Address_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \Address_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \Address_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \Address_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \Address_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \Address_reg_rep[6]\ : label is "no";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_CurrentState[3]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_CurrentState_reg[0]\ : label is "reset:0001,endofreset:0010,waitforready:1000,readdata:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CurrentState_reg[1]\ : label is "reset:0001,endofreset:0010,waitforready:1000,readdata:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CurrentState_reg[2]\ : label is "reset:0001,endofreset:0010,waitforready:1000,readdata:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_CurrentState_reg[3]\ : label is "reset:0001,endofreset:0010,waitforready:1000,readdata:0100";
  attribute SOFT_HLUTNM of TVALID_Int_i_1 : label is "soft_lutpair0";
begin
  M_TLAST <= \^m_tlast\;
  M_TVALID <= \^m_tvalid\;
\Address[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1A"
    )
        port map (
      I0 => TDATA_Int,
      I1 => TLAST_Int0,
      I2 => Address(0),
      O => \Address[0]_i_1_n_0\
    );
\Address[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(10),
      O => \Address[10]_i_1_n_0\
    );
\Address[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(11),
      O => \Address[11]_i_1_n_0\
    );
\Address[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(12),
      O => \Address[12]_i_1_n_0\
    );
\Address[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(13),
      O => \Address[13]_i_1_n_0\
    );
\Address[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(14),
      O => \Address[14]_i_1_n_0\
    );
\Address[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(15),
      O => \Address[15]_i_1_n_0\
    );
\Address[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(16),
      O => \Address[16]_i_1_n_0\
    );
\Address[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(17),
      O => \Address[17]_i_1_n_0\
    );
\Address[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(18),
      O => \Address[18]_i_1_n_0\
    );
\Address[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(19),
      O => \Address[19]_i_1_n_0\
    );
\Address[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(1),
      O => \Address[1]_i_1_n_0\
    );
\Address[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(20),
      O => \Address[20]_i_1_n_0\
    );
\Address[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(21),
      O => \Address[21]_i_1_n_0\
    );
\Address[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(22),
      O => \Address[22]_i_1_n_0\
    );
\Address[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(23),
      O => \Address[23]_i_1_n_0\
    );
\Address[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(24),
      O => \Address[24]_i_1_n_0\
    );
\Address[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(25),
      O => \Address[25]_i_1_n_0\
    );
\Address[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(26),
      O => \Address[26]_i_1_n_0\
    );
\Address[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(27),
      O => \Address[27]_i_1_n_0\
    );
\Address[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(28),
      O => \Address[28]_i_1_n_0\
    );
\Address[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(29),
      O => \Address[29]_i_1_n_0\
    );
\Address[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(2),
      O => \Address[2]_i_1_n_0\
    );
\Address[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(30),
      O => \Address[30]_i_1_n_0\
    );
\Address[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => TLAST_Int0,
      I1 => TDATA_Int,
      I2 => TLAST_Int_i_2_n_0,
      I3 => TLAST_Int_i_3_n_0,
      O => \Address[31]_i_1_n_0\
    );
\Address[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TDATA_Int,
      I1 => TLAST_Int0,
      O => Address_0
    );
\Address[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(31),
      O => \Address[31]_i_3_n_0\
    );
\Address[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(3),
      O => \Address[3]_i_1_n_0\
    );
\Address[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(4),
      O => \Address[4]_i_1_n_0\
    );
\Address[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(5),
      O => \Address[5]_i_1_n_0\
    );
\Address[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(6),
      O => \Address[6]_i_1_n_0\
    );
\Address[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(7),
      O => \Address[7]_i_1_n_0\
    );
\Address[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(8),
      O => \Address[8]_i_1_n_0\
    );
\Address[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TDATA_Int,
      I1 => data0(9),
      O => \Address[9]_i_1_n_0\
    );
\Address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \Address[0]_i_1_n_0\,
      Q => Address(0),
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
      Q => Address(10),
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
      Q => Address(11),
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
      Q => Address(12),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[8]_i_2_n_0\,
      CO(3) => \Address_reg[12]_i_2_n_0\,
      CO(2 downto 0) => \NLW_Address_reg[12]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => Address(12 downto 9)
    );
\Address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[13]_i_1_n_0\,
      Q => Address(13),
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
      Q => Address(14),
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
      Q => Address(15),
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
      Q => Address(16),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[12]_i_2_n_0\,
      CO(3) => \Address_reg[16]_i_2_n_0\,
      CO(2 downto 0) => \NLW_Address_reg[16]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => Address(16 downto 13)
    );
\Address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[17]_i_1_n_0\,
      Q => Address(17),
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
      Q => Address(18),
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
      Q => Address(19),
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
      Q => Address(1),
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
      Q => Address(20),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[16]_i_2_n_0\,
      CO(3) => \Address_reg[20]_i_2_n_0\,
      CO(2 downto 0) => \NLW_Address_reg[20]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => Address(20 downto 17)
    );
\Address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[21]_i_1_n_0\,
      Q => Address(21),
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
      Q => Address(22),
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
      Q => Address(23),
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
      Q => Address(24),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[20]_i_2_n_0\,
      CO(3) => \Address_reg[24]_i_2_n_0\,
      CO(2 downto 0) => \NLW_Address_reg[24]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => Address(24 downto 21)
    );
\Address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[25]_i_1_n_0\,
      Q => Address(25),
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
      Q => Address(26),
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
      Q => Address(27),
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
      Q => Address(28),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[24]_i_2_n_0\,
      CO(3) => \Address_reg[28]_i_2_n_0\,
      CO(2 downto 0) => \NLW_Address_reg[28]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => Address(28 downto 25)
    );
\Address_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[29]_i_1_n_0\,
      Q => Address(29),
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
      Q => Address(2),
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
      Q => Address(30),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[31]_i_3_n_0\,
      Q => Address(31),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[28]_i_2_n_0\,
      CO(3 downto 0) => \NLW_Address_reg[31]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_Address_reg[31]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => Address(31 downto 29)
    );
\Address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[3]_i_1_n_0\,
      Q => Address(3),
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
      Q => Address(4),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Address_reg[4]_i_2_n_0\,
      CO(2 downto 0) => \NLW_Address_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => Address(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => Address(4 downto 1)
    );
\Address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[5]_i_1_n_0\,
      Q => Address(5),
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
      Q => Address(6),
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
      Q => Address(7),
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
      Q => Address(8),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Address_reg[4]_i_2_n_0\,
      CO(3) => \Address_reg[8]_i_2_n_0\,
      CO(2 downto 0) => \NLW_Address_reg[8]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => Address(8 downto 5)
    );
\Address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[9]_i_1_n_0\,
      Q => Address(9),
      R => \Address[31]_i_1_n_0\
    );
\Address_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address_rep[0]_i_1_n_0\,
      Q => \Address_reg_rep_n_0_[0]\,
      R => '0'
    );
\Address_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[1]_i_1_n_0\,
      Q => \Address_reg_rep_n_0_[1]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[2]_i_1_n_0\,
      Q => \Address_reg_rep_n_0_[2]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[3]_i_1_n_0\,
      Q => \Address_reg_rep_n_0_[3]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[4]_i_1_n_0\,
      Q => \Address_reg_rep_n_0_[4]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[5]_i_1_n_0\,
      Q => \Address_reg_rep_n_0_[5]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => Address_0,
      D => \Address[6]_i_1_n_0\,
      Q => \Address_reg_rep_n_0_[6]\,
      R => \Address[31]_i_1_n_0\
    );
\Address_rep[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => TDATA_Int,
      I1 => Address(0),
      O => \Address_rep[0]_i_1_n_0\
    );
DataROM: entity work.\DataROM_AXI4S_ROM_0_1__ROM\
     port map (
      ACLK => ACLK,
      ADDRARDADDR(6) => \Address_reg_rep_n_0_[6]\,
      ADDRARDADDR(5) => \Address_reg_rep_n_0_[5]\,
      ADDRARDADDR(4) => \Address_reg_rep_n_0_[4]\,
      ADDRARDADDR(3) => \Address_reg_rep_n_0_[3]\,
      ADDRARDADDR(2) => \Address_reg_rep_n_0_[2]\,
      ADDRARDADDR(1) => \Address_reg_rep_n_0_[1]\,
      ADDRARDADDR(0) => \Address_reg_rep_n_0_[0]\,
      M_TDATA(15 downto 0) => M_TDATA(15 downto 0),
      Q(0) => TDATA_Int,
      TLAST_Int0 => TLAST_Int0,
      pwropt => \FSM_onehot_CurrentState[2]_i_1_n_0\
    );
\FSM_onehot_CurrentState[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => ARESETN,
      I1 => TLAST_Int0,
      O => \FSM_onehot_CurrentState[0]_i_1_n_0\
    );
\FSM_onehot_CurrentState[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ARESETN,
      I1 => TLAST_Int0,
      O => \FSM_onehot_CurrentState[1]_i_1_n_0\
    );
\FSM_onehot_CurrentState[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I2 => M_TREADY,
      O => \FSM_onehot_CurrentState[2]_i_1_n_0\
    );
\FSM_onehot_CurrentState[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => TDATA_Int,
      I1 => M_TREADY,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      O => \FSM_onehot_CurrentState[3]_i_1_n_0\
    );
\FSM_onehot_CurrentState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \FSM_onehot_CurrentState[0]_i_1_n_0\,
      Q => TLAST_Int0,
      R => '0'
    );
\FSM_onehot_CurrentState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \FSM_onehot_CurrentState[1]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_CurrentState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \FSM_onehot_CurrentState[2]_i_1_n_0\,
      Q => TDATA_Int,
      R => '0'
    );
\FSM_onehot_CurrentState_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \FSM_onehot_CurrentState[3]_i_1_n_0\,
      Q => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      R => '0'
    );
TLAST_Int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0F0AAEA"
    )
        port map (
      I0 => \^m_tlast\,
      I1 => TLAST_Int_i_2_n_0,
      I2 => TDATA_Int,
      I3 => TLAST_Int_i_3_n_0,
      I4 => TLAST_Int_i_4_n_0,
      I5 => TLAST_Int0,
      O => TLAST_Int_i_1_n_0
    );
TLAST_Int_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Address(16),
      I1 => Address(12),
      I2 => Address(20),
      I3 => Address(8),
      O => TLAST_Int_i_10_n_0
    );
TLAST_Int_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Address(19),
      I1 => Address(15),
      I2 => Address(23),
      I3 => Address(11),
      O => TLAST_Int_i_11_n_0
    );
TLAST_Int_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Address(22),
      I1 => Address(10),
      I2 => Address(18),
      I3 => Address(14),
      O => TLAST_Int_i_12_n_0
    );
TLAST_Int_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => TLAST_Int_i_5_n_0,
      I1 => TLAST_Int_i_6_n_0,
      I2 => TLAST_Int_i_7_n_0,
      I3 => TLAST_Int_i_8_n_0,
      O => TLAST_Int_i_2_n_0
    );
TLAST_Int_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => TLAST_Int_i_9_n_0,
      I1 => TLAST_Int_i_10_n_0,
      I2 => TLAST_Int_i_11_n_0,
      I3 => TLAST_Int_i_12_n_0,
      O => TLAST_Int_i_3_n_0
    );
TLAST_Int_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_TREADY,
      I1 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      O => TLAST_Int_i_4_n_0
    );
TLAST_Int_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => Address(5),
      I1 => Address(24),
      I2 => Address(1),
      I3 => Address(3),
      O => TLAST_Int_i_5_n_0
    );
TLAST_Int_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Address(26),
      I1 => Address(31),
      I2 => Address(27),
      I3 => Address(28),
      O => TLAST_Int_i_6_n_0
    );
TLAST_Int_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => Address(4),
      I1 => Address(2),
      I2 => Address(6),
      I3 => Address(25),
      O => TLAST_Int_i_7_n_0
    );
TLAST_Int_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => Address(0),
      I1 => Address(30),
      I2 => Address(7),
      I3 => Address(29),
      O => TLAST_Int_i_8_n_0
    );
TLAST_Int_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Address(21),
      I1 => Address(9),
      I2 => Address(17),
      I3 => Address(13),
      O => TLAST_Int_i_9_n_0
    );
TLAST_Int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => TLAST_Int_i_1_n_0,
      Q => \^m_tlast\,
      R => '0'
    );
TVALID_Int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDDDCCCC"
    )
        port map (
      I0 => TLAST_Int0,
      I1 => TDATA_Int,
      I2 => \FSM_onehot_CurrentState_reg_n_0_[3]\,
      I3 => M_TREADY,
      I4 => \^m_tvalid\,
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
entity I2S is
  port (
    LRCLK_OBUF : out STD_LOGIC;
    SD_OBUF : out STD_LOGIC;
    AudioClock_reg_0 : out STD_LOGIC;
    TREADY : out STD_LOGIC;
    SCLK_OBUF : out STD_LOGIC;
    ARESETN : out STD_LOGIC;
    SD_Int_reg : in STD_LOGIC;
    Clock : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Resetn_IBUF : in STD_LOGIC;
    Locked : in STD_LOGIC;
    TVALID : in STD_LOGIC;
    TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end I2S;

architecture STRUCTURE of I2S is
  signal \^aresetn\ : STD_LOGIC;
  signal AudioClock_i_1_n_0 : STD_LOGIC;
  signal \^audioclock_reg_0\ : STD_LOGIC;
  signal \AudioData[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[10]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[11]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[12]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[13]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[14]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[15]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[2]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[31]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[31]_i_2_n_0\ : STD_LOGIC;
  signal \AudioData[3]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[4]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[5]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[6]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[7]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[8]_i_1_n_0\ : STD_LOGIC;
  signal \AudioData[9]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0[0]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0[31]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0[31]_i_2_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[0]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[10]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[11]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[12]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[13]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[14]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[15]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[16]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[17]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[18]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[19]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[1]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[20]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[21]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[22]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[23]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[24]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[25]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[26]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[27]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[28]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[29]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[2]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[30]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[31]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[3]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[4]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[5]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[6]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[7]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[8]\ : STD_LOGIC;
  signal \BytesInFIFO_0_reg_n_0_[9]\ : STD_LOGIC;
  signal \BytesInFIFO_1[31]_i_1_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_1[31]_i_2_n_0\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[10]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[11]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[12]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[13]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[14]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[15]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[16]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[17]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[18]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[19]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[20]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[21]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[22]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[23]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[24]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[25]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[26]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[27]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[28]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[29]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[30]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[31]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[3]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[4]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[5]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[6]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[7]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[8]\ : STD_LOGIC;
  signal \BytesInFIFO_1_reg_n_0_[9]\ : STD_LOGIC;
  signal Data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal FIFOState : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \FIFO_0[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \FIFO_0[1]_3\ : STD_LOGIC;
  signal \FIFO_0[2]_2\ : STD_LOGIC;
  signal \FIFO_0[3][31]_i_10_n_0\ : STD_LOGIC;
  signal \FIFO_0[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \FIFO_0[3][31]_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_0[3][31]_i_4_n_0\ : STD_LOGIC;
  signal \FIFO_0[3][31]_i_5_n_0\ : STD_LOGIC;
  signal \FIFO_0[3][31]_i_6_n_0\ : STD_LOGIC;
  signal \FIFO_0[3][31]_i_7_n_0\ : STD_LOGIC;
  signal \FIFO_0[3][31]_i_8_n_0\ : STD_LOGIC;
  signal \FIFO_0[3][31]_i_9_n_0\ : STD_LOGIC;
  signal \FIFO_0[3]_1\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__0_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__1_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \FIFO_0_Full1_carry__2_n_0\ : STD_LOGIC;
  signal FIFO_0_Full1_carry_i_1_n_0 : STD_LOGIC;
  signal FIFO_0_Full1_carry_i_2_n_0 : STD_LOGIC;
  signal FIFO_0_Full1_carry_i_3_n_0 : STD_LOGIC;
  signal FIFO_0_Full1_carry_i_4_n_0 : STD_LOGIC;
  signal FIFO_0_Full1_carry_i_5_n_0 : STD_LOGIC;
  signal FIFO_0_Full1_carry_n_0 : STD_LOGIC;
  signal FIFO_0_Full_i_1_n_0 : STD_LOGIC;
  signal FIFO_0_Full_reg_n_0 : STD_LOGIC;
  signal \FIFO_0_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_0_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_0_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_0_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_1_Full1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__0_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__1_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \FIFO_1_Full1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal FIFO_1_Full1_carry_i_1_n_0 : STD_LOGIC;
  signal FIFO_1_Full1_carry_i_2_n_0 : STD_LOGIC;
  signal FIFO_1_Full1_carry_i_3_n_0 : STD_LOGIC;
  signal FIFO_1_Full1_carry_i_4_n_0 : STD_LOGIC;
  signal FIFO_1_Full1_carry_i_5_n_0 : STD_LOGIC;
  signal FIFO_1_Full1_carry_i_6_n_0 : STD_LOGIC;
  signal FIFO_1_Full1_carry_i_7_n_0 : STD_LOGIC;
  signal FIFO_1_Full1_carry_i_8_n_0 : STD_LOGIC;
  signal FIFO_1_Full1_carry_n_0 : STD_LOGIC;
  signal FIFO_1_Full_i_1_n_0 : STD_LOGIC;
  signal FIFO_1_Full_i_2_n_0 : STD_LOGIC;
  signal FIFO_1_Full_reg_n_0 : STD_LOGIC;
  signal \FIFO_1_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_1_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_1_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FIFO_1_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \FSM_sequential_FIFOState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_FIFOState[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_FIFOState[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_FIFOState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_FIFOState[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_FIFOState[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_FIFOState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_I2SState[0]_i_4_n_0\ : STD_LOGIC;
  signal I2SState : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal MCLK_Cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \MCLK_Cnt[31]_i_10_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_11_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal MCLK_Cnt_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \MCLK_Cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \MCLK_Cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \ReadCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCounter[0]_i_3_n_0\ : STD_LOGIC;
  signal \ReadCounter[0]_i_4_n_0\ : STD_LOGIC;
  signal \ReadCounter[0]_i_5_n_0\ : STD_LOGIC;
  signal \ReadCounter[0]_i_6_n_0\ : STD_LOGIC;
  signal \ReadCounter[12]_i_2_n_0\ : STD_LOGIC;
  signal \ReadCounter[12]_i_3_n_0\ : STD_LOGIC;
  signal \ReadCounter[12]_i_4_n_0\ : STD_LOGIC;
  signal \ReadCounter[12]_i_5_n_0\ : STD_LOGIC;
  signal \ReadCounter[16]_i_2_n_0\ : STD_LOGIC;
  signal \ReadCounter[16]_i_3_n_0\ : STD_LOGIC;
  signal \ReadCounter[16]_i_4_n_0\ : STD_LOGIC;
  signal \ReadCounter[16]_i_5_n_0\ : STD_LOGIC;
  signal \ReadCounter[20]_i_2_n_0\ : STD_LOGIC;
  signal \ReadCounter[20]_i_3_n_0\ : STD_LOGIC;
  signal \ReadCounter[20]_i_4_n_0\ : STD_LOGIC;
  signal \ReadCounter[20]_i_5_n_0\ : STD_LOGIC;
  signal \ReadCounter[24]_i_2_n_0\ : STD_LOGIC;
  signal \ReadCounter[24]_i_3_n_0\ : STD_LOGIC;
  signal \ReadCounter[24]_i_4_n_0\ : STD_LOGIC;
  signal \ReadCounter[24]_i_5_n_0\ : STD_LOGIC;
  signal \ReadCounter[28]_i_2_n_0\ : STD_LOGIC;
  signal \ReadCounter[28]_i_3_n_0\ : STD_LOGIC;
  signal \ReadCounter[28]_i_4_n_0\ : STD_LOGIC;
  signal \ReadCounter[28]_i_5_n_0\ : STD_LOGIC;
  signal \ReadCounter[4]_i_2_n_0\ : STD_LOGIC;
  signal \ReadCounter[4]_i_3_n_0\ : STD_LOGIC;
  signal \ReadCounter[4]_i_4_n_0\ : STD_LOGIC;
  signal \ReadCounter[4]_i_5_n_0\ : STD_LOGIC;
  signal \ReadCounter[8]_i_2_n_0\ : STD_LOGIC;
  signal \ReadCounter[8]_i_3_n_0\ : STD_LOGIC;
  signal \ReadCounter[8]_i_4_n_0\ : STD_LOGIC;
  signal \ReadCounter[8]_i_5_n_0\ : STD_LOGIC;
  signal ReadCounter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ReadCounter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ReadCounter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \ReadCounter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \ReadCounter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \ReadCounter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \ReadCounter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCounter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ReadCounter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ReadCounter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ReadCounter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ReadCounter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCounter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ReadCounter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ReadCounter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ReadCounter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ReadCounter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCounter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \ReadCounter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \ReadCounter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \ReadCounter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ReadCounter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCounter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \ReadCounter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \ReadCounter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \ReadCounter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \ReadCounter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \ReadCounter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \ReadCounter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \ReadCounter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \ReadCounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCounter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ReadCounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ReadCounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ReadCounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ReadCounter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ReadCounter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ReadCounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ReadCounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ReadCounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^tready\ : STD_LOGIC;
  signal TREADY_Int_i_1_n_0 : STD_LOGIC;
  signal Transmitter_n_1 : STD_LOGIC;
  signal Transmitter_n_3 : STD_LOGIC;
  signal Transmitter_n_4 : STD_LOGIC;
  signal Transmitter_n_5 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in11 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal \NLW_BytesInFIFO_0_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BytesInFIFO_0_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BytesInFIFO_0_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BytesInFIFO_0_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BytesInFIFO_0_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BytesInFIFO_0_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BytesInFIFO_0_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_BytesInFIFO_0_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_BytesInFIFO_0_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_FIFO_0_Full1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_FIFO_0_Full1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIFO_0_Full1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FIFO_0_Full1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIFO_0_Full1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FIFO_0_Full1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIFO_0_Full1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FIFO_0_Full1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_FIFO_1_Full1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_FIFO_1_Full1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIFO_1_Full1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FIFO_1_Full1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIFO_1_Full1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FIFO_1_Full1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FIFO_1_Full1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FIFO_1_Full1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MCLK_Cnt_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_MCLK_Cnt_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_MCLK_Cnt_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_MCLK_Cnt_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_MCLK_Cnt_reg[28]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_MCLK_Cnt_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MCLK_Cnt_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_MCLK_Cnt_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_MCLK_Cnt_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ReadCounter_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ReadCounter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ReadCounter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ReadCounter_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ReadCounter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ReadCounter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ReadCounter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ReadCounter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Transmitter_Data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \BytesInFIFO_0_reg[12]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BytesInFIFO_0_reg[16]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BytesInFIFO_0_reg[20]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BytesInFIFO_0_reg[24]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BytesInFIFO_0_reg[28]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BytesInFIFO_0_reg[31]_i_3\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BytesInFIFO_0_reg[4]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \BytesInFIFO_0_reg[8]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of FIFO_0_Full1_carry : label is "SWEEP ";
  attribute OPT_MODIFIED of \FIFO_0_Full1_carry__0\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \FIFO_0_Full1_carry__1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \FIFO_0_Full1_carry__2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of FIFO_1_Full1_carry : label is "SWEEP ";
  attribute OPT_MODIFIED of \FIFO_1_Full1_carry__0\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \FIFO_1_Full1_carry__1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \FIFO_1_Full1_carry__2\ : label is "SWEEP ";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_FIFOState_reg[0]\ : label is "reset:000,ackdata:010,waitforvalid:001,full_fifo_0:100,full_fifo_1:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_FIFOState_reg[1]\ : label is "reset:000,ackdata:010,waitforvalid:001,full_fifo_0:100,full_fifo_1:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_FIFOState_reg[2]\ : label is "reset:000,ackdata:010,waitforvalid:001,full_fifo_0:100,full_fifo_1:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_I2SState_reg[0]\ : label is "reset:000,loaddata:011,starttransmission:100,waitforfifo:001,waitforsync:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_I2SState_reg[1]\ : label is "reset:000,loaddata:011,starttransmission:100,waitforfifo:001,waitforsync:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_I2SState_reg[2]\ : label is "reset:000,loaddata:011,starttransmission:100,waitforfifo:001,waitforsync:010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MCLK_Cnt[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \MCLK_Cnt[11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \MCLK_Cnt[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \MCLK_Cnt[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \MCLK_Cnt[14]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \MCLK_Cnt[15]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \MCLK_Cnt[16]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \MCLK_Cnt[17]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \MCLK_Cnt[18]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \MCLK_Cnt[19]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \MCLK_Cnt[20]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \MCLK_Cnt[21]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \MCLK_Cnt[22]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \MCLK_Cnt[23]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \MCLK_Cnt[24]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \MCLK_Cnt[25]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \MCLK_Cnt[26]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \MCLK_Cnt[27]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \MCLK_Cnt[28]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \MCLK_Cnt[29]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \MCLK_Cnt[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \MCLK_Cnt[30]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \MCLK_Cnt[31]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \MCLK_Cnt[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \MCLK_Cnt[4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \MCLK_Cnt[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \MCLK_Cnt[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \MCLK_Cnt[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \MCLK_Cnt[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \MCLK_Cnt[9]_i_1\ : label is "soft_lutpair32";
  attribute OPT_MODIFIED of \MCLK_Cnt_reg[12]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \MCLK_Cnt_reg[16]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \MCLK_Cnt_reg[20]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \MCLK_Cnt_reg[24]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \MCLK_Cnt_reg[28]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \MCLK_Cnt_reg[31]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \MCLK_Cnt_reg[4]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \MCLK_Cnt_reg[8]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \ReadCounter_reg[0]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \ReadCounter_reg[12]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \ReadCounter_reg[16]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \ReadCounter_reg[20]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \ReadCounter_reg[24]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \ReadCounter_reg[28]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \ReadCounter_reg[4]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \ReadCounter_reg[8]_i_1\ : label is "SWEEP ";
begin
  ARESETN <= \^aresetn\;
  AudioClock_reg_0 <= \^audioclock_reg_0\;
  TREADY <= \^tready\;
Active_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Locked,
      I1 => Resetn_IBUF,
      O => \^aresetn\
    );
AudioClock_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Locked,
      I1 => Resetn_IBUF,
      I2 => \MCLK_Cnt[31]_i_3_n_0\,
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
\AudioData[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(0),
      I1 => \FIFO_1_reg[2]\(0),
      I2 => \FIFO_1_reg[1]\(0),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(0),
      O => \AudioData[0]_i_1_n_0\
    );
\AudioData[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(10),
      I1 => \FIFO_1_reg[2]\(10),
      I2 => \FIFO_1_reg[1]\(10),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(10),
      O => \AudioData[10]_i_1_n_0\
    );
\AudioData[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(11),
      I1 => \FIFO_1_reg[2]\(11),
      I2 => \FIFO_1_reg[1]\(11),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(11),
      O => \AudioData[11]_i_1_n_0\
    );
\AudioData[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(12),
      I1 => \FIFO_1_reg[2]\(12),
      I2 => \FIFO_1_reg[1]\(12),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(12),
      O => \AudioData[12]_i_1_n_0\
    );
\AudioData[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(13),
      I1 => \FIFO_1_reg[2]\(13),
      I2 => \FIFO_1_reg[1]\(13),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(13),
      O => \AudioData[13]_i_1_n_0\
    );
\AudioData[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(14),
      I1 => \FIFO_1_reg[2]\(14),
      I2 => \FIFO_1_reg[1]\(14),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(14),
      O => \AudioData[14]_i_1_n_0\
    );
\AudioData[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(15),
      I1 => \FIFO_1_reg[2]\(15),
      I2 => \FIFO_1_reg[1]\(15),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(15),
      O => \AudioData[15]_i_1_n_0\
    );
\AudioData[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(1),
      I1 => \FIFO_1_reg[2]\(1),
      I2 => \FIFO_1_reg[1]\(1),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(1),
      O => \AudioData[1]_i_1_n_0\
    );
\AudioData[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(2),
      I1 => \FIFO_1_reg[2]\(2),
      I2 => \FIFO_1_reg[1]\(2),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(2),
      O => \AudioData[2]_i_1_n_0\
    );
\AudioData[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => I2SState(0),
      I1 => I2SState(1),
      I2 => I2SState(2),
      O => \AudioData[31]_i_1_n_0\
    );
\AudioData[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => I2SState(2),
      I1 => I2SState(1),
      I2 => I2SState(0),
      O => \AudioData[31]_i_2_n_0\
    );
\AudioData[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(3),
      I1 => \FIFO_1_reg[2]\(3),
      I2 => \FIFO_1_reg[1]\(3),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(3),
      O => \AudioData[3]_i_1_n_0\
    );
\AudioData[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(4),
      I1 => \FIFO_1_reg[2]\(4),
      I2 => \FIFO_1_reg[1]\(4),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(4),
      O => \AudioData[4]_i_1_n_0\
    );
\AudioData[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(5),
      I1 => \FIFO_1_reg[2]\(5),
      I2 => \FIFO_1_reg[1]\(5),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(5),
      O => \AudioData[5]_i_1_n_0\
    );
\AudioData[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(6),
      I1 => \FIFO_1_reg[2]\(6),
      I2 => \FIFO_1_reg[1]\(6),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(6),
      O => \AudioData[6]_i_1_n_0\
    );
\AudioData[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(7),
      I1 => \FIFO_1_reg[2]\(7),
      I2 => \FIFO_1_reg[1]\(7),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(7),
      O => \AudioData[7]_i_1_n_0\
    );
\AudioData[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(8),
      I1 => \FIFO_1_reg[2]\(8),
      I2 => \FIFO_1_reg[1]\(8),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(8),
      O => \AudioData[8]_i_1_n_0\
    );
\AudioData[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \FIFO_1_reg[3]\(9),
      I1 => \FIFO_1_reg[2]\(9),
      I2 => \FIFO_1_reg[1]\(9),
      I3 => ReadCounter_reg(0),
      I4 => ReadCounter_reg(1),
      I5 => \FIFO_1_reg[0]\(9),
      O => \AudioData[9]_i_1_n_0\
    );
\AudioData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[0]_i_1_n_0\,
      Q => Data(0),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[10]_i_1_n_0\,
      Q => Data(10),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[11]_i_1_n_0\,
      Q => Data(11),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[12]_i_1_n_0\,
      Q => Data(12),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[13]_i_1_n_0\,
      Q => Data(13),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[14]_i_1_n_0\,
      Q => Data(14),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[15]_i_1_n_0\,
      Q => Data(15),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[1]_i_1_n_0\,
      Q => Data(1),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[2]_i_1_n_0\,
      Q => Data(2),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[3]_i_1_n_0\,
      Q => Data(3),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[4]_i_1_n_0\,
      Q => Data(4),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[5]_i_1_n_0\,
      Q => Data(5),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[6]_i_1_n_0\,
      Q => Data(6),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[7]_i_1_n_0\,
      Q => Data(7),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[8]_i_1_n_0\,
      Q => Data(8),
      R => \AudioData[31]_i_1_n_0\
    );
\AudioData_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \AudioData[31]_i_2_n_0\,
      D => \AudioData[9]_i_1_n_0\,
      Q => Data(9),
      R => \AudioData[31]_i_1_n_0\
    );
\BytesInFIFO_0[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[0]\,
      O => \BytesInFIFO_0[0]_i_1_n_0\
    );
\BytesInFIFO_0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0023"
    )
        port map (
      I0 => FIFO_1_Full_reg_n_0,
      I1 => FIFOState(0),
      I2 => FIFOState(2),
      I3 => FIFOState(1),
      O => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11510051"
    )
        port map (
      I0 => FIFOState(0),
      I1 => FIFOState(1),
      I2 => \FIFO_0_Full1_carry__2_n_0\,
      I3 => FIFOState(2),
      I4 => FIFO_1_Full_reg_n_0,
      O => \BytesInFIFO_0[31]_i_2_n_0\
    );
\BytesInFIFO_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => \BytesInFIFO_0[0]_i_1_n_0\,
      Q => \BytesInFIFO_0_reg_n_0_[0]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(10),
      Q => \BytesInFIFO_0_reg_n_0_[10]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(11),
      Q => \BytesInFIFO_0_reg_n_0_[11]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(12),
      Q => \BytesInFIFO_0_reg_n_0_[12]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BytesInFIFO_0_reg[8]_i_1_n_0\,
      CO(3) => \BytesInFIFO_0_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BytesInFIFO_0_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(12 downto 9),
      S(3) => \BytesInFIFO_0_reg_n_0_[12]\,
      S(2) => \BytesInFIFO_0_reg_n_0_[11]\,
      S(1) => \BytesInFIFO_0_reg_n_0_[10]\,
      S(0) => \BytesInFIFO_0_reg_n_0_[9]\
    );
\BytesInFIFO_0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(13),
      Q => \BytesInFIFO_0_reg_n_0_[13]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(14),
      Q => \BytesInFIFO_0_reg_n_0_[14]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(15),
      Q => \BytesInFIFO_0_reg_n_0_[15]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(16),
      Q => \BytesInFIFO_0_reg_n_0_[16]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BytesInFIFO_0_reg[12]_i_1_n_0\,
      CO(3) => \BytesInFIFO_0_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BytesInFIFO_0_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(16 downto 13),
      S(3) => \BytesInFIFO_0_reg_n_0_[16]\,
      S(2) => \BytesInFIFO_0_reg_n_0_[15]\,
      S(1) => \BytesInFIFO_0_reg_n_0_[14]\,
      S(0) => \BytesInFIFO_0_reg_n_0_[13]\
    );
\BytesInFIFO_0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(17),
      Q => \BytesInFIFO_0_reg_n_0_[17]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(18),
      Q => \BytesInFIFO_0_reg_n_0_[18]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(19),
      Q => \BytesInFIFO_0_reg_n_0_[19]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(1),
      Q => \BytesInFIFO_0_reg_n_0_[1]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(20),
      Q => \BytesInFIFO_0_reg_n_0_[20]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BytesInFIFO_0_reg[16]_i_1_n_0\,
      CO(3) => \BytesInFIFO_0_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BytesInFIFO_0_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(20 downto 17),
      S(3) => \BytesInFIFO_0_reg_n_0_[20]\,
      S(2) => \BytesInFIFO_0_reg_n_0_[19]\,
      S(1) => \BytesInFIFO_0_reg_n_0_[18]\,
      S(0) => \BytesInFIFO_0_reg_n_0_[17]\
    );
\BytesInFIFO_0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(21),
      Q => \BytesInFIFO_0_reg_n_0_[21]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(22),
      Q => \BytesInFIFO_0_reg_n_0_[22]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(23),
      Q => \BytesInFIFO_0_reg_n_0_[23]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(24),
      Q => \BytesInFIFO_0_reg_n_0_[24]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BytesInFIFO_0_reg[20]_i_1_n_0\,
      CO(3) => \BytesInFIFO_0_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BytesInFIFO_0_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(24 downto 21),
      S(3) => \BytesInFIFO_0_reg_n_0_[24]\,
      S(2) => \BytesInFIFO_0_reg_n_0_[23]\,
      S(1) => \BytesInFIFO_0_reg_n_0_[22]\,
      S(0) => \BytesInFIFO_0_reg_n_0_[21]\
    );
\BytesInFIFO_0_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(25),
      Q => \BytesInFIFO_0_reg_n_0_[25]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(26),
      Q => \BytesInFIFO_0_reg_n_0_[26]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(27),
      Q => \BytesInFIFO_0_reg_n_0_[27]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(28),
      Q => \BytesInFIFO_0_reg_n_0_[28]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BytesInFIFO_0_reg[24]_i_1_n_0\,
      CO(3) => \BytesInFIFO_0_reg[28]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BytesInFIFO_0_reg[28]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(28 downto 25),
      S(3) => \BytesInFIFO_0_reg_n_0_[28]\,
      S(2) => \BytesInFIFO_0_reg_n_0_[27]\,
      S(1) => \BytesInFIFO_0_reg_n_0_[26]\,
      S(0) => \BytesInFIFO_0_reg_n_0_[25]\
    );
\BytesInFIFO_0_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(29),
      Q => \BytesInFIFO_0_reg_n_0_[29]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(2),
      Q => \BytesInFIFO_0_reg_n_0_[2]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(30),
      Q => \BytesInFIFO_0_reg_n_0_[30]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(31),
      Q => \BytesInFIFO_0_reg_n_0_[31]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \BytesInFIFO_0_reg[28]_i_1_n_0\,
      CO(3 downto 0) => \NLW_BytesInFIFO_0_reg[31]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_BytesInFIFO_0_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => in11(31 downto 29),
      S(3) => '0',
      S(2) => \BytesInFIFO_0_reg_n_0_[31]\,
      S(1) => \BytesInFIFO_0_reg_n_0_[30]\,
      S(0) => \BytesInFIFO_0_reg_n_0_[29]\
    );
\BytesInFIFO_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(3),
      Q => \BytesInFIFO_0_reg_n_0_[3]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(4),
      Q => \BytesInFIFO_0_reg_n_0_[4]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \BytesInFIFO_0_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BytesInFIFO_0_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \BytesInFIFO_0_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(4 downto 1),
      S(3) => \BytesInFIFO_0_reg_n_0_[4]\,
      S(2) => \BytesInFIFO_0_reg_n_0_[3]\,
      S(1) => \BytesInFIFO_0_reg_n_0_[2]\,
      S(0) => \BytesInFIFO_0_reg_n_0_[1]\
    );
\BytesInFIFO_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(5),
      Q => \BytesInFIFO_0_reg_n_0_[5]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(6),
      Q => \BytesInFIFO_0_reg_n_0_[6]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(7),
      Q => \BytesInFIFO_0_reg_n_0_[7]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(8),
      Q => \BytesInFIFO_0_reg_n_0_[8]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_0_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BytesInFIFO_0_reg[4]_i_1_n_0\,
      CO(3) => \BytesInFIFO_0_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_BytesInFIFO_0_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(8 downto 5),
      S(3) => \BytesInFIFO_0_reg_n_0_[8]\,
      S(2) => \BytesInFIFO_0_reg_n_0_[7]\,
      S(1) => \BytesInFIFO_0_reg_n_0_[6]\,
      S(0) => \BytesInFIFO_0_reg_n_0_[5]\
    );
\BytesInFIFO_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_0[31]_i_2_n_0\,
      D => in11(9),
      Q => \BytesInFIFO_0_reg_n_0_[9]\,
      R => \BytesInFIFO_0[31]_i_1_n_0\
    );
\BytesInFIFO_1[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \BytesInFIFO_1[31]_i_2_n_0\,
      I1 => I2SState(2),
      I2 => I2SState(0),
      O => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => I2SState(0),
      I1 => FIFO_0_Full_reg_n_0,
      I2 => I2SState(2),
      I3 => I2SState(1),
      O => \BytesInFIFO_1[31]_i_2_n_0\
    );
\BytesInFIFO_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[0]\,
      Q => \BytesInFIFO_1_reg_n_0_[0]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[10]\,
      Q => \BytesInFIFO_1_reg_n_0_[10]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[11]\,
      Q => \BytesInFIFO_1_reg_n_0_[11]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[12]\,
      Q => \BytesInFIFO_1_reg_n_0_[12]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[13]\,
      Q => \BytesInFIFO_1_reg_n_0_[13]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[14]\,
      Q => \BytesInFIFO_1_reg_n_0_[14]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[15]\,
      Q => \BytesInFIFO_1_reg_n_0_[15]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[16]\,
      Q => \BytesInFIFO_1_reg_n_0_[16]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[17]\,
      Q => \BytesInFIFO_1_reg_n_0_[17]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[18]\,
      Q => \BytesInFIFO_1_reg_n_0_[18]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[19]\,
      Q => \BytesInFIFO_1_reg_n_0_[19]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[1]\,
      Q => \BytesInFIFO_1_reg_n_0_[1]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[20]\,
      Q => \BytesInFIFO_1_reg_n_0_[20]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[21]\,
      Q => \BytesInFIFO_1_reg_n_0_[21]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[22]\,
      Q => \BytesInFIFO_1_reg_n_0_[22]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[23]\,
      Q => \BytesInFIFO_1_reg_n_0_[23]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[24]\,
      Q => \BytesInFIFO_1_reg_n_0_[24]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[25]\,
      Q => \BytesInFIFO_1_reg_n_0_[25]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[26]\,
      Q => \BytesInFIFO_1_reg_n_0_[26]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[27]\,
      Q => \BytesInFIFO_1_reg_n_0_[27]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[28]\,
      Q => \BytesInFIFO_1_reg_n_0_[28]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[29]\,
      Q => \BytesInFIFO_1_reg_n_0_[29]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[2]\,
      Q => \BytesInFIFO_1_reg_n_0_[2]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[30]\,
      Q => \BytesInFIFO_1_reg_n_0_[30]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[31]\,
      Q => \BytesInFIFO_1_reg_n_0_[31]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[3]\,
      Q => \BytesInFIFO_1_reg_n_0_[3]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[4]\,
      Q => \BytesInFIFO_1_reg_n_0_[4]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[5]\,
      Q => \BytesInFIFO_1_reg_n_0_[5]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[6]\,
      Q => \BytesInFIFO_1_reg_n_0_[6]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[7]\,
      Q => \BytesInFIFO_1_reg_n_0_[7]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[8]\,
      Q => \BytesInFIFO_1_reg_n_0_[8]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\BytesInFIFO_1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \BytesInFIFO_0_reg_n_0_[9]\,
      Q => \BytesInFIFO_1_reg_n_0_[9]\,
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_0[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005557"
    )
        port map (
      I0 => FIFOState(1),
      I1 => \BytesInFIFO_0_reg_n_0_[1]\,
      I2 => \BytesInFIFO_0_reg_n_0_[0]\,
      I3 => \FIFO_0[3][31]_i_3_n_0\,
      I4 => FIFOState(2),
      I5 => FIFOState(0),
      O => \FIFO_0[0][31]_i_1_n_0\
    );
\FIFO_0[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010011111111"
    )
        port map (
      I0 => FIFOState(2),
      I1 => FIFOState(0),
      I2 => \FIFO_0[3][31]_i_3_n_0\,
      I3 => \BytesInFIFO_0_reg_n_0_[0]\,
      I4 => \BytesInFIFO_0_reg_n_0_[1]\,
      I5 => FIFOState(1),
      O => \FIFO_0[1]_3\
    );
\FIFO_0[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010011111111"
    )
        port map (
      I0 => FIFOState(2),
      I1 => FIFOState(0),
      I2 => \FIFO_0[3][31]_i_3_n_0\,
      I3 => \BytesInFIFO_0_reg_n_0_[1]\,
      I4 => \BytesInFIFO_0_reg_n_0_[0]\,
      I5 => FIFOState(1),
      O => \FIFO_0[2]_2\
    );
\FIFO_0[3][31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => FIFOState(0),
      I1 => FIFOState(2),
      I2 => FIFOState(1),
      O => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0[3][31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[5]\,
      I1 => \BytesInFIFO_0_reg_n_0_[4]\,
      I2 => \BytesInFIFO_0_reg_n_0_[13]\,
      I3 => \BytesInFIFO_0_reg_n_0_[12]\,
      O => \FIFO_0[3][31]_i_10_n_0\
    );
\FIFO_0[3][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100011111111"
    )
        port map (
      I0 => FIFOState(2),
      I1 => FIFOState(0),
      I2 => \BytesInFIFO_0_reg_n_0_[1]\,
      I3 => \BytesInFIFO_0_reg_n_0_[0]\,
      I4 => \FIFO_0[3][31]_i_3_n_0\,
      I5 => FIFOState(1),
      O => \FIFO_0[3]_1\
    );
\FIFO_0[3][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FIFO_0[3][31]_i_4_n_0\,
      I1 => \FIFO_0[3][31]_i_5_n_0\,
      I2 => \FIFO_0[3][31]_i_6_n_0\,
      I3 => \BytesInFIFO_0_reg_n_0_[14]\,
      I4 => \BytesInFIFO_0_reg_n_0_[15]\,
      I5 => \FIFO_0[3][31]_i_7_n_0\,
      O => \FIFO_0[3][31]_i_3_n_0\
    );
\FIFO_0[3][31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FIFO_0[3][31]_i_8_n_0\,
      I1 => \FIFO_0[3][31]_i_9_n_0\,
      I2 => \BytesInFIFO_0_reg_n_0_[29]\,
      I3 => \BytesInFIFO_0_reg_n_0_[28]\,
      I4 => \BytesInFIFO_0_reg_n_0_[27]\,
      I5 => \BytesInFIFO_0_reg_n_0_[26]\,
      O => \FIFO_0[3][31]_i_4_n_0\
    );
\FIFO_0[3][31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[24]\,
      I1 => \BytesInFIFO_0_reg_n_0_[25]\,
      I2 => \BytesInFIFO_0_reg_n_0_[10]\,
      I3 => \BytesInFIFO_0_reg_n_0_[11]\,
      I4 => \FIFO_0[3][31]_i_10_n_0\,
      O => \FIFO_0[3][31]_i_5_n_0\
    );
\FIFO_0[3][31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[20]\,
      I1 => \BytesInFIFO_0_reg_n_0_[21]\,
      O => \FIFO_0[3][31]_i_6_n_0\
    );
\FIFO_0[3][31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[3]\,
      I1 => \BytesInFIFO_0_reg_n_0_[2]\,
      I2 => \BytesInFIFO_0_reg_n_0_[31]\,
      I3 => \BytesInFIFO_0_reg_n_0_[30]\,
      O => \FIFO_0[3][31]_i_7_n_0\
    );
\FIFO_0[3][31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[23]\,
      I1 => \BytesInFIFO_0_reg_n_0_[22]\,
      I2 => \BytesInFIFO_0_reg_n_0_[16]\,
      I3 => \BytesInFIFO_0_reg_n_0_[17]\,
      I4 => \BytesInFIFO_0_reg_n_0_[18]\,
      I5 => \BytesInFIFO_0_reg_n_0_[19]\,
      O => \FIFO_0[3][31]_i_8_n_0\
    );
\FIFO_0[3][31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[7]\,
      I1 => \BytesInFIFO_0_reg_n_0_[6]\,
      I2 => \BytesInFIFO_0_reg_n_0_[9]\,
      I3 => \BytesInFIFO_0_reg_n_0_[8]\,
      O => \FIFO_0[3][31]_i_9_n_0\
    );
FIFO_0_Full1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => FIFO_0_Full1_carry_n_0,
      CO(2 downto 0) => NLW_FIFO_0_Full1_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => FIFO_0_Full1_carry_i_1_n_0,
      O(3 downto 0) => NLW_FIFO_0_Full1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => FIFO_0_Full1_carry_i_2_n_0,
      S(2) => FIFO_0_Full1_carry_i_3_n_0,
      S(1) => FIFO_0_Full1_carry_i_4_n_0,
      S(0) => FIFO_0_Full1_carry_i_5_n_0
    );
\FIFO_0_Full1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => FIFO_0_Full1_carry_n_0,
      CO(3) => \FIFO_0_Full1_carry__0_n_0\,
      CO(2 downto 0) => \NLW_FIFO_0_Full1_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FIFO_0_Full1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \FIFO_0_Full1_carry__0_i_1_n_0\,
      S(2) => \FIFO_0_Full1_carry__0_i_2_n_0\,
      S(1) => \FIFO_0_Full1_carry__0_i_3_n_0\,
      S(0) => \FIFO_0_Full1_carry__0_i_4_n_0\
    );
\FIFO_0_Full1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[14]\,
      I1 => \BytesInFIFO_0_reg_n_0_[15]\,
      O => \FIFO_0_Full1_carry__0_i_1_n_0\
    );
\FIFO_0_Full1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[13]\,
      I1 => \BytesInFIFO_0_reg_n_0_[12]\,
      O => \FIFO_0_Full1_carry__0_i_2_n_0\
    );
\FIFO_0_Full1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[11]\,
      I1 => \BytesInFIFO_0_reg_n_0_[10]\,
      O => \FIFO_0_Full1_carry__0_i_3_n_0\
    );
\FIFO_0_Full1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[9]\,
      I1 => \BytesInFIFO_0_reg_n_0_[8]\,
      O => \FIFO_0_Full1_carry__0_i_4_n_0\
    );
\FIFO_0_Full1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \FIFO_0_Full1_carry__0_n_0\,
      CO(3) => \FIFO_0_Full1_carry__1_n_0\,
      CO(2 downto 0) => \NLW_FIFO_0_Full1_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FIFO_0_Full1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \FIFO_0_Full1_carry__1_i_1_n_0\,
      S(2) => \FIFO_0_Full1_carry__1_i_2_n_0\,
      S(1) => \FIFO_0_Full1_carry__1_i_3_n_0\,
      S(0) => \FIFO_0_Full1_carry__1_i_4_n_0\
    );
\FIFO_0_Full1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[23]\,
      I1 => \BytesInFIFO_0_reg_n_0_[22]\,
      O => \FIFO_0_Full1_carry__1_i_1_n_0\
    );
\FIFO_0_Full1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[21]\,
      I1 => \BytesInFIFO_0_reg_n_0_[20]\,
      O => \FIFO_0_Full1_carry__1_i_2_n_0\
    );
\FIFO_0_Full1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[19]\,
      I1 => \BytesInFIFO_0_reg_n_0_[18]\,
      O => \FIFO_0_Full1_carry__1_i_3_n_0\
    );
\FIFO_0_Full1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[17]\,
      I1 => \BytesInFIFO_0_reg_n_0_[16]\,
      O => \FIFO_0_Full1_carry__1_i_4_n_0\
    );
\FIFO_0_Full1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \FIFO_0_Full1_carry__1_n_0\,
      CO(3) => \FIFO_0_Full1_carry__2_n_0\,
      CO(2 downto 0) => \NLW_FIFO_0_Full1_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \BytesInFIFO_0_reg_n_0_[31]\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_FIFO_0_Full1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \FIFO_0_Full1_carry__2_i_1_n_0\,
      S(2) => \FIFO_0_Full1_carry__2_i_2_n_0\,
      S(1) => \FIFO_0_Full1_carry__2_i_3_n_0\,
      S(0) => \FIFO_0_Full1_carry__2_i_4_n_0\
    );
\FIFO_0_Full1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[31]\,
      I1 => \BytesInFIFO_0_reg_n_0_[30]\,
      O => \FIFO_0_Full1_carry__2_i_1_n_0\
    );
\FIFO_0_Full1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[29]\,
      I1 => \BytesInFIFO_0_reg_n_0_[28]\,
      O => \FIFO_0_Full1_carry__2_i_2_n_0\
    );
\FIFO_0_Full1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[27]\,
      I1 => \BytesInFIFO_0_reg_n_0_[26]\,
      O => \FIFO_0_Full1_carry__2_i_3_n_0\
    );
\FIFO_0_Full1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[25]\,
      I1 => \BytesInFIFO_0_reg_n_0_[24]\,
      O => \FIFO_0_Full1_carry__2_i_4_n_0\
    );
FIFO_0_Full1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[1]\,
      I1 => \BytesInFIFO_0_reg_n_0_[0]\,
      O => FIFO_0_Full1_carry_i_1_n_0
    );
FIFO_0_Full1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[7]\,
      I1 => \BytesInFIFO_0_reg_n_0_[6]\,
      O => FIFO_0_Full1_carry_i_2_n_0
    );
FIFO_0_Full1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[5]\,
      I1 => \BytesInFIFO_0_reg_n_0_[4]\,
      O => FIFO_0_Full1_carry_i_3_n_0
    );
FIFO_0_Full1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[3]\,
      I1 => \BytesInFIFO_0_reg_n_0_[2]\,
      O => FIFO_0_Full1_carry_i_4_n_0
    );
FIFO_0_Full1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \BytesInFIFO_0_reg_n_0_[0]\,
      I1 => \BytesInFIFO_0_reg_n_0_[1]\,
      O => FIFO_0_Full1_carry_i_5_n_0
    );
FIFO_0_Full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAA0002"
    )
        port map (
      I0 => FIFOState(1),
      I1 => \FIFO_0_Full1_carry__2_n_0\,
      I2 => FIFOState(0),
      I3 => FIFOState(2),
      I4 => FIFO_0_Full_reg_n_0,
      O => FIFO_0_Full_i_1_n_0
    );
FIFO_0_Full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => FIFO_0_Full_i_1_n_0,
      Q => FIFO_0_Full_reg_n_0,
      R => '0'
    );
\FIFO_0_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(0),
      Q => \FIFO_0_reg[0]\(0),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(10),
      Q => \FIFO_0_reg[0]\(10),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(11),
      Q => \FIFO_0_reg[0]\(11),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(12),
      Q => \FIFO_0_reg[0]\(12),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(13),
      Q => \FIFO_0_reg[0]\(13),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(14),
      Q => \FIFO_0_reg[0]\(14),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(15),
      Q => \FIFO_0_reg[0]\(15),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(1),
      Q => \FIFO_0_reg[0]\(1),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(2),
      Q => \FIFO_0_reg[0]\(2),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(3),
      Q => \FIFO_0_reg[0]\(3),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(4),
      Q => \FIFO_0_reg[0]\(4),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(5),
      Q => \FIFO_0_reg[0]\(5),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(6),
      Q => \FIFO_0_reg[0]\(6),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(7),
      Q => \FIFO_0_reg[0]\(7),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(8),
      Q => \FIFO_0_reg[0]\(8),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[0][31]_i_1_n_0\,
      D => TDATA(9),
      Q => \FIFO_0_reg[0]\(9),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(0),
      Q => \FIFO_0_reg[1]\(0),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(10),
      Q => \FIFO_0_reg[1]\(10),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(11),
      Q => \FIFO_0_reg[1]\(11),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(12),
      Q => \FIFO_0_reg[1]\(12),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(13),
      Q => \FIFO_0_reg[1]\(13),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(14),
      Q => \FIFO_0_reg[1]\(14),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(15),
      Q => \FIFO_0_reg[1]\(15),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(1),
      Q => \FIFO_0_reg[1]\(1),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(2),
      Q => \FIFO_0_reg[1]\(2),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(3),
      Q => \FIFO_0_reg[1]\(3),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(4),
      Q => \FIFO_0_reg[1]\(4),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(5),
      Q => \FIFO_0_reg[1]\(5),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(6),
      Q => \FIFO_0_reg[1]\(6),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(7),
      Q => \FIFO_0_reg[1]\(7),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(8),
      Q => \FIFO_0_reg[1]\(8),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[1]_3\,
      D => TDATA(9),
      Q => \FIFO_0_reg[1]\(9),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(0),
      Q => \FIFO_0_reg[2]\(0),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(10),
      Q => \FIFO_0_reg[2]\(10),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(11),
      Q => \FIFO_0_reg[2]\(11),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(12),
      Q => \FIFO_0_reg[2]\(12),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(13),
      Q => \FIFO_0_reg[2]\(13),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(14),
      Q => \FIFO_0_reg[2]\(14),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(15),
      Q => \FIFO_0_reg[2]\(15),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(1),
      Q => \FIFO_0_reg[2]\(1),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(2),
      Q => \FIFO_0_reg[2]\(2),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(3),
      Q => \FIFO_0_reg[2]\(3),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(4),
      Q => \FIFO_0_reg[2]\(4),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(5),
      Q => \FIFO_0_reg[2]\(5),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(6),
      Q => \FIFO_0_reg[2]\(6),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(7),
      Q => \FIFO_0_reg[2]\(7),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(8),
      Q => \FIFO_0_reg[2]\(8),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[2]_2\,
      D => TDATA(9),
      Q => \FIFO_0_reg[2]\(9),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(0),
      Q => \FIFO_0_reg[3]\(0),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(10),
      Q => \FIFO_0_reg[3]\(10),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(11),
      Q => \FIFO_0_reg[3]\(11),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(12),
      Q => \FIFO_0_reg[3]\(12),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(13),
      Q => \FIFO_0_reg[3]\(13),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(14),
      Q => \FIFO_0_reg[3]\(14),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(15),
      Q => \FIFO_0_reg[3]\(15),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(1),
      Q => \FIFO_0_reg[3]\(1),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(2),
      Q => \FIFO_0_reg[3]\(2),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(3),
      Q => \FIFO_0_reg[3]\(3),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(4),
      Q => \FIFO_0_reg[3]\(4),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(5),
      Q => \FIFO_0_reg[3]\(5),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(6),
      Q => \FIFO_0_reg[3]\(6),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(7),
      Q => \FIFO_0_reg[3]\(7),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(8),
      Q => \FIFO_0_reg[3]\(8),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
\FIFO_0_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \FIFO_0[3]_1\,
      D => TDATA(9),
      Q => \FIFO_0_reg[3]\(9),
      R => \FIFO_0[3][31]_i_1_n_0\
    );
FIFO_1_Full1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => FIFO_1_Full1_carry_n_0,
      CO(2 downto 0) => NLW_FIFO_1_Full1_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3) => FIFO_1_Full1_carry_i_1_n_0,
      DI(2) => FIFO_1_Full1_carry_i_2_n_0,
      DI(1) => FIFO_1_Full1_carry_i_3_n_0,
      DI(0) => FIFO_1_Full1_carry_i_4_n_0,
      O(3 downto 0) => NLW_FIFO_1_Full1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => FIFO_1_Full1_carry_i_5_n_0,
      S(2) => FIFO_1_Full1_carry_i_6_n_0,
      S(1) => FIFO_1_Full1_carry_i_7_n_0,
      S(0) => FIFO_1_Full1_carry_i_8_n_0
    );
\FIFO_1_Full1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => FIFO_1_Full1_carry_n_0,
      CO(3) => \FIFO_1_Full1_carry__0_n_0\,
      CO(2 downto 0) => \NLW_FIFO_1_Full1_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \FIFO_1_Full1_carry__0_i_1_n_0\,
      DI(2) => \FIFO_1_Full1_carry__0_i_2_n_0\,
      DI(1) => \FIFO_1_Full1_carry__0_i_3_n_0\,
      DI(0) => \FIFO_1_Full1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_FIFO_1_Full1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \FIFO_1_Full1_carry__0_i_5_n_0\,
      S(2) => \FIFO_1_Full1_carry__0_i_6_n_0\,
      S(1) => \FIFO_1_Full1_carry__0_i_7_n_0\,
      S(0) => \FIFO_1_Full1_carry__0_i_8_n_0\
    );
\FIFO_1_Full1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(15),
      I1 => \BytesInFIFO_1_reg_n_0_[15]\,
      I2 => \BytesInFIFO_1_reg_n_0_[14]\,
      I3 => ReadCounter_reg(14),
      O => \FIFO_1_Full1_carry__0_i_1_n_0\
    );
\FIFO_1_Full1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(13),
      I1 => \BytesInFIFO_1_reg_n_0_[13]\,
      I2 => \BytesInFIFO_1_reg_n_0_[12]\,
      I3 => ReadCounter_reg(12),
      O => \FIFO_1_Full1_carry__0_i_2_n_0\
    );
\FIFO_1_Full1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(11),
      I1 => \BytesInFIFO_1_reg_n_0_[11]\,
      I2 => \BytesInFIFO_1_reg_n_0_[10]\,
      I3 => ReadCounter_reg(10),
      O => \FIFO_1_Full1_carry__0_i_3_n_0\
    );
\FIFO_1_Full1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(9),
      I1 => \BytesInFIFO_1_reg_n_0_[9]\,
      I2 => \BytesInFIFO_1_reg_n_0_[8]\,
      I3 => ReadCounter_reg(8),
      O => \FIFO_1_Full1_carry__0_i_4_n_0\
    );
\FIFO_1_Full1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[15]\,
      I1 => ReadCounter_reg(15),
      I2 => \BytesInFIFO_1_reg_n_0_[14]\,
      I3 => ReadCounter_reg(14),
      O => \FIFO_1_Full1_carry__0_i_5_n_0\
    );
\FIFO_1_Full1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[13]\,
      I1 => ReadCounter_reg(13),
      I2 => \BytesInFIFO_1_reg_n_0_[12]\,
      I3 => ReadCounter_reg(12),
      O => \FIFO_1_Full1_carry__0_i_6_n_0\
    );
\FIFO_1_Full1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[11]\,
      I1 => ReadCounter_reg(11),
      I2 => \BytesInFIFO_1_reg_n_0_[10]\,
      I3 => ReadCounter_reg(10),
      O => \FIFO_1_Full1_carry__0_i_7_n_0\
    );
\FIFO_1_Full1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[9]\,
      I1 => ReadCounter_reg(9),
      I2 => \BytesInFIFO_1_reg_n_0_[8]\,
      I3 => ReadCounter_reg(8),
      O => \FIFO_1_Full1_carry__0_i_8_n_0\
    );
\FIFO_1_Full1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \FIFO_1_Full1_carry__0_n_0\,
      CO(3) => \FIFO_1_Full1_carry__1_n_0\,
      CO(2 downto 0) => \NLW_FIFO_1_Full1_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \FIFO_1_Full1_carry__1_i_1_n_0\,
      DI(2) => \FIFO_1_Full1_carry__1_i_2_n_0\,
      DI(1) => \FIFO_1_Full1_carry__1_i_3_n_0\,
      DI(0) => \FIFO_1_Full1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_FIFO_1_Full1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \FIFO_1_Full1_carry__1_i_5_n_0\,
      S(2) => \FIFO_1_Full1_carry__1_i_6_n_0\,
      S(1) => \FIFO_1_Full1_carry__1_i_7_n_0\,
      S(0) => \FIFO_1_Full1_carry__1_i_8_n_0\
    );
\FIFO_1_Full1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(23),
      I1 => \BytesInFIFO_1_reg_n_0_[23]\,
      I2 => \BytesInFIFO_1_reg_n_0_[22]\,
      I3 => ReadCounter_reg(22),
      O => \FIFO_1_Full1_carry__1_i_1_n_0\
    );
\FIFO_1_Full1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(21),
      I1 => \BytesInFIFO_1_reg_n_0_[21]\,
      I2 => \BytesInFIFO_1_reg_n_0_[20]\,
      I3 => ReadCounter_reg(20),
      O => \FIFO_1_Full1_carry__1_i_2_n_0\
    );
\FIFO_1_Full1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(19),
      I1 => \BytesInFIFO_1_reg_n_0_[19]\,
      I2 => \BytesInFIFO_1_reg_n_0_[18]\,
      I3 => ReadCounter_reg(18),
      O => \FIFO_1_Full1_carry__1_i_3_n_0\
    );
\FIFO_1_Full1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(17),
      I1 => \BytesInFIFO_1_reg_n_0_[17]\,
      I2 => \BytesInFIFO_1_reg_n_0_[16]\,
      I3 => ReadCounter_reg(16),
      O => \FIFO_1_Full1_carry__1_i_4_n_0\
    );
\FIFO_1_Full1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[23]\,
      I1 => ReadCounter_reg(23),
      I2 => \BytesInFIFO_1_reg_n_0_[22]\,
      I3 => ReadCounter_reg(22),
      O => \FIFO_1_Full1_carry__1_i_5_n_0\
    );
\FIFO_1_Full1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[21]\,
      I1 => ReadCounter_reg(21),
      I2 => \BytesInFIFO_1_reg_n_0_[20]\,
      I3 => ReadCounter_reg(20),
      O => \FIFO_1_Full1_carry__1_i_6_n_0\
    );
\FIFO_1_Full1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[19]\,
      I1 => ReadCounter_reg(19),
      I2 => \BytesInFIFO_1_reg_n_0_[18]\,
      I3 => ReadCounter_reg(18),
      O => \FIFO_1_Full1_carry__1_i_7_n_0\
    );
\FIFO_1_Full1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[17]\,
      I1 => ReadCounter_reg(17),
      I2 => \BytesInFIFO_1_reg_n_0_[16]\,
      I3 => ReadCounter_reg(16),
      O => \FIFO_1_Full1_carry__1_i_8_n_0\
    );
\FIFO_1_Full1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \FIFO_1_Full1_carry__1_n_0\,
      CO(3) => p_0_in,
      CO(2 downto 0) => \NLW_FIFO_1_Full1_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \FIFO_1_Full1_carry__2_i_1_n_0\,
      DI(2) => \FIFO_1_Full1_carry__2_i_2_n_0\,
      DI(1) => \FIFO_1_Full1_carry__2_i_3_n_0\,
      DI(0) => \FIFO_1_Full1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_FIFO_1_Full1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \FIFO_1_Full1_carry__2_i_5_n_0\,
      S(2) => \FIFO_1_Full1_carry__2_i_6_n_0\,
      S(1) => \FIFO_1_Full1_carry__2_i_7_n_0\,
      S(0) => \FIFO_1_Full1_carry__2_i_8_n_0\
    );
\FIFO_1_Full1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[31]\,
      I1 => ReadCounter_reg(31),
      I2 => \BytesInFIFO_1_reg_n_0_[30]\,
      I3 => ReadCounter_reg(30),
      O => \FIFO_1_Full1_carry__2_i_1_n_0\
    );
\FIFO_1_Full1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(29),
      I1 => \BytesInFIFO_1_reg_n_0_[29]\,
      I2 => \BytesInFIFO_1_reg_n_0_[28]\,
      I3 => ReadCounter_reg(28),
      O => \FIFO_1_Full1_carry__2_i_2_n_0\
    );
\FIFO_1_Full1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(27),
      I1 => \BytesInFIFO_1_reg_n_0_[27]\,
      I2 => \BytesInFIFO_1_reg_n_0_[26]\,
      I3 => ReadCounter_reg(26),
      O => \FIFO_1_Full1_carry__2_i_3_n_0\
    );
\FIFO_1_Full1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(25),
      I1 => \BytesInFIFO_1_reg_n_0_[25]\,
      I2 => \BytesInFIFO_1_reg_n_0_[24]\,
      I3 => ReadCounter_reg(24),
      O => \FIFO_1_Full1_carry__2_i_4_n_0\
    );
\FIFO_1_Full1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ReadCounter_reg(31),
      I1 => \BytesInFIFO_1_reg_n_0_[31]\,
      I2 => \BytesInFIFO_1_reg_n_0_[30]\,
      I3 => ReadCounter_reg(30),
      O => \FIFO_1_Full1_carry__2_i_5_n_0\
    );
\FIFO_1_Full1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[29]\,
      I1 => ReadCounter_reg(29),
      I2 => \BytesInFIFO_1_reg_n_0_[28]\,
      I3 => ReadCounter_reg(28),
      O => \FIFO_1_Full1_carry__2_i_6_n_0\
    );
\FIFO_1_Full1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[27]\,
      I1 => ReadCounter_reg(27),
      I2 => \BytesInFIFO_1_reg_n_0_[26]\,
      I3 => ReadCounter_reg(26),
      O => \FIFO_1_Full1_carry__2_i_7_n_0\
    );
\FIFO_1_Full1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[25]\,
      I1 => ReadCounter_reg(25),
      I2 => \BytesInFIFO_1_reg_n_0_[24]\,
      I3 => ReadCounter_reg(24),
      O => \FIFO_1_Full1_carry__2_i_8_n_0\
    );
FIFO_1_Full1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(7),
      I1 => \BytesInFIFO_1_reg_n_0_[7]\,
      I2 => \BytesInFIFO_1_reg_n_0_[6]\,
      I3 => ReadCounter_reg(6),
      O => FIFO_1_Full1_carry_i_1_n_0
    );
FIFO_1_Full1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(5),
      I1 => \BytesInFIFO_1_reg_n_0_[5]\,
      I2 => \BytesInFIFO_1_reg_n_0_[4]\,
      I3 => ReadCounter_reg(4),
      O => FIFO_1_Full1_carry_i_2_n_0
    );
FIFO_1_Full1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(3),
      I1 => \BytesInFIFO_1_reg_n_0_[3]\,
      I2 => \BytesInFIFO_1_reg_n_0_[2]\,
      I3 => ReadCounter_reg(2),
      O => FIFO_1_Full1_carry_i_3_n_0
    );
FIFO_1_Full1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => ReadCounter_reg(1),
      I1 => \BytesInFIFO_1_reg_n_0_[1]\,
      I2 => \BytesInFIFO_1_reg_n_0_[0]\,
      I3 => ReadCounter_reg(0),
      O => FIFO_1_Full1_carry_i_4_n_0
    );
FIFO_1_Full1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[7]\,
      I1 => ReadCounter_reg(7),
      I2 => \BytesInFIFO_1_reg_n_0_[6]\,
      I3 => ReadCounter_reg(6),
      O => FIFO_1_Full1_carry_i_5_n_0
    );
FIFO_1_Full1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[5]\,
      I1 => ReadCounter_reg(5),
      I2 => \BytesInFIFO_1_reg_n_0_[4]\,
      I3 => ReadCounter_reg(4),
      O => FIFO_1_Full1_carry_i_6_n_0
    );
FIFO_1_Full1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[3]\,
      I1 => ReadCounter_reg(3),
      I2 => \BytesInFIFO_1_reg_n_0_[2]\,
      I3 => ReadCounter_reg(2),
      O => FIFO_1_Full1_carry_i_7_n_0
    );
FIFO_1_Full1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \BytesInFIFO_1_reg_n_0_[1]\,
      I1 => ReadCounter_reg(1),
      I2 => \BytesInFIFO_1_reg_n_0_[0]\,
      I3 => ReadCounter_reg(0),
      O => FIFO_1_Full1_carry_i_8_n_0
    );
FIFO_1_Full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3033BB3300008800"
    )
        port map (
      I0 => FIFO_0_Full_reg_n_0,
      I1 => \BytesInFIFO_1[31]_i_2_n_0\,
      I2 => p_0_in,
      I3 => FIFO_1_Full_i_2_n_0,
      I4 => I2SState(1),
      I5 => FIFO_1_Full_reg_n_0,
      O => FIFO_1_Full_i_1_n_0
    );
FIFO_1_Full_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I2SState(0),
      I1 => I2SState(2),
      O => FIFO_1_Full_i_2_n_0
    );
FIFO_1_Full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => FIFO_1_Full_i_1_n_0,
      Q => FIFO_1_Full_reg_n_0,
      R => '0'
    );
\FIFO_1_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(0),
      Q => \FIFO_1_reg[0]\(0),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(10),
      Q => \FIFO_1_reg[0]\(10),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(11),
      Q => \FIFO_1_reg[0]\(11),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(12),
      Q => \FIFO_1_reg[0]\(12),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(13),
      Q => \FIFO_1_reg[0]\(13),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(14),
      Q => \FIFO_1_reg[0]\(14),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(15),
      Q => \FIFO_1_reg[0]\(15),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(1),
      Q => \FIFO_1_reg[0]\(1),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(2),
      Q => \FIFO_1_reg[0]\(2),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(3),
      Q => \FIFO_1_reg[0]\(3),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(4),
      Q => \FIFO_1_reg[0]\(4),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(5),
      Q => \FIFO_1_reg[0]\(5),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(6),
      Q => \FIFO_1_reg[0]\(6),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(7),
      Q => \FIFO_1_reg[0]\(7),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(8),
      Q => \FIFO_1_reg[0]\(8),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[0]\(9),
      Q => \FIFO_1_reg[0]\(9),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(0),
      Q => \FIFO_1_reg[1]\(0),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(10),
      Q => \FIFO_1_reg[1]\(10),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(11),
      Q => \FIFO_1_reg[1]\(11),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(12),
      Q => \FIFO_1_reg[1]\(12),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(13),
      Q => \FIFO_1_reg[1]\(13),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(14),
      Q => \FIFO_1_reg[1]\(14),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(15),
      Q => \FIFO_1_reg[1]\(15),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(1),
      Q => \FIFO_1_reg[1]\(1),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(2),
      Q => \FIFO_1_reg[1]\(2),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(3),
      Q => \FIFO_1_reg[1]\(3),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(4),
      Q => \FIFO_1_reg[1]\(4),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(5),
      Q => \FIFO_1_reg[1]\(5),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(6),
      Q => \FIFO_1_reg[1]\(6),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(7),
      Q => \FIFO_1_reg[1]\(7),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(8),
      Q => \FIFO_1_reg[1]\(8),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[1]\(9),
      Q => \FIFO_1_reg[1]\(9),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(0),
      Q => \FIFO_1_reg[2]\(0),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(10),
      Q => \FIFO_1_reg[2]\(10),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(11),
      Q => \FIFO_1_reg[2]\(11),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(12),
      Q => \FIFO_1_reg[2]\(12),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(13),
      Q => \FIFO_1_reg[2]\(13),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(14),
      Q => \FIFO_1_reg[2]\(14),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(15),
      Q => \FIFO_1_reg[2]\(15),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(1),
      Q => \FIFO_1_reg[2]\(1),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(2),
      Q => \FIFO_1_reg[2]\(2),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(3),
      Q => \FIFO_1_reg[2]\(3),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(4),
      Q => \FIFO_1_reg[2]\(4),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(5),
      Q => \FIFO_1_reg[2]\(5),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(6),
      Q => \FIFO_1_reg[2]\(6),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(7),
      Q => \FIFO_1_reg[2]\(7),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(8),
      Q => \FIFO_1_reg[2]\(8),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[2]\(9),
      Q => \FIFO_1_reg[2]\(9),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(0),
      Q => \FIFO_1_reg[3]\(0),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(10),
      Q => \FIFO_1_reg[3]\(10),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(11),
      Q => \FIFO_1_reg[3]\(11),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(12),
      Q => \FIFO_1_reg[3]\(12),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(13),
      Q => \FIFO_1_reg[3]\(13),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(14),
      Q => \FIFO_1_reg[3]\(14),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(15),
      Q => \FIFO_1_reg[3]\(15),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(1),
      Q => \FIFO_1_reg[3]\(1),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(2),
      Q => \FIFO_1_reg[3]\(2),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(3),
      Q => \FIFO_1_reg[3]\(3),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(4),
      Q => \FIFO_1_reg[3]\(4),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(5),
      Q => \FIFO_1_reg[3]\(5),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(6),
      Q => \FIFO_1_reg[3]\(6),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(7),
      Q => \FIFO_1_reg[3]\(7),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(8),
      Q => \FIFO_1_reg[3]\(8),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FIFO_1_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \BytesInFIFO_1[31]_i_2_n_0\,
      D => \FIFO_0_reg[3]\(9),
      Q => \FIFO_1_reg[3]\(9),
      R => \BytesInFIFO_1[31]_i_1_n_0\
    );
\FSM_sequential_FIFOState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAEAEACACEEAEA"
    )
        port map (
      I0 => \FSM_sequential_FIFOState[0]_i_2_n_0\,
      I1 => FIFOState(0),
      I2 => FIFOState(2),
      I3 => FIFO_1_Full_reg_n_0,
      I4 => FIFOState(1),
      I5 => FIFO_0_Full_reg_n_0,
      O => \FSM_sequential_FIFOState[0]_i_1_n_0\
    );
\FSM_sequential_FIFOState[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000EEEEAAEA"
    )
        port map (
      I0 => \FSM_sequential_FIFOState[0]_i_3_n_0\,
      I1 => FIFOState(1),
      I2 => \FIFO_0_Full1_carry__2_n_0\,
      I3 => FIFOState(0),
      I4 => FIFO_1_Full_reg_n_0,
      I5 => FIFOState(2),
      O => \FSM_sequential_FIFOState[0]_i_2_n_0\
    );
\FSM_sequential_FIFOState[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11115000"
    )
        port map (
      I0 => FIFOState(1),
      I1 => TVALID,
      I2 => Locked,
      I3 => Resetn_IBUF,
      I4 => FIFOState(0),
      I5 => FIFOState(2),
      O => \FSM_sequential_FIFOState[0]_i_3_n_0\
    );
\FSM_sequential_FIFOState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008AFFFF00FF0000"
    )
        port map (
      I0 => FIFO_1_Full_reg_n_0,
      I1 => FIFOState(0),
      I2 => \FIFO_0_Full1_carry__2_n_0\,
      I3 => \FSM_sequential_FIFOState[1]_i_2_n_0\,
      I4 => \FSM_sequential_FIFOState[1]_i_3_n_0\,
      I5 => FIFOState(1),
      O => \FSM_sequential_FIFOState[1]_i_1_n_0\
    );
\FSM_sequential_FIFOState[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABF"
    )
        port map (
      I0 => FIFOState(2),
      I1 => FIFOState(0),
      I2 => TVALID,
      I3 => FIFOState(1),
      O => \FSM_sequential_FIFOState[1]_i_2_n_0\
    );
\FSM_sequential_FIFOState[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33773177"
    )
        port map (
      I0 => FIFOState(0),
      I1 => FIFOState(2),
      I2 => FIFO_1_Full_reg_n_0,
      I3 => FIFOState(1),
      I4 => FIFO_0_Full_reg_n_0,
      O => \FSM_sequential_FIFOState[1]_i_3_n_0\
    );
\FSM_sequential_FIFOState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FDC0F0F0F1C0F0"
    )
        port map (
      I0 => \FIFO_0_Full1_carry__2_n_0\,
      I1 => FIFOState(0),
      I2 => FIFOState(2),
      I3 => FIFO_1_Full_reg_n_0,
      I4 => FIFOState(1),
      I5 => FIFO_0_Full_reg_n_0,
      O => \FSM_sequential_FIFOState[2]_i_1_n_0\
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
      Q => FIFOState(1),
      R => '0'
    );
\FSM_sequential_FIFOState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => \FSM_sequential_FIFOState[2]_i_1_n_0\,
      Q => FIFOState(2),
      R => '0'
    );
\FSM_sequential_I2SState[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => I2SState(1),
      I1 => I2SState(0),
      I2 => I2SState(2),
      O => \FSM_sequential_I2SState[0]_i_3_n_0\
    );
\FSM_sequential_I2SState[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"554F"
    )
        port map (
      I0 => I2SState(2),
      I1 => FIFO_0_Full_reg_n_0,
      I2 => I2SState(0),
      I3 => I2SState(1),
      O => \FSM_sequential_I2SState[0]_i_4_n_0\
    );
\FSM_sequential_I2SState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => Transmitter_n_4,
      Q => I2SState(0),
      R => '0'
    );
\FSM_sequential_I2SState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => Transmitter_n_3,
      Q => I2SState(1),
      R => '0'
    );
\FSM_sequential_I2SState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => '1',
      D => Transmitter_n_5,
      Q => I2SState(2),
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
\MCLK_Cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(10)
    );
\MCLK_Cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(11)
    );
\MCLK_Cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(12)
    );
\MCLK_Cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(13)
    );
\MCLK_Cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(14)
    );
\MCLK_Cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(15)
    );
\MCLK_Cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(16),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(16)
    );
\MCLK_Cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(17),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(17)
    );
\MCLK_Cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(18),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(18)
    );
\MCLK_Cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(19),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(19)
    );
\MCLK_Cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(1)
    );
\MCLK_Cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(20),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(20)
    );
\MCLK_Cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(21),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(21)
    );
\MCLK_Cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(22),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(22)
    );
\MCLK_Cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(23),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(23)
    );
\MCLK_Cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(24),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(24)
    );
\MCLK_Cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(25),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(25)
    );
\MCLK_Cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(26),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(26)
    );
\MCLK_Cnt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(27),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(27)
    );
\MCLK_Cnt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(28),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(28)
    );
\MCLK_Cnt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(29),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(29)
    );
\MCLK_Cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(2)
    );
\MCLK_Cnt[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(30),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(30)
    );
\MCLK_Cnt[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(31),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(31)
    );
\MCLK_Cnt[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(17),
      I1 => MCLK_Cnt(30),
      I2 => MCLK_Cnt(14),
      I3 => MCLK_Cnt(21),
      O => \MCLK_Cnt[31]_i_10_n_0\
    );
\MCLK_Cnt[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => MCLK_Cnt(0),
      I1 => MCLK_Cnt(16),
      I2 => MCLK_Cnt(7),
      I3 => MCLK_Cnt(2),
      O => \MCLK_Cnt[31]_i_11_n_0\
    );
\MCLK_Cnt[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \MCLK_Cnt[31]_i_4_n_0\,
      I1 => \MCLK_Cnt[31]_i_5_n_0\,
      I2 => \MCLK_Cnt[31]_i_6_n_0\,
      I3 => \MCLK_Cnt[31]_i_7_n_0\,
      O => \MCLK_Cnt[31]_i_3_n_0\
    );
\MCLK_Cnt[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => MCLK_Cnt(3),
      I1 => MCLK_Cnt(23),
      I2 => MCLK_Cnt(25),
      I3 => MCLK_Cnt(5),
      I4 => \MCLK_Cnt[31]_i_8_n_0\,
      O => \MCLK_Cnt[31]_i_4_n_0\
    );
\MCLK_Cnt[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => MCLK_Cnt(8),
      I1 => MCLK_Cnt(13),
      I2 => MCLK_Cnt(24),
      I3 => MCLK_Cnt(10),
      I4 => \MCLK_Cnt[31]_i_9_n_0\,
      O => \MCLK_Cnt[31]_i_5_n_0\
    );
\MCLK_Cnt[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => MCLK_Cnt(19),
      I1 => MCLK_Cnt(1),
      I2 => MCLK_Cnt(18),
      I3 => MCLK_Cnt(22),
      I4 => \MCLK_Cnt[31]_i_10_n_0\,
      O => \MCLK_Cnt[31]_i_6_n_0\
    );
\MCLK_Cnt[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => MCLK_Cnt(11),
      I1 => MCLK_Cnt(20),
      I2 => MCLK_Cnt(31),
      I3 => MCLK_Cnt(26),
      I4 => \MCLK_Cnt[31]_i_11_n_0\,
      O => \MCLK_Cnt[31]_i_7_n_0\
    );
\MCLK_Cnt[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(4),
      I1 => MCLK_Cnt(9),
      I2 => MCLK_Cnt(27),
      I3 => MCLK_Cnt(12),
      O => \MCLK_Cnt[31]_i_8_n_0\
    );
\MCLK_Cnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => MCLK_Cnt(6),
      I1 => MCLK_Cnt(28),
      I2 => MCLK_Cnt(29),
      I3 => MCLK_Cnt(15),
      O => \MCLK_Cnt[31]_i_9_n_0\
    );
\MCLK_Cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(3)
    );
\MCLK_Cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(4)
    );
\MCLK_Cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(5)
    );
\MCLK_Cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(6)
    );
\MCLK_Cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(7)
    );
\MCLK_Cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(8)
    );
\MCLK_Cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \MCLK_Cnt[31]_i_3_n_0\,
      O => MCLK_Cnt_0(9)
    );
\MCLK_Cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(0),
      Q => MCLK_Cnt(0),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(10),
      Q => MCLK_Cnt(10),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(11),
      Q => MCLK_Cnt(11),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(12),
      Q => MCLK_Cnt(12),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[8]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[12]_i_2_n_0\,
      CO(2 downto 0) => \NLW_MCLK_Cnt_reg[12]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => MCLK_Cnt(12 downto 9)
    );
\MCLK_Cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(13),
      Q => MCLK_Cnt(13),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(14),
      Q => MCLK_Cnt(14),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(15),
      Q => MCLK_Cnt(15),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(16),
      Q => MCLK_Cnt(16),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[12]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[16]_i_2_n_0\,
      CO(2 downto 0) => \NLW_MCLK_Cnt_reg[16]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => MCLK_Cnt(16 downto 13)
    );
\MCLK_Cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(17),
      Q => MCLK_Cnt(17),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(18),
      Q => MCLK_Cnt(18),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(19),
      Q => MCLK_Cnt(19),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(1),
      Q => MCLK_Cnt(1),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(20),
      Q => MCLK_Cnt(20),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[16]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[20]_i_2_n_0\,
      CO(2 downto 0) => \NLW_MCLK_Cnt_reg[20]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => MCLK_Cnt(20 downto 17)
    );
\MCLK_Cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(21),
      Q => MCLK_Cnt(21),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(22),
      Q => MCLK_Cnt(22),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(23),
      Q => MCLK_Cnt(23),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(24),
      Q => MCLK_Cnt(24),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[20]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[24]_i_2_n_0\,
      CO(2 downto 0) => \NLW_MCLK_Cnt_reg[24]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => MCLK_Cnt(24 downto 21)
    );
\MCLK_Cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(25),
      Q => MCLK_Cnt(25),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(26),
      Q => MCLK_Cnt(26),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(27),
      Q => MCLK_Cnt(27),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(28),
      Q => MCLK_Cnt(28),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[24]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[28]_i_2_n_0\,
      CO(2 downto 0) => \NLW_MCLK_Cnt_reg[28]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => MCLK_Cnt(28 downto 25)
    );
\MCLK_Cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(29),
      Q => MCLK_Cnt(29),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(2),
      Q => MCLK_Cnt(2),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(30),
      Q => MCLK_Cnt(30),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(31),
      Q => MCLK_Cnt(31),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[28]_i_2_n_0\,
      CO(3 downto 0) => \NLW_MCLK_Cnt_reg[31]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_MCLK_Cnt_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
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
      D => MCLK_Cnt_0(3),
      Q => MCLK_Cnt(3),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(4),
      Q => MCLK_Cnt(4),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \MCLK_Cnt_reg[4]_i_2_n_0\,
      CO(2 downto 0) => \NLW_MCLK_Cnt_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => MCLK_Cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => MCLK_Cnt(4 downto 1)
    );
\MCLK_Cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(5),
      Q => MCLK_Cnt(5),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(6),
      Q => MCLK_Cnt(6),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(7),
      Q => MCLK_Cnt(7),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(8),
      Q => MCLK_Cnt(8),
      R => Transmitter_n_1
    );
\MCLK_Cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MCLK_Cnt_reg[4]_i_2_n_0\,
      CO(3) => \MCLK_Cnt_reg[8]_i_2_n_0\,
      CO(2 downto 0) => \NLW_MCLK_Cnt_reg[8]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => MCLK_Cnt(8 downto 5)
    );
\MCLK_Cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => MCLK_Cnt_0(9),
      Q => MCLK_Cnt(9),
      R => Transmitter_n_1
    );
\ReadCounter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => I2SState(2),
      I1 => I2SState(0),
      I2 => I2SState(1),
      O => \ReadCounter[0]_i_1_n_0\
    );
\ReadCounter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(3),
      I1 => p_0_in,
      O => \ReadCounter[0]_i_3_n_0\
    );
\ReadCounter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(2),
      I1 => p_0_in,
      O => \ReadCounter[0]_i_4_n_0\
    );
\ReadCounter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(1),
      I1 => p_0_in,
      O => \ReadCounter[0]_i_5_n_0\
    );
\ReadCounter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => ReadCounter_reg(0),
      I1 => p_0_in,
      O => \ReadCounter[0]_i_6_n_0\
    );
\ReadCounter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(15),
      I1 => p_0_in,
      O => \ReadCounter[12]_i_2_n_0\
    );
\ReadCounter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(14),
      I1 => p_0_in,
      O => \ReadCounter[12]_i_3_n_0\
    );
\ReadCounter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(13),
      I1 => p_0_in,
      O => \ReadCounter[12]_i_4_n_0\
    );
\ReadCounter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(12),
      I1 => p_0_in,
      O => \ReadCounter[12]_i_5_n_0\
    );
\ReadCounter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(19),
      I1 => p_0_in,
      O => \ReadCounter[16]_i_2_n_0\
    );
\ReadCounter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(18),
      I1 => p_0_in,
      O => \ReadCounter[16]_i_3_n_0\
    );
\ReadCounter[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(17),
      I1 => p_0_in,
      O => \ReadCounter[16]_i_4_n_0\
    );
\ReadCounter[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(16),
      I1 => p_0_in,
      O => \ReadCounter[16]_i_5_n_0\
    );
\ReadCounter[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(23),
      I1 => p_0_in,
      O => \ReadCounter[20]_i_2_n_0\
    );
\ReadCounter[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(22),
      I1 => p_0_in,
      O => \ReadCounter[20]_i_3_n_0\
    );
\ReadCounter[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(21),
      I1 => p_0_in,
      O => \ReadCounter[20]_i_4_n_0\
    );
\ReadCounter[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(20),
      I1 => p_0_in,
      O => \ReadCounter[20]_i_5_n_0\
    );
\ReadCounter[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(27),
      I1 => p_0_in,
      O => \ReadCounter[24]_i_2_n_0\
    );
\ReadCounter[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(26),
      I1 => p_0_in,
      O => \ReadCounter[24]_i_3_n_0\
    );
\ReadCounter[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(25),
      I1 => p_0_in,
      O => \ReadCounter[24]_i_4_n_0\
    );
\ReadCounter[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(24),
      I1 => p_0_in,
      O => \ReadCounter[24]_i_5_n_0\
    );
\ReadCounter[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(31),
      I1 => p_0_in,
      O => \ReadCounter[28]_i_2_n_0\
    );
\ReadCounter[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(30),
      I1 => p_0_in,
      O => \ReadCounter[28]_i_3_n_0\
    );
\ReadCounter[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(29),
      I1 => p_0_in,
      O => \ReadCounter[28]_i_4_n_0\
    );
\ReadCounter[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(28),
      I1 => p_0_in,
      O => \ReadCounter[28]_i_5_n_0\
    );
\ReadCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(7),
      I1 => p_0_in,
      O => \ReadCounter[4]_i_2_n_0\
    );
\ReadCounter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(6),
      I1 => p_0_in,
      O => \ReadCounter[4]_i_3_n_0\
    );
\ReadCounter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(5),
      I1 => p_0_in,
      O => \ReadCounter[4]_i_4_n_0\
    );
\ReadCounter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(4),
      I1 => p_0_in,
      O => \ReadCounter[4]_i_5_n_0\
    );
\ReadCounter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(11),
      I1 => p_0_in,
      O => \ReadCounter[8]_i_2_n_0\
    );
\ReadCounter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(10),
      I1 => p_0_in,
      O => \ReadCounter[8]_i_3_n_0\
    );
\ReadCounter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(9),
      I1 => p_0_in,
      O => \ReadCounter[8]_i_4_n_0\
    );
\ReadCounter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ReadCounter_reg(8),
      I1 => p_0_in,
      O => \ReadCounter[8]_i_5_n_0\
    );
\ReadCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[0]_i_2_n_7\,
      Q => ReadCounter_reg(0),
      R => '0'
    );
\ReadCounter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ReadCounter_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_ReadCounter_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_0_in,
      O(3) => \ReadCounter_reg[0]_i_2_n_4\,
      O(2) => \ReadCounter_reg[0]_i_2_n_5\,
      O(1) => \ReadCounter_reg[0]_i_2_n_6\,
      O(0) => \ReadCounter_reg[0]_i_2_n_7\,
      S(3) => \ReadCounter[0]_i_3_n_0\,
      S(2) => \ReadCounter[0]_i_4_n_0\,
      S(1) => \ReadCounter[0]_i_5_n_0\,
      S(0) => \ReadCounter[0]_i_6_n_0\
    );
\ReadCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[8]_i_1_n_5\,
      Q => ReadCounter_reg(10),
      R => '0'
    );
\ReadCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[8]_i_1_n_4\,
      Q => ReadCounter_reg(11),
      R => '0'
    );
\ReadCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[12]_i_1_n_7\,
      Q => ReadCounter_reg(12),
      R => '0'
    );
\ReadCounter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCounter_reg[8]_i_1_n_0\,
      CO(3) => \ReadCounter_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_ReadCounter_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ReadCounter_reg[12]_i_1_n_4\,
      O(2) => \ReadCounter_reg[12]_i_1_n_5\,
      O(1) => \ReadCounter_reg[12]_i_1_n_6\,
      O(0) => \ReadCounter_reg[12]_i_1_n_7\,
      S(3) => \ReadCounter[12]_i_2_n_0\,
      S(2) => \ReadCounter[12]_i_3_n_0\,
      S(1) => \ReadCounter[12]_i_4_n_0\,
      S(0) => \ReadCounter[12]_i_5_n_0\
    );
\ReadCounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[12]_i_1_n_6\,
      Q => ReadCounter_reg(13),
      R => '0'
    );
\ReadCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[12]_i_1_n_5\,
      Q => ReadCounter_reg(14),
      R => '0'
    );
\ReadCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[12]_i_1_n_4\,
      Q => ReadCounter_reg(15),
      R => '0'
    );
\ReadCounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[16]_i_1_n_7\,
      Q => ReadCounter_reg(16),
      R => '0'
    );
\ReadCounter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCounter_reg[12]_i_1_n_0\,
      CO(3) => \ReadCounter_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_ReadCounter_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ReadCounter_reg[16]_i_1_n_4\,
      O(2) => \ReadCounter_reg[16]_i_1_n_5\,
      O(1) => \ReadCounter_reg[16]_i_1_n_6\,
      O(0) => \ReadCounter_reg[16]_i_1_n_7\,
      S(3) => \ReadCounter[16]_i_2_n_0\,
      S(2) => \ReadCounter[16]_i_3_n_0\,
      S(1) => \ReadCounter[16]_i_4_n_0\,
      S(0) => \ReadCounter[16]_i_5_n_0\
    );
\ReadCounter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[16]_i_1_n_6\,
      Q => ReadCounter_reg(17),
      R => '0'
    );
\ReadCounter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[16]_i_1_n_5\,
      Q => ReadCounter_reg(18),
      R => '0'
    );
\ReadCounter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[16]_i_1_n_4\,
      Q => ReadCounter_reg(19),
      R => '0'
    );
\ReadCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[0]_i_2_n_6\,
      Q => ReadCounter_reg(1),
      R => '0'
    );
\ReadCounter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[20]_i_1_n_7\,
      Q => ReadCounter_reg(20),
      R => '0'
    );
\ReadCounter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCounter_reg[16]_i_1_n_0\,
      CO(3) => \ReadCounter_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_ReadCounter_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ReadCounter_reg[20]_i_1_n_4\,
      O(2) => \ReadCounter_reg[20]_i_1_n_5\,
      O(1) => \ReadCounter_reg[20]_i_1_n_6\,
      O(0) => \ReadCounter_reg[20]_i_1_n_7\,
      S(3) => \ReadCounter[20]_i_2_n_0\,
      S(2) => \ReadCounter[20]_i_3_n_0\,
      S(1) => \ReadCounter[20]_i_4_n_0\,
      S(0) => \ReadCounter[20]_i_5_n_0\
    );
\ReadCounter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[20]_i_1_n_6\,
      Q => ReadCounter_reg(21),
      R => '0'
    );
\ReadCounter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[20]_i_1_n_5\,
      Q => ReadCounter_reg(22),
      R => '0'
    );
\ReadCounter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[20]_i_1_n_4\,
      Q => ReadCounter_reg(23),
      R => '0'
    );
\ReadCounter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[24]_i_1_n_7\,
      Q => ReadCounter_reg(24),
      R => '0'
    );
\ReadCounter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCounter_reg[20]_i_1_n_0\,
      CO(3) => \ReadCounter_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_ReadCounter_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ReadCounter_reg[24]_i_1_n_4\,
      O(2) => \ReadCounter_reg[24]_i_1_n_5\,
      O(1) => \ReadCounter_reg[24]_i_1_n_6\,
      O(0) => \ReadCounter_reg[24]_i_1_n_7\,
      S(3) => \ReadCounter[24]_i_2_n_0\,
      S(2) => \ReadCounter[24]_i_3_n_0\,
      S(1) => \ReadCounter[24]_i_4_n_0\,
      S(0) => \ReadCounter[24]_i_5_n_0\
    );
\ReadCounter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[24]_i_1_n_6\,
      Q => ReadCounter_reg(25),
      R => '0'
    );
\ReadCounter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[24]_i_1_n_5\,
      Q => ReadCounter_reg(26),
      R => '0'
    );
\ReadCounter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[24]_i_1_n_4\,
      Q => ReadCounter_reg(27),
      R => '0'
    );
\ReadCounter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[28]_i_1_n_7\,
      Q => ReadCounter_reg(28),
      R => '0'
    );
\ReadCounter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCounter_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_ReadCounter_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ReadCounter_reg[28]_i_1_n_4\,
      O(2) => \ReadCounter_reg[28]_i_1_n_5\,
      O(1) => \ReadCounter_reg[28]_i_1_n_6\,
      O(0) => \ReadCounter_reg[28]_i_1_n_7\,
      S(3) => \ReadCounter[28]_i_2_n_0\,
      S(2) => \ReadCounter[28]_i_3_n_0\,
      S(1) => \ReadCounter[28]_i_4_n_0\,
      S(0) => \ReadCounter[28]_i_5_n_0\
    );
\ReadCounter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[28]_i_1_n_6\,
      Q => ReadCounter_reg(29),
      R => '0'
    );
\ReadCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[0]_i_2_n_5\,
      Q => ReadCounter_reg(2),
      R => '0'
    );
\ReadCounter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[28]_i_1_n_5\,
      Q => ReadCounter_reg(30),
      R => '0'
    );
\ReadCounter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[28]_i_1_n_4\,
      Q => ReadCounter_reg(31),
      R => '0'
    );
\ReadCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[0]_i_2_n_4\,
      Q => ReadCounter_reg(3),
      R => '0'
    );
\ReadCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[4]_i_1_n_7\,
      Q => ReadCounter_reg(4),
      R => '0'
    );
\ReadCounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCounter_reg[0]_i_2_n_0\,
      CO(3) => \ReadCounter_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_ReadCounter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ReadCounter_reg[4]_i_1_n_4\,
      O(2) => \ReadCounter_reg[4]_i_1_n_5\,
      O(1) => \ReadCounter_reg[4]_i_1_n_6\,
      O(0) => \ReadCounter_reg[4]_i_1_n_7\,
      S(3) => \ReadCounter[4]_i_2_n_0\,
      S(2) => \ReadCounter[4]_i_3_n_0\,
      S(1) => \ReadCounter[4]_i_4_n_0\,
      S(0) => \ReadCounter[4]_i_5_n_0\
    );
\ReadCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[4]_i_1_n_6\,
      Q => ReadCounter_reg(5),
      R => '0'
    );
\ReadCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[4]_i_1_n_5\,
      Q => ReadCounter_reg(6),
      R => '0'
    );
\ReadCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[4]_i_1_n_4\,
      Q => ReadCounter_reg(7),
      R => '0'
    );
\ReadCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[8]_i_1_n_7\,
      Q => ReadCounter_reg(8),
      R => '0'
    );
\ReadCounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ReadCounter_reg[4]_i_1_n_0\,
      CO(3) => \ReadCounter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_ReadCounter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ReadCounter_reg[8]_i_1_n_4\,
      O(2) => \ReadCounter_reg[8]_i_1_n_5\,
      O(1) => \ReadCounter_reg[8]_i_1_n_6\,
      O(0) => \ReadCounter_reg[8]_i_1_n_7\,
      S(3) => \ReadCounter[8]_i_2_n_0\,
      S(2) => \ReadCounter[8]_i_3_n_0\,
      S(1) => \ReadCounter[8]_i_4_n_0\,
      S(0) => \ReadCounter[8]_i_5_n_0\
    );
\ReadCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clock,
      CE => \ReadCounter[0]_i_1_n_0\,
      D => \ReadCounter_reg[8]_i_1_n_6\,
      Q => ReadCounter_reg(9),
      R => '0'
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
TREADY_Int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCF80008"
    )
        port map (
      I0 => TVALID,
      I1 => FIFOState(0),
      I2 => FIFOState(2),
      I3 => FIFOState(1),
      I4 => \^tready\,
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
      ARESETN => \^aresetn\,
      Data(31 downto 16) => NLW_Transmitter_Data_UNCONNECTED(31 downto 16),
      Data(15 downto 0) => Data(15 downto 0),
      FIFO_1_Full_reg => Transmitter_n_3,
      FIFO_1_Full_reg_0 => Transmitter_n_4,
      \FSM_sequential_I2SState_reg[0]\ => \FSM_sequential_I2SState[0]_i_3_n_0\,
      \FSM_sequential_I2SState_reg[0]_0\ => \FSM_sequential_I2SState[0]_i_4_n_0\,
      \FSM_sequential_I2SState_reg[1]\ => FIFO_1_Full_reg_n_0,
      \FSM_sequential_I2SState_reg[1]_0\ => FIFO_0_Full_reg_n_0,
      \FSM_sequential_I2SState_reg[2]\ => Transmitter_n_5,
      I2SState(2 downto 0) => I2SState(2 downto 0),
      LRCLK_OBUF => LRCLK_OBUF,
      Locked => Locked,
      Resetn_IBUF => Resetn_IBUF,
      SD_Int_reg_0 => SD_Int_reg,
      SD_OBUF => SD_OBUF,
      SR(0) => Transmitter_n_1
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
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ClockGeneration : entity is "ClockGeneration.hwdef";
end ClockGeneration;

architecture STRUCTURE of ClockGeneration is
  attribute syn_black_box : string;
  attribute syn_black_box of ClockingWIzard : label is "TRUE";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ClockIn : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKIN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ClockIn : signal is "XIL_INTERFACENAME CLK.CLOCKIN, CLK_DOMAIN ClockGeneration_clk_in1_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ClockOut : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCKOUT CLK";
  attribute X_INTERFACE_PARAMETER of ClockOut : signal is "XIL_INTERFACENAME CLK.CLOCKOUT, CLK_DOMAIN /ClockingWIzard_clk_out1, FREQ_HZ 12288013, INSERT_VIP 0, PHASE 0.0";
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
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ACLK : signal is "xilinx.com:signal:clock:1.0 M_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ACLK : signal is "XIL_INTERFACENAME M_ACLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET ARESETN, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN DataROM_ACLK_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ARESETN : signal is "xilinx.com:signal:reset:1.0 M_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of ARESETN : signal is "XIL_INTERFACENAME M_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_TLAST : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of M_TREADY : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of M_TVALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of M_TDATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of M_TDATA : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN DataROM_ACLK_0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_TID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TID";
begin
  M_TDATA(16) <= 'Z';
  M_TDATA(17) <= 'Z';
  M_TDATA(18) <= 'Z';
  M_TDATA(19) <= 'Z';
  M_TDATA(20) <= 'Z';
  M_TDATA(21) <= 'Z';
  M_TDATA(22) <= 'Z';
  M_TDATA(23) <= 'Z';
  M_TDATA(24) <= 'Z';
  M_TDATA(25) <= 'Z';
  M_TDATA(26) <= 'Z';
  M_TDATA(27) <= 'Z';
  M_TDATA(28) <= 'Z';
  M_TDATA(29) <= 'Z';
  M_TDATA(30) <= 'Z';
  M_TDATA(31) <= 'Z';
  M_TID(0) <= 'Z';
  M_TID(1) <= 'Z';
  M_TID(2) <= 'Z';
  M_TID(3) <= 'Z';
  M_TID(4) <= 'Z';
  M_TID(5) <= 'Z';
  M_TID(6) <= 'Z';
  M_TID(7) <= 'Z';
U0: entity work.\DataROM_AXI4S_ROM_0_1__AXI4S_ROM\
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M_TDATA(15 downto 0) => M_TDATA(15 downto 0),
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
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of DataROM : entity is "DataROM.hwdef";
end DataROM;

architecture STRUCTURE of DataROM is
  signal NLW_SineROM_M_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_SineROM_M_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute syn_black_box : string;
  attribute syn_black_box of SineROM : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of SineROM : label is "AXI4S_ROM,Vivado 2018.3";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ACLK : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET ARESETN, CLK_DOMAIN DataROM_ACLK_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ARESETN : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of ARESETN : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  TDATA(16) <= 'Z';
  TDATA(17) <= 'Z';
  TDATA(18) <= 'Z';
  TDATA(19) <= 'Z';
  TDATA(20) <= 'Z';
  TDATA(21) <= 'Z';
  TDATA(22) <= 'Z';
  TDATA(23) <= 'Z';
  TDATA(24) <= 'Z';
  TDATA(25) <= 'Z';
  TDATA(26) <= 'Z';
  TDATA(27) <= 'Z';
  TDATA(28) <= 'Z';
  TDATA(29) <= 'Z';
  TDATA(30) <= 'Z';
  TDATA(31) <= 'Z';
  TID(0) <= 'Z';
  TID(1) <= 'Z';
  TID(2) <= 'Z';
  TID(3) <= 'Z';
  TID(4) <= 'Z';
  TID(5) <= 'Z';
  TID(6) <= 'Z';
  TID(7) <= 'Z';
SineROM: entity work.DataROM_AXI4S_ROM_0_1
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M_TDATA(31 downto 16) => NLW_SineROM_M_TDATA_UNCONNECTED(31 downto 16),
      M_TDATA(15 downto 0) => TDATA(15 downto 0),
      M_TID(7 downto 0) => NLW_SineROM_M_TID_UNCONNECTED(7 downto 0),
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
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Top : entity is "1a5a0f0c";
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
  signal Active_OBUF : STD_LOGIC;
  signal ClockOut : STD_LOGIC;
  signal Clock_IBUF : STD_LOGIC;
  signal Clock_IBUF_BUFG : STD_LOGIC;
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
  signal NLW_AudioData_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_AudioData_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_I2S_Transmitter_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  attribute hw_handoff : string;
  attribute hw_handoff of AudioData : label is "DataROM.hwdef";
  attribute LOPT_BUFG_CLOCK : boolean;
  attribute LOPT_BUFG_CLOCK of Clock_IBUF_BUFG_inst : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Clock_IBUF_BUFG_inst : label is "BUFG_OPT ";
  attribute OPT_INSERTED : boolean;
  attribute OPT_INSERTED of Clock_IBUF_inst : label is std.standard.true;
  attribute OPT_MODIFIED of Clock_IBUF_inst : label is "MLO BUFG_OPT ";
  attribute hw_handoff of InputClock : label is "ClockGeneration.hwdef";
begin
Active_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Active_OBUF,
      O => Active
    );
AudioData: entity work.DataROM
     port map (
      ACLK => Clock_IBUF_BUFG,
      ARESETN => Active_OBUF,
      TDATA(31 downto 16) => NLW_AudioData_TDATA_UNCONNECTED(31 downto 16),
      TDATA(15 downto 0) => TDATA(15 downto 0),
      TID(7 downto 0) => NLW_AudioData_TID_UNCONNECTED(7 downto 0),
      TLAST => Last_OBUF,
      TREADY => TREADY,
      TVALID => TVALID
    );
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
I2S_Transmitter: entity work.I2S
     port map (
      ARESETN => Active_OBUF,
      AudioClock_reg_0 => I2S_Transmitter_n_2,
      CLK => MCLK_OBUF_BUFG,
      Clock => Clock_IBUF_BUFG,
      LRCLK_OBUF => LRCLK_OBUF,
      Locked => Locked,
      Resetn_IBUF => Resetn_IBUF,
      SCLK_OBUF => SCLK_OBUF,
      SD_Int_reg => LRCLK_Int_reg_i_3_n_0,
      SD_OBUF => SD_OBUF,
      TDATA(31 downto 16) => NLW_I2S_Transmitter_TDATA_UNCONNECTED(31 downto 16),
      TDATA(15 downto 0) => TDATA(15 downto 0),
      TREADY => TREADY,
      TVALID => TVALID
    );
InputClock: entity work.ClockGeneration
     port map (
      ClockIn => Clock_IBUF_BUFG,
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
