----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         08.08.2020 15:42:43
-- Design Name: 
-- Module Name:         HCSR04 - HCSR04_Arch
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:   	Vivado 2020.1
-- Description:         HC-SR04 ultrasonic module
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HCSR04 is
    Port (  Clock           : in STD_LOGIC;                         -- Input clock (1 MHz)
            nReset          : in STD_LOGIC;                         -- Reset signal (active low)

            Start           : in STD_LOGIC;                         -- Start signal for the measurement
            Ready           : out STD_LOGIC;                        -- Measurement complete signal

            -- Sensor signals
            Echo            : in STD_LOGIC;                         -- Echo input from the sensor
            Trigger         : out STD_LOGIC;                        -- Trigger output for the sensor

            SignalTime      : out STD_LOGIC_VECTOR(15 downto 0)     -- Measurement time from the sensor
            );
end HCSR04;

architecture HCSR04_Arch of HCSR04 is

    type State_t is (Reset, WaitForStart, SendTrigger, WaitForEcho);

    signal CurrentState     : State_t   := Reset;

begin

    process
        -- Millisecond counter for state machine timing
        variable usCounter  : UNSIGNED(15 downto 0)         := (others => '0');
    begin
        wait until rising_edge(Clock);

        case CurrentState is
            when Reset =>
                CurrentState <= WaitForStart;

            when WaitForStart =>
                usCounter := (others => '0');

                if(Start = '1') then
                    Ready <= '0';
                    CurrentState <= SendTrigger;
                else
                    CurrentState <= WaitForStart;
                end if;

            when SendTrigger =>
                usCounter := usCounter + 1;

                if(usCounter < 10) then
                    Trigger <= '1';

                    CurrentState <= SendTrigger;
                else
                    usCounter := (others => '0');

                    Trigger <= '0';

                    CurrentState <= WaitForEcho;
                end if;

            when WaitForEcho =>
                usCounter := usCounter + 1;

                if(Echo = '1') then
                    -- Divide the result by two
                    usCounter := '0' & usCounter(14 downto 0);

                    Ready <= '1';
                    SignalTime <= STD_LOGIC_VECTOR(usCounter);
                    
                    CurrentState <= WaitForStart;
                else
                    CurrentState <= WaitForEcho;
                end if;
        end case;

        if(nReset = '0') then
            usCounter := (others => '0');
            Ready <= '0';
        end if;
    end process;

end HCSR04_Arch;