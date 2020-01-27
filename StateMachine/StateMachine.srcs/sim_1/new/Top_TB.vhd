----------------------------------------------------------------------------------
-- Company:         https://www.kampis-elektroecke.de
-- Engineer:        Daniel Kampert
-- 
-- Create Date:     06.07.2014 19:54:00
-- Design Name: 
-- Module Name:     Top_TB - Top_TB_Arch
-- Project Name:    Testbench for the state machine implementation from the state machine tutorial from
--                  https://www.kampis-elektroecke.de/fpga/entwurf-zustandsautomat/
-- Target Devices:  XC7Z010CLG400-1
-- Tool Versions:   Vivado 2019.2
-- Description:     Testbench for the state machine.
-- 
-- Dependencies: 
-- 
-- Revision:
--  Revision         0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_TB is
end Top_TB;

architecture Top_TB_Arch of Top_TB is

    -- 1 kHz Clock
    constant CLOCKPERIODE : TIME := 1 ms;

    signal SimulationClock  : STD_LOGIC := '0';
    signal E                : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
    signal O                : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');

    component Top
        Port (  Clock   : in STD_LOGIC;
                E       : in STD_LOGIC_VECTOR(1 downto 0);
                O       : out STD_LOGIC_VECTOR(1 downto 0)
                );
    end component;
    
begin

    UUT: Top port map(  Clock => SimulationClock, 
                        E => E,
                        O => O
                        );

    process begin
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '1';
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '0';
    end process;

    process begin
        E <= "01";
        wait for 50 ms;

        E <= "10";
        wait for 50 ms;

        E <= "11";
        wait for 50 ms;

        E <= "00";
        wait for 50 ms;
    end process;

end Top_TB_Arch;