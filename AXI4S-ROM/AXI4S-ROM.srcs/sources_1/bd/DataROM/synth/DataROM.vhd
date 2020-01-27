--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Thu Aug  1 14:28:36 2019
--Host        : 40B0341C1F56 running 64-bit major release  (build 9200)
--Command     : generate_target DataROM.bd
--Design      : DataROM
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataROM is
  port (
    Address : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Clk : in STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of DataROM : entity is "DataROM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DataROM,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of DataROM : entity is "DataROM.hwdef";
end DataROM;

architecture STRUCTURE of DataROM is
  component DataROM_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component DataROM_blk_mem_gen_0_0;
  signal DataROM_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal addra_0_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal clka_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN DataROM_clka_0, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
begin
  DataOut(15 downto 0) <= DataROM_douta(15 downto 0);
  addra_0_1(10 downto 0) <= Address(10 downto 0);
  clka_0_1 <= Clk;
DataROM: component DataROM_blk_mem_gen_0_0
     port map (
      addra(10 downto 0) => addra_0_1(10 downto 0),
      clka => clka_0_1,
      douta(15 downto 0) => DataROM_douta(15 downto 0)
    );
end STRUCTURE;
