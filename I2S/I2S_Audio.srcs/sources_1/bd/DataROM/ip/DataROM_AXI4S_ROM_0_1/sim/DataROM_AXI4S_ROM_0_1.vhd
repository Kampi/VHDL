-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: www.kampis-elektroecke.de:Kampis-Elektroecke:AXI4S_ROM:2.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY DataROM_AXI4S_ROM_0_1 IS
  PORT (
    ACLK : IN STD_LOGIC;
    ARESETN : IN STD_LOGIC;
    M_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_TID : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_TREADY : IN STD_LOGIC;
    M_TVALID : OUT STD_LOGIC;
    M_TLAST : OUT STD_LOGIC
  );
END DataROM_AXI4S_ROM_0_1;

ARCHITECTURE DataROM_AXI4S_ROM_0_1_arch OF DataROM_AXI4S_ROM_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF DataROM_AXI4S_ROM_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT AXI4S_ROM IS
    GENERIC (
      DUAL_CHANNEL_DATA : BOOLEAN
    );
    PORT (
      ACLK : IN STD_LOGIC;
      ARESETN : IN STD_LOGIC;
      M_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M_TID : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_TREADY : IN STD_LOGIC;
      M_TVALID : OUT STD_LOGIC;
      M_TLAST : OUT STD_LOGIC
    );
  END COMPONENT AXI4S_ROM;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF DataROM_AXI4S_ROM_0_1_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF M_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M_TDATA: SIGNAL IS "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN DataROM_ACLK_0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ARESETN: SIGNAL IS "XIL_INTERFACENAME M_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ARESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 M_ARESETN RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ACLK: SIGNAL IS "XIL_INTERFACENAME M_ACLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET ARESETN, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN DataROM_ACLK_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 M_ACLK CLK";
BEGIN
  U0 : AXI4S_ROM
    GENERIC MAP (
      DUAL_CHANNEL_DATA => false
    )
    PORT MAP (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M_TDATA => M_TDATA,
      M_TID => M_TID,
      M_TREADY => M_TREADY,
      M_TVALID => M_TVALID,
      M_TLAST => M_TLAST
    );
END DataROM_AXI4S_ROM_0_1_arch;
