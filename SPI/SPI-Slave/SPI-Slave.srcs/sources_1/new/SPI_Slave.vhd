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
    Port (  Clock   : in STD_LOGIC;
            nReset  : in STD_LOGIC;

            Valid   : out STD_LOGIC;
            Rx      : out STD_LOGIC_VECTOR(7 downto 0);

            CPOL    : in STD_LOGIC;
            CPHA    : in STD_LOGIC;

            -- SPI connections
            SCLK    : in STD_LOGIC;
            MISO    : out STD_LOGIC;
            CS      : in STD_LOGIC;
            MOSI    : in STD_LOGIC
            );
end SPI_Slave;

architecture SPI_Slave_Arch of SPI_Slave is

    signal Data_ShiftReg    : STD_LOGIC_VECTOR(7 downto 0)           := (others => '0');
    signal SCLK_ShiftReg    : STD_LOGIC_VECTOR(1 downto 0)           := (others => '0');
    signal CS_ShiftReg      : STD_LOGIC_VECTOR(1 downto 0)           := (others => '0');

begin

    process
    begin
        wait until rising_edge(Clock);
        SCLK_ShiftReg  <= SCLK_ShiftReg(0) & SCLK;
        CS_ShiftReg    <= CS_ShiftReg(0) & CS;

        if(CS_ShiftReg(0) = '0') then
            Valid <= '0';
            if(SCLK_ShiftReg = "01") then
                Data_ShiftReg <= Data_ShiftReg(6 downto 0) & MOSI;
            end if;
        else
            if(CS_ShiftReg = "01") then
                Valid <= '1';
                Rx <= Data_ShiftReg;
            end if;
        end if;
    end process;
end SPI_Slave_Arch;