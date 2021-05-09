----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         30.03.2021 13:30:59
-- Design Name: 
-- Module Name:         PS2_Interface - PS2_Interface_Arch
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:   	Vivado 2020.2
-- Description:         PS/2 interface implementation.
-- 
-- Dependencies: 
-- 
-- Revision:
--  Revision            0.01 - File Created
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

entity PS2_Interface is
    Generic (   TIMEOUT : INTEGER       := 250000
                );
    Port (  Clock       : in STD_LOGIC;
            nReset      : in STD_LOGIC;

            -- PS/2 interface signals
            PS2_Clk     : in STD_LOGIC;
            PS2_Data    : in STD_LOGIC;

            Valid       : in STD_LOGIC;
            RxComplete  : out STD_LOGIC;
            Busy        : out STD_LOGIC;

            RxData      : out STD_LOGIC_VECTOR(7 downto 0)
            );
end PS2_Interface;

architecture PS2_Interface_Arch of PS2_Interface is

    type PS2_State_t is (STATE_WAIT_START, STATE_RECEIVE, STATE_DATA_READY); 

    signal PS2_DataSR   : STD_LOGIC_VECTOR(1 downto 0)  := (others => '1');
    signal PS2_ClkSR    : STD_LOGIC_VECTOR(1 downto 0)  := (others => '1');
    signal PS2_Buffer   : STD_LOGIC_VECTOR(10 downto 0) := (others => '1');

    signal CurrentState : PS2_State_t                   := STATE_WAIT_START;
    
begin

    PS2_Shift_Proc : process
        variable TimeoutCounter : INTEGER := 0;
    begin
        wait until rising_edge(Clock);

        PS2_DataSR <= PS2_DataSR(0) & PS2_Data;
        PS2_ClkSR <= PS2_ClkSR(0) & PS2_Clk;

        -- Waiting for a falling clock edge on
        if(PS2_ClkSR = "10") then
            PS2_Buffer <= PS2_DataSR(1) & PS2_Buffer(10 downto 1);
        end if;

        case CurrentState is
            when STATE_WAIT_START =>
                -- Wait for the START bit
                if((PS2_DataSR(1) = '0') and (PS2_ClkSR(1) = '1')) then
                    TimeoutCounter := TIMEOUT;
                    RxData <= (others => '0');

                    CurrentState <= STATE_RECEIVE;
                else
                    CurrentState <= STATE_WAIT_START;
                end if;

            when STATE_RECEIVE =>
                -- Wait for the STOP bit
                if(PS2_Buffer(0) = '0') then
                    RxData <= PS2_Buffer(8 downto 1);

                    CurrentState <= STATE_DATA_READY;
                -- Handle the timeout
                elsif(Timeout = 0) then
                    PS2_Buffer <= (others => '1');

                    CurrentState <= STATE_WAIT_START;
                else
                    TimeoutCounter := Timeout - 1;

                    CurrentState <= STATE_RECEIVE;
                end if;

            when STATE_DATA_READY =>
                if(Valid = '1') then
                    PS2_Buffer <= (others => '1');

                    CurrentState <= STATE_WAIT_START;
                else
                    CurrentState <= STATE_DATA_READY;
                end if;

        end case;

        if(nReset = '0') then
            PS2_Buffer <= (others => '0');

            CurrentState <= STATE_WAIT_START;
        end if;
    end process;

    -- BUSY signal
    --  The interface is busy until the state machine leaves the "RECEIVE" state
    Busy <= '1' when (CurrentState = STATE_RECEIVE) else '0';

    -- RXCOMPLETE signal
    --  Receive is complete when the state machine enters the "READY" state
    RxComplete <= '1' when (CurrentState = STATE_DATA_READY) else '0';

end PS2_Interface_Arch;
