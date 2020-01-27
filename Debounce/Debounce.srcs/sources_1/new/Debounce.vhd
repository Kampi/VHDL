----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:   	28.07.2019 15:52:56
-- Design Name: 
-- Module Name:    	Debounce - Debounce_Arch
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

entity Debounce is
    Generic (BOUNCETIME : INTEGER
             );
    Port ( Clock    : in  STD_LOGIC;
           Reset    : in STD_LOGIC;
           Input    : in  STD_LOGIC;
           Output   : out STD_LOGIC
	       );
end Debounce;

architecture Debounce_Arch of Debounce is

    signal Debounce_Counter : INTEGER := 0;
    signal Taster_Debounce : STD_LOGIC := '0';
   
begin

    process(Clock, Reset, Debounce_Counter, Input)
    begin
        if(rising_edge(Clock)) then
            if(Reset = '0') then
                Debounce_Counter <= 0;
            else
               if(Input = Taster_Debounce) then
	               Debounce_Counter <= 0;
	           else
	               Debounce_Counter <= Debounce_Counter + 1;
	           end if;
            end if;	

            if(Debounce_Counter = BOUNCETIME) then
                Debounce_Counter <= 0;
                Taster_Debounce <= Input;
            end if;
        end if;
    end process;
	
    Output <= Taster_Debounce;
end Debounce_Arch;
