----------------------------------------------------------------------------------
-- Company:         https://www.kampis-elektroecke.de
-- Engineer:        Daniel Kampert
-- 
-- Create Date:     28.11.2020 08:36:27
-- Design Name: 
-- Module Name:     Top - Top_Arch
-- Project Name:    FrequencyCounter
-- Target Devices: 
-- Tool Versions:   Vivado 2020.1.1
-- Description:     Equal Precision Frequency Meter. Based on the publication from
--                  https://www.researchgate.net/publication/271290595_Design_of_Equal_Precision_Frequency_Meter_Based_on_FPGA
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

entity Top is
    Generic (   CYCLES  : INTEGER       := 100
                );                
    Port (  Clock_SS    : in STD_LOGIC;
            Clock_MS    : in STD_LOGIC;
            nReset      : in STD_LOGIC;
            Start       : in STD_LOGIC;
            Ready       : out STD_LOGIC;
            Count       : out STD_LOGIC_VECTOR(63 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    type State_t is (STATE_RESET, STATE_WAIT, STATE_RUNNING, STATE_FINISH, STATE_GETRESULT);

    signal CurrentState     : State_t                       := STATE_RESET;

    signal CycleCounter     : INTEGER                       := 0;

    signal Clear            : STD_LOGIC                     := '0';
    signal Enable           : STD_LOGIC                     := '0';
    signal Latch            : STD_LOGIC                     := '0';

    signal Count_SS         : STD_LOGIC_VECTOR(31 downto 0);
    signal Count_MS         : STD_LOGIC_VECTOR(31 downto 0);

    component Counter is
        Port (  Clock   : in    STD_LOGIC;
                Enable  : in    STD_LOGIC;
                Clear   : in    STD_LOGIC;
                Count   : out   STD_LOGIC_VECTOR(31 downto 0)
                );
    end component;

begin

    SS_Counter  : Counter port map (Clock => Clock_SS,
                                    Clear => Clear,
                                    Enable => Enable,
                                    Count => Count_SS
                                    );

    MS_Counter  : Counter port map (Clock => Clock_MS,
                                    Clear => Clear,
                                    Enable => Enable,
                                    Count => Count_MS
                                    );

    process
    begin
        wait until rising_edge(Clock_MS);

        case CurrentState is
            when STATE_RESET =>
                CycleCounter <= 0;
                Ready <= '1';
                Clear <= '1';

                CurrentState <= STATE_WAIT;

            when STATE_WAIT =>
                CycleCounter <= 0;
                Clear <= '0';

                if(Start = '1') then
                    CurrentState <= STATE_RUNNING;
                else
                    CurrentState <= STATE_WAIT; 
                end if;

            when STATE_RUNNING =>
                CycleCounter <= CycleCounter + 1;
                Count <= (others => '0');
                Enable <= '1';
                Ready <= '0';

                if(CycleCounter = (CYCLES - 1)) then
                    CurrentState <= STATE_FINISH;
                else
                    CurrentState <= STATE_RUNNING;
                end if;

            when STATE_FINISH =>
                Enable <= '0';

                CurrentState <= STATE_GETRESULT;

            when STATE_GETRESULT =>
                Ready <= '1';
                Count <= Count_SS & Count_MS;

                CurrentState <= STATE_WAIT;

        end case;

        if(nReset = '0') then
            CurrentState <= STATE_RESET;
        end if;
    end process;
end Top_Arch;