----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         16.07.2020 12:45:22
-- Design Name: 
-- Module Name:         Top_TB - Top_TB_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:         Testbench for the SPI slave implementation.
-- 
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

entity Top_TB is
--  Port ( );
end Top_TB;

architecture Top_TB_Arch of Top_TB is

    -- 125 MHz Clock
    constant CLOCKPERIODE   : TIME                          := 8 ns;

    constant MASTER_CLOCK   : TIME                          := 6 ns;

    signal SimulationClock  : STD_LOGIC                     := '0';
    signal nSimulationReset : STD_LOGIC                     := '1';

    signal MOSI_ShiftReg    : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');

    -- SPI signals
    signal MOSI             : STD_LOGIC                     := '0';
    signal MISO             : STD_LOGIC;
    signal SCLK             : STD_LOGIC                     := '0';
    signal nSS              : STD_LOGIC                     := '1';

    component Top is
    Port (  Clock   : in STD_LOGIC;
            nReset  : in STD_LOGIC;
            SCLK    : in STD_LOGIC;
            nSS     : in STD_LOGIC;
            MOSI    : in STD_LOGIC;
            MISO    : out STD_LOGIC
            );
    end component;

begin

    MOSI <= MOSI_ShiftReg(7);

    -- Clock generation
    process
    begin
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '1';
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '0';
    end process;

    SPI_Master : process
    begin
        wait for 10 us;

        -- Load new data into the shift register
        MOSI_ShiftReg <= x"AB";

        -- Select the slave
        nSS <= '0';
        wait for (MASTER_CLOCK * 4);

        -- Generate a new SPI transmission
        for I in 0 to 7 loop
            -- Generate a rising edge
            wait for (MASTER_CLOCK * 10);
            SCLK <= '1';

            MOSI_ShiftReg <= MOSI_ShiftReg(6 downto 0) & '0';

            -- Generate a falling edge
            wait for (MASTER_CLOCK * 10);
            SCLK <= '0';
        end loop;

        -- Unselect the slave
        wait for (MASTER_CLOCK * 4);
        nSS <= '1';

    end process;

    DUT : Top port map (Clock => SimulationClock,
                        nReset => nSimulationReset,
                        SCLK => SCLK,
                        nSS => nSS,
                        MOSI => MOSI,
                        MISO => MISO
                        );

end Top_TB_Arch;