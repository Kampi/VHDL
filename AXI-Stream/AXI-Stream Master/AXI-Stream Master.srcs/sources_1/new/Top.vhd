----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         20.06.2020 09:00:02
-- Design Name: 
-- Module Name:         Top - Top_Arch
-- Project Name: 
-- Target Devices:  	XC7Z010CLG400-1
-- Tool Versions: 		Vivado 2020.1
-- Description: 		AXI-Stream master implementation from
--                      https://www.kampis-elektroecke.de/2020/04/axi-stream-interface/
-- Dependencies: 
-- 
-- Revision:
--  Revision            0.01 - File Created
--  Revision            0.02 - Migrate to Vivado 2020.1
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
    Generic (   LENGTH  : INTEGER := 100
                );
    Port (  ACLK        : in STD_LOGIC;
            ARESETn     : in STD_LOGIC;
            Trigger     : in STD_LOGIC;
            TDATA_TXD   : out STD_LOGIC_VECTOR(31 downto 0);
            TREADY_TXD  : in STD_LOGIC;
            TVALID_TXD  : out STD_LOGIC;
            TLAST_TXD   : out STD_LOGIC
            );
end Top;

architecture Top_Arch of Top is

    type State_t is (Reset, WaitForTriggerHigh, WaitForTriggerLow, WaitForReady, WaitForSlave);

    signal CurrentState     : State_t   := Reset;

    signal Counter          : INTEGER   := 0;

begin

    process
    begin
        wait until rising_edge(ACLK);
        
        if(ARESETn = '0') then
            CurrentState <= Reset;
        else
            case CurrentState is
                when Reset =>
                    Counter <= 0;
                    TDATA_TXD <= (others => '0');
                    TVALID_TXD <= '0';
                    TLAST_TXD <= '0';
                    CurrentState <= WaitForTriggerHigh;

                when WaitForTriggerHigh =>
                    if(Trigger = '1') then
                        CurrentState <= WaitForTriggerLow;
                    else
                        CurrentState <= WaitForTriggerHigh;
                    end if;
                   
                when WaitForTriggerLow =>
                    if(Trigger = '0') then
                        CurrentState <= WaitForReady;
                    else
                        CurrentState <= WaitForTriggerLow;
                    end if;                 

                when WaitForReady =>
                    TDATA_TXD <= std_logic_vector(to_unsigned(Counter, 32));
                    TVALID_TXD <= '1';
                        
                    if(Counter < (LENGTH - 1)) then
                        TLAST_TXD <= '0';
                    else
                        TLAST_TXD <= '1';
                    end if;

                    CurrentState <= WaitForSlave;

                when WaitForSlave =>
                    if(TREADY_TXD = '1') then
                        TVALID_TXD <= '0';
                        TLAST_TXD <= '0';
                            
                        if(Counter < (LENGTH - 1)) then
                            Counter <= Counter + 1;
                            CurrentState <= WaitForReady;
                        else
                            Counter <= 0;
                            CurrentState <= WaitForTriggerHigh;
                        end if;
                    else
                        CurrentState <= WaitForSlave;
                    end if;
            end case;
        end if;
    end process;
end Top_Arch;