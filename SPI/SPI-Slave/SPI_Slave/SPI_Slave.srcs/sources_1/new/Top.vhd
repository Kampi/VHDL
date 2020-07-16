----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:     16.07.2020 10:23:07
-- Design Name: 
-- Module Name:     Top - Top_Arch
-- Project Name: 
-- Target Devices:  XC7Z010CLG400-1
-- Tool Versions:   Vivado 2020.1
-- Description:     SPI-Slave implementation for a FPGA.
-- 
-- Dependencies: 
-- 
-- Revision:
--  Revision        0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is
    Port ( SCLK : in STD_LOGIC;
           MISO : in STD_LOGIC;
           CS : in STD_LOGIC;
           MOSI : out STD_LOGIC
           );
end Top;

architecture Top_Arch of Top is

begin


end Top_Arch;