----------------------------------------------------------------------------------
-- Company: 		    https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         14.01.2019 19:10:26
-- Design Name: 
-- Module Name:    	    Multiplexer - Multiplexer_Arch
-- Project Name: 
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         Seven segment display multiplexer from
--                      https://www.kampis-elektroecke.de/fpga/multiplexer-fuer-siebensegmentanzeigen/
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

entity Multiplexer is
    Generic (   REFRESH : INTEGER := 10000
                );
    Port ( Clock    : in STD_LOGIC;
           nReset   : in STD_LOGIC;
           Data     : in STD_LOGIC_VECTOR(7 downto 0);
           Anode    : out STD_LOGIC_VECTOR(6 downto 0);
           Strobe   : out STD_LOGIC
           );
end Multiplexer;

architecture Multiplexer_Arch of Multiplexer is

    signal RefreshCounter   : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal DisplayData      : STD_LOGIC_VECTOR(3 downto 0)  := (others => '0');

    signal Strobe_Int       : STD_LOGIC                     := '0';

begin

    process(Clock, nReset)
        variable RefreshCounter : INTEGER := 0;
    begin
        if(nReset = '0') then
            RefreshCounter := 0;
            
            Strobe_Int <= '0';
        else
            if(rising_edge(Clock)) then
                if(RefreshCounter < REFRESH) then
                    RefreshCounter := RefreshCounter + 1;
                else
                    RefreshCounter := 0;

                    Strobe_Int <= not Strobe_Int;
                end if;
            end if;
        end if;        
    end process;

    process(Clock, nReset)
    begin
        if(nReset = '0') then
            Anode <= (others => '0');
        elsif(rising_edge(Clock)) then
            case DisplayData is
                when "0000" => Anode <= "0111111";   
                when "0001" => Anode <= "0000110";
                when "0010" => Anode <= "1011011"; 
                when "0011" => Anode <= "1001111";
                when "0100" => Anode <= "1100110"; 
                when "0101" => Anode <= "1101101"; 
                when "0110" => Anode <= "1111101"; 
                when "0111" => Anode <= "0000111";
                when "1000" => Anode <= "1111111";
                when "1001" => Anode <= "1101111";
                when others => Anode <= (others => '0');
            end case;
        end if;
    end process;

    Strobe <= Strobe_Int;
    DisplayData <= Data(7 downto 4) when Strobe_Int = '1' else Data(3 downto 0);

end Multiplexer_Arch;