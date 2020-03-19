--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Tue Mar 17 14:59:18 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target DUT_wrapper.bd
--Design      : DUT_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DUT_wrapper is
  port (
    AXIS_RXD_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIS_RXD_tready : out STD_LOGIC;
    AXIS_RXD_tvalid : in STD_LOGIC;
    Audio_Reset : in STD_LOGIC;
    I2S_lrclk : out STD_LOGIC;
    I2S_sclk : out STD_LOGIC;
    I2S_sd : out STD_LOGIC;
    MCLK : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end DUT_wrapper;

architecture STRUCTURE of DUT_wrapper is
  component DUT is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    Audio_Reset : in STD_LOGIC;
    MCLK : in STD_LOGIC;
    AXIS_RXD_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIS_RXD_tvalid : in STD_LOGIC;
    AXIS_RXD_tready : out STD_LOGIC;
    I2S_sclk : out STD_LOGIC;
    I2S_lrclk : out STD_LOGIC;
    I2S_sd : out STD_LOGIC
  );
  end component DUT;
begin
DUT_i: component DUT
     port map (
      AXIS_RXD_tdata(31 downto 0) => AXIS_RXD_tdata(31 downto 0),
      AXIS_RXD_tready => AXIS_RXD_tready,
      AXIS_RXD_tvalid => AXIS_RXD_tvalid,
      Audio_Reset => Audio_Reset,
      I2S_lrclk => I2S_lrclk,
      I2S_sclk => I2S_sclk,
      I2S_sd => I2S_sd,
      MCLK => MCLK,
      aclk => aclk,
      aresetn => aresetn
    );
end STRUCTURE;
