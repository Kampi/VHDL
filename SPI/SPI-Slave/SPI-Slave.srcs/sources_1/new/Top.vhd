----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         16.07.2020 10:23:07
-- Design Name: 
-- Module Name:         Top - Top_Arch
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:   	Vivado 2020.1
-- Description:         SPI-Slave implementation for a FPGA.
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

entity Top is
    Port (  Clock   : in STD_LOGIC;
            nReset  : in STD_LOGIC;

            -- SPI signals
            SCLK    : in STD_LOGIC;
            nSS     : in STD_LOGIC;
            MOSI    : in STD_LOGIC;
            MISO    : out STD_LOGIC
            );
end Top;
architecture Top_Arch of Top is

    type State_t is (State_Reset, State_CopyData, State_WaitForReady);
    type RAM_t is array (0 to 1) of STD_LOGIC_VECTOR(7 downto 0); 

    signal RAM              : RAM_t                                 := (x"AA", x"CC");

    signal CurrentState     : State_t                               := State_Reset;

    signal Valid            : STD_LOGIC                             := '0';
    signal Busy             : STD_LOGIC                             := '0';
    signal Strobe           : STD_LOGIC                             := '0';

    signal nReset_SR        : STD_LOGIC_VECTOR(1 downto 0)          := (others => '0');
    signal RxBuffer         : STD_LOGIC_VECTOR(7 downto 0)          := (others => '0');
    signal TxBuffer         : STD_LOGIC_VECTOR(7 downto 0)          := (others => '0');

    component SPI_Slave is
        Port (  Clock   : in STD_LOGIC;
                nReset  : in STD_LOGIC;
                Valid   : out STD_LOGIC;
                Busy    : out STD_LOGIC;
                Strobe  : in STD_LOGIC;
                Rx      : out STD_LOGIC_VECTOR(7 downto 0);
                Tx      : in STD_LOGIC_VECTOR(7 downto 0);
                nSS     : in STD_LOGIC;
                SCLK    : in STD_LOGIC;
                MOSI    : in STD_LOGIC;
                MISO    : out STD_LOGIC
                );
    end component;

    component HCSR04 is
        Port (  Clock           : in STD_LOGIC;
                nReset          : in STD_LOGIC;
                Start           : in STD_LOGIC;
                Busy            : out STD_LOGIC;
                Echo            : in STD_LOGIC;
                Trigger         : out STD_LOGIC;
                SignalTime      : out STD_LOGIC_VECTOR(15 downto 0)
                );
    end component;

begin

    Reset_Sync_Proc : process
    begin
        wait until rising_edge(Clock);
        nReset_SR(0) <= nReset;
        nReset_SR(1) <= nReset_SR(0);
    end process;

    Slave : SPI_Slave port map (Clock => Clock,
                                nReset => nReset_SR(1),
                                Valid => Valid,
                                Busy => Busy,
                                Strobe => Strobe,
                                Rx => RxBuffer,
                                Tx => TxBuffer,
                                nSS => nSS,
                                SCLK => SCLK,
                                MISO => MISO,
                                MOSI => MOSI
                                );

    State_Machine_Proc : process
    begin
        wait until rising_edge(Clock);

        case CurrentState is
            when State_Reset =>
                CurrentState <= State_WaitForReady;

            when State_WaitForReady =>
                Strobe <= '0';
                if(Busy = '1') then
                    CurrentState <= State_WaitForReady;
                else
                    TxBuffer <= x"AB";
                    CurrentState <= State_CopyData;
                end if;

            when State_CopyData =>
                Strobe <= '1';
                
                if(Busy = '1') then
                    CurrentState <= State_WaitForReady;
                else
                    CurrentState <= State_CopyData;
                end if;

            when others =>

        end case;
    end process;

--    US      : HCSR04 port map ( Clock => Clock1MHz,
--                                nReset => nReset_SR(1),
--                                Echo => Echo,
--                                Trigger => Trigger,
--                                Start => Config(0),
--                                Ready => Ready,
--                                SignalTime => SignalTime
--                                );

end Top_Arch;