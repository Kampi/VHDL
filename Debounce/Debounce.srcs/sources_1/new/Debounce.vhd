----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert  
-- 
-- Create Date:         19.06.2020 18:20:06
-- Design Name: 
-- Module Name:         Debounce - Behavioral
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:   	Vivado 2020.1
-- Description:         Debounce module for a MAX6817 debounce IC implementation from 
--                      https://www.kampis-elektroecke.de/fpga/taster-entprellen/
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

entity Debounce is
    Generic (   BOUNCETIME : INTEGER
                );
    Port (  Clock    : in  STD_LOGIC;
            ResetN   : in STD_LOGIC;
            Input    : in  STD_LOGIC;
            Output   : out STD_LOGIC
            );
end Debounce;

architecture Debounce_Arch of Debounce is

   signal DebounceCounter   : INTEGER := 0;
   signal InputState        : STD_LOGIC := '0';
   
begin

    process
    begin
        wait until rising_edge(Clock);

        if(ResetN = '0') then
            DebounceCounter <= 0;
        else
            if(Input = InputState) then
                DebounceCounter <= 0;
            else
                DebounceCounter <= DebounceCounter + 1;
            end if;
        end if;
        
        if(DebounceCounter = BOUNCETIME) then
            DebounceCounter <= 0;
            InputState <= Input;
        end if;
    end process;
    
    Output <= InputState;

end Debounce_Arch;