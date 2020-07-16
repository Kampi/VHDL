----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         16.07.2020 10:23:07
-- Design Name: 
-- Module Name:         SPI_Slave - SPI_Slave_Arch
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:   	Vivado 2020.1
-- Description:         SPI-Slave implementation for a FPGA.
-- 
-- Dependencies: 
-- 
-- Revision:
--  Revision            0.01 - File Created
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

entity SPI_Slave is
    Port (
            Busy    : out STD_LOGIC;
            Rx      : out STD_LOGIC_VECTOR(7 downto 0);

            CPOL    : in STD_LOGIC;
            CPHA    : in STD_LOGIC;

            -- SPI connections
            SCLK    : in STD_LOGIC;
            MISO    : in STD_LOGIC;
            CS      : in STD_LOGIC;
            MOSI    : out STD_LOGIC
            );
end SPI_Slave;

architecture SPI_Slave_Arch of SPI_Slave is

    signal SCLK_Int : STD_LOGIC := '0';

begin

    -- Generate the clock signal
    SCLK_Int <= SCLK when (CPOL = '0') else (not CPOL);

    

end SPI_Slave_Arch;