----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:     28.07.2019 15:48:06
-- Design Name: 
-- Module Name:     ClockDiv - ClockDiv_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 	2018.2
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
--  	0.01 - File Created
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

entity ClockDiv is
   Generic (    DIVIDER : INTEGER 
                );
    Port (  Clock_In    : in STD_LOGIC;
            Reset       : in STD_LOGIC;
            Clock_Out   : out STD_LOGIC
            );
end ClockDiv;

architecture ClockDiv_Arch of ClockDiv is

    signal Clock_Counter    : INTEGER := 0;
    signal Clocksignal      : STD_LOGIC := '0';
    
begin

    process(Clock_In, Reset)
    begin
        if(rising_edge(Clock_In)) then
            if(Reset = '0') then
                Clock_Counter <= 0;
            else
                Clock_Counter <= Clock_Counter + 2;
                
                if(Clock_Counter > DIVIDER) then
                    Clocksignal <= not Clocksignal;
                    Clock_Counter  <= 0;
                end if;
            end if;
        end if;
    end process;
	
    Clock_Out <= Clocksignal;

end ClockDiv_Arch;
