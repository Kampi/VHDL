----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date: 	15.03.2018 17:42:00
-- Design Name: 
-- Module Name: 	Top - Top_Arch
-- Project Name:    State machine implementation from the state machine tutorial from
--                  https://www.kampis-elektroecke.de/fpga/entwurf-zustandsautomat/
-- Target Devices:  XC7Z010CLG400-1
-- Tool Versions:   Vivado 2019.2
-- Description:     Simple VHDL state machine.
-- 
-- Dependencies: 
-- 
-- Revision:
-- 		0.01 - File Created
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

entity Top is
    Port (  Clock   : in STD_LOGIC;
            E       : in STD_LOGIC_VECTOR(1 downto 0);
            O       : out STD_LOGIC_VECTOR(1 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    type State_Type is (S0, S1, S2, S3);

    signal CurrentState : State_Type := S0; 

begin

    process(Clock)
    begin
        if(rising_edge(Clock)) then
            case CurrentState is
                when S0 =>  O <= "10";

                            if(E = "01") then
                                CurrentState <= S1;
                            else
                                CurrentState <= S0;
                            end if;
                when S1 =>  O <= "00";

                            if(E = "10") then
                                CurrentState <= S2;
                            else
                                CurrentState <= S1;
                            end if;
                when S2 =>  O <= "11";

                            if(E = "11") then
                                CurrentState <= S3;
                            else
                                CurrentState <= S2;
                            end if;
                when S3 =>  O <= "01";

                            if(E = "00") then
                                CurrentState <= S0;
                            else
                                CurrentState <= S3;
                            end if;        
            end case;
        end if;
       
    end process;

end Top_Arch;
