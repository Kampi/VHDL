----------------------------------------------------------------------------------
-- Company:         https://www.kampis-elektroecke.de
-- Engineer:        Daniel Kampert
-- 
-- Create Date:     28.11.2020 08:36:27
-- Design Name: 
-- Module Name:     Top - Top_Arch
-- Project Name:    FrequencyCounter
-- Target Devices: 
-- Module Name:     Counter - Counter_Arch
-- Project Name: 
-- Tool Versions:   Vivado 2020.1.1
-- Description:     Equal Precision Frequency Meter. Based on the publication from
--                  https://www.researchgate.net/publication/271290595_Design_of_Equal_Precision_Frequency_Meter_Based_on_FPGA
-- 
-- Dependencies: 
-- 
-- Revision:
--  Revision        0.01 - File Created
--
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
    Port (  Clock   : in    STD_LOGIC;
            Enable  : in    STD_LOGIC;
            Clear   : in    STD_LOGIC;
            Count   : out   STD_LOGIC_VECTOR(31 downto 0)
            );
end Counter;

architecture Counter_Arch of Counter is

    signal Counter  : UNSIGNED(31 downto 0)     := (others => '0');

begin

    Count <= STD_LOGIC_VECTOR(Counter);

    process
    begin
        wait until rising_edge(Clock);

        If(Enable = '1') then
            Counter <= Counter + 1;
        end if;

        if(Clear = '1') then
            Counter <= (others => '0');
        end if;
    end process;
end Counter_Arch;