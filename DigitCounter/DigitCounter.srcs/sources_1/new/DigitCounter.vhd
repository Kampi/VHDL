----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:  	28.07.2019 13:56:13
-- Design Name: 
-- Module Name:    	DigitCounter - DigitCounter_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DigitCounter is
    Port ( Clock        : in STD_LOGIC;
           Resetn       : in STD_LOGIC;
           Direction    : in STD_LOGIC;
           Out1         : out STD_LOGIC_VECTOR(3 downto 0);
           Out2         : out STD_LOGIC_VECTOR(3 downto 0);
           Out3         : out STD_LOGIC_VECTOR(3 downto 0)
           );
end DigitCounter;

architecture DigitCounter_Arch of DigitCounter is

    signal Counter1         : INTEGER := 0;
    signal Counter2         : INTEGER := 0;
    signal Counter3         : INTEGER := 0;
    
    signal CountDirection   : INTEGER := 0;
    signal Limit            : INTEGER := 0;
    signal ResetValue       : INTEGER := 0;
    
begin

    CountDirection <= 1 when (Direction = '1') else -1;
    Limit <= 9 when (Direction = '1') else 0;
    ResetValue <= 0 when (Direction = '1') else 9;

    process(Clock, Resetn, ResetValue)
    begin
        if(Resetn = '0') then
           Counter1 <= ResetValue;
           Counter2 <= ResetValue;
           Counter3 <= ResetValue;
        elsif(rising_edge(Clock)) then
            Counter1 <= Counter1 + CountDirection;
            
            if(Counter1 = Limit) then
                Counter1 <= ResetValue;
                Counter2 <= Counter2 + CountDirection;
                
                if(Counter2 = Limit) then
                    Counter2 <= ResetValue;
                    Counter3 <= Counter3 + CountDirection;
                    
                    if(Counter3 = Limit) then
                        Counter3 <= ResetValue;
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    Out1 <= std_logic_vector(to_unsigned(Counter1, Out1'length));
    Out2 <= std_logic_vector(to_unsigned(Counter2, Out2'length));
    Out3 <= std_logic_vector(to_unsigned(Counter3, Out3'length));
    
end DigitCounter_Arch;