----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         02.01.2023 14:23:16
-- Design Name: 
-- Module Name:         ClockDivider - ClockDivider_Arch
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:       Vivado 2022.2
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
--  Revision            0.01 - File Created
--
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

entity ClockDivider is
    Generic ( DIV       : INTEGER := 125000                         -- Clock division coefficient. Must be even!
            );
    Port (  Clock_In    : in STD_LOGIC;
            nReset      : in STD_LOGIC;
            Clock_Out   : out STD_LOGIC
            );
end ClockDivider;

architecture ClockDivider_Arch of ClockDivider is

    signal Counter  : Integer           := 1;
    signal Pulse    : STD_LOGIC         := '0';

begin
    process
    begin
        wait until rising_edge(Clock_In);

        Counter <= Counter + 1;
        if(Counter = (DIV / 2)) then
            Pulse <= not Pulse;
            Counter <= 1;
        end if;

        if(nReset = '0') then
            Counter <= 1;
            Pulse <= '0';
        end if;
    end process;

    Clock_Out <= Pulse;
end ClockDivider_Arch;