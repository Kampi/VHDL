----------------------------------------------------------------------------------
-- Company:         https://www.kampis-elektroecke.de
-- Engineer:        Daniel Kampert
-- 
-- Create Date:     28.11.2020 08:36:27
-- Design Name: 
-- Module Name:     Top_TB - Top_TB_Arch
-- Project Name:    FrequencyCounter
-- Target Devices: 
-- Tool Versions:   Vivado 2020.1.1
-- Description:     
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top_TB is
end Top_TB;

architecture Top_TB_Arch of Top_TB is

    -- 20 MHz standard signal
    constant PERIOD_STANDARD    : TIME          := 50 ns;

    -- 1 MHz measured signal
    constant PERIOD_MEASURED    : TIME          := 1 us;

    signal nReset               : STD_LOGIC     := '0';
    signal Start                : STD_LOGIC     := '0';
    signal Ready                : STD_LOGIC;

    signal Count                : STD_LOGIC_VECTOR(63 downto 0);

    signal StandardSignal       : STD_LOGIC     := '0';
    signal MeasuredSignal       : STD_LOGIC     := '0';

    component Top is
        Port (  Clock_SS    : in STD_LOGIC;
                Clock_MS    : in STD_LOGIC;
                nReset      : in STD_LOGIC;
                Start       : in STD_LOGIC;
                Ready       : out STD_LOGIC;
                Count       : out STD_LOGIC_VECTOR(63 downto 0)
                );
    end component;

begin

    -- Standard signal generation
    process begin
        wait for (PERIOD_STANDARD / 2);
        StandardSignal <= '1';
        wait for (PERIOD_STANDARD / 2);
        StandardSignal <= '0';
    end process;

    -- Measured signal generation
    process begin
        wait for (PERIOD_MEASURED / 2);
        MeasuredSignal <= '1';
        wait for (PERIOD_MEASURED / 2);
        MeasuredSignal <= '0';
    end process;

    DUT : Top port map (Clock_SS => StandardSignal,
                        Clock_MS => MeasuredSignal,
                        nReset => nReset,
                        Start => Start,
                        Ready => Ready,
                        Count => Count
                        );

    process
    begin
        wait for 100 ns;
        nReset <= '1';

        Start <= '1';
        wait until Ready = '0';
        Start <= '0';
        wait until Ready = '1';

    end process;
end Top_TB_Arch;