--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Mar 19 13:19:14 2020
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target SineROM.bd
--Design      : SineROM
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SineROM is
  port (
    Address : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Clock : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute core_generation_info : string;
  attribute core_generation_info of SineROM : entity is "SineROM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SineROM,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of SineROM : entity is "SineROM.hwdef";
end SineROM;

architecture STRUCTURE of SineROM is
  component SineROM_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component SineROM_blk_mem_gen_0_0;
  signal SineROM_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal addra_0_1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal clka_0_1 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of Clock : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clock : signal is "XIL_INTERFACENAME CLK.CLOCK, CLK_DOMAIN SineROM_Clock, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
begin
  DataOut(15 downto 0) <= SineROM_douta(15 downto 0);
  addra_0_1(6 downto 0) <= Address(6 downto 0);
  clka_0_1 <= Clock;
SineROM: component SineROM_blk_mem_gen_0_0
     port map (
      addra(6 downto 0) => addra_0_1(6 downto 0),
      clka => clka_0_1,
      douta(15 downto 0) => SineROM_douta(15 downto 0)
    );
end STRUCTURE;
