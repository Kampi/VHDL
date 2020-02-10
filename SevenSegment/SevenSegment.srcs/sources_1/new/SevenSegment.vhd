----------------------------------------------------------------------------------
-- Company: 		    https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         14.01.2019 19:10:26
-- Design Name: 
-- Module Name:    	    SevenSegment - SevenSegment_Arch
-- Project Name: 
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         Seven segment driver.
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SevenSegment is
    Port ( Clock    : in STD_LOGIC;
           ResetN   : in STD_LOGIC;
           Data     : in STD_LOGIC_VECTOR(7 downto 0);
           Anode    : out STD_LOGIC_VECTOR(6 downto 0);
           Active   : out STD_LOGIC
           );
end SevenSegment;

architecture SevenSegment_Arch of SevenSegment is

    signal RefreshCounter   : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal Display          : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

begin

    Active <= RefreshCounter(10);

    process(Clock, ResetN)
    begin
        if(ResetN = '0') then
            RefreshCounter <= (others => '0');
        else
            if(rising_edge(Clock)) then
                RefreshCounter <= STD_LOGIC_VECTOR(UNSIGNED(RefreshCounter) + 1);
            end if;
        end if;        
    end process;

    process(RefreshCounter(10))
    begin
        case RefreshCounter(10) is
            when '0' => Display <= Data(3 downto 0);
            when '1' => Display <= Data(7 downto 4);
            when others =>
        end case;
    end process;

    process(Display)
    begin
        case Display is
            when "0000" => Anode <= "0000000";   
            when "0001" => Anode <= "0000110";
            when "0010" => Anode <= "1011011"; 
            when "0011" => Anode <= "1001111";
            when "0100" => Anode <= "1100110"; 
            when "0101" => Anode <= "1101101"; 
            when "0110" => Anode <= "1111101"; 
            when "0111" => Anode <= "0000111";
            when "1000" => Anode <= "1111111";
            when "1001" => Anode <= "1101111";
            when others => Anode <= "0000000";
        end case;
    end process;

end SevenSegment_Arch;