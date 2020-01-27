----------------------------------------------------------------------------------
-- Company:             www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         28.07.2019 13:56:57
-- Design Name: 
-- Module Name:         Testbench - Testbench_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:         Testbench for Top-Design.
-- 
-- Dependencies: 
-- 
-- Revision:
--  Revision 0.01 - File Created
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

entity Testbench is
--  Port ( );
end Testbench;

architecture Testbench_Arch of Testbench is

    constant ClockPeriod    : TIME := 8 ns;

    signal SimulationClock  : STD_LOGIC := '0';
    signal SimulationResetn : STD_LOGIC := '0';
    
    signal MCLK             : STD_LOGIC := '0';
    signal LRCLK            : STD_LOGIC := '0';
    signal SCLK             : STD_LOGIC := '0';
    signal SD               : STD_LOGIC := '0';

    component Top is
        Port (  Clock    : in STD_LOGIC;
                Resetn   : in STD_LOGIC;
                MCLK     : out STD_LOGIC;
                LRCLK    : out STD_LOGIC;
                SCLK     : out STD_LOGIC;
                SD       : out STD_LOGIC
                );
    end component;

begin

    -- Clock generation
    process begin
        wait for (ClockPeriod / 2);
        SimulationClock <= '1';
        wait for (ClockPeriod / 2);
        SimulationClock <= '0';
    end process;

    UUT : component Top port map (      Clock => SimulationClock,
                                        Resetn => SimulationResetn,
                                        MCLK => MCLK,
                                        LRCLK => LRCLK,
                                        SCLK => SCLK,
                                        SD => SD
                                        );

    -- Stimulus
    process begin
        wait for 10 ns;
        SimulationResetn <= '1';
    end process;

end Testbench_Arch;