----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         04.03.2020 09:00:02
-- Design Name: 
-- Module Name:         Top - Top_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 		Vivado 2019.2
-- Description: 		AXI-Stream Master implementation from
--                      <>
-- Dependencies: 
-- 
-- Revision:
--      Revision 0.01 - File Created
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

entity Top is
    Port (  clk         : in STD_LOGIC;
            resetn      : in STD_LOGIC;
            
            Trigger      : in STD_LOGIC;

            -- AXI-Stream Interface
            TDATA_TXD   : out STD_LOGIC_VECTOR(31 downto 0);
            TREADY_TXD  : in STD_LOGIC;
            TVALID_TXD  : out STD_LOGIC;
            TLAST_TXD   : out STD_LOGIC
            );
end Top;

architecture Top_Arch of Top is

    type State_t is (Reset, WaitForTriggerHigh, WaitForTriggerLow, WaitForReady, WaitForSlave);

    signal TransmitState    : State_t   := Reset;

    signal Counter          : INTEGER   := 0;

begin

    process(clk, resetn)
    begin
        if(rising_edge(clk)) then
            if(resetn = '0') then
                TransmitState <= Reset;
            else
                case TransmitState is

                    when Reset =>
                        Counter <= 0;
                        TDATA_TXD <= (others => '0');
                        TVALID_TXD <= '0';
                        TLAST_TXD <= '0';
                        TransmitState <= WaitForTriggerHigh;

                    when WaitForTriggerHigh =>
                        if(Trigger = '1') then
                            TransmitState <= WaitForTriggerLow;
                        else
                            TransmitState <= WaitForTriggerHigh;
                        end if;
                   
                    when WaitForTriggerLow =>
                        if(Trigger = '0') then
                            TransmitState <= WaitForReady;
                        else
                            TransmitState <= WaitForTriggerLow;
                        end if;                 

                    when WaitForReady =>
                        TDATA_TXD <= STD_LOGIC_VECTOR(to_unsigned(Counter, 32));
                        TVALID_TXD <= '1';
                        
                        if(Counter < 99) then
                            TLAST_TXD <= '0';
                        else
                            TLAST_TXD <= '1';
                        end if;

                        TransmitState <= WaitForSlave;

                    when WaitForSlave =>
                        if(TREADY_TXD = '1') then
                            TVALID_TXD <= '0';
                            TLAST_TXD <= '0';
                            
                            if(Counter < 99) then
                                Counter <= Counter + 1;
                                TransmitState <= WaitForReady;
                            else
                                Counter <= 0;
                                TransmitState <= WaitForTriggerHigh;
                            end if;
                        else
                            TransmitState <= WaitForSlave;
                        end if;
                end case;
            end if;
        end if;
    end process;
end Top_Arch;