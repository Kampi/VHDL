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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is
    Port (  Clock   : in STD_LOGIC;
            nReset  : in STD_LOGIC;
            SCLK    : in STD_LOGIC;
            MISO    : in STD_LOGIC;
            CS      : in STD_LOGIC;
            MOSI    : out STD_LOGIC;
            DataOut : out STD_LOGIC_VECTOR(3 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    type State_t is (State_Reset, State_LoadWord, State_TransmitWord);

    signal CurrentState     : State_t                                       := State_Reset;

begin

    process
    begin
        wait until rising_edge(Clock);

        case CurrentState is
            when State_Reset =>
                BitCounter := 0;

        end case;
    
        if(nReset = '0') then
            CurrentState <= State_Reset;        
        end if;
    end process;

end Top_Arch;