----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         02.01.2023 13:43:46
-- Design Name:         
-- Module Name:         NEC_IR - NEC_IR_Arch
-- Project Name:        
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:       Vivado 2022.2
-- Description:         NEC IR receiver implementation
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

entity NEC_IR is
    Generic (   NEC_IR_SHORT       : INTEGER    := 562;         -- Duration of the leading low burst based on the input clock (562 us for 1 MHz)
                NEC_IR_LONG        : INTEGER    := 1687         -- Duration of the leading high burst for a logical '1' based on the input clock (1687 us for 1 MHz)
                );
    Port (  Clock    : in STD_LOGIC;                            -- 1 MHz clock input
            nReset   : in STD_LOGIC;                            -- Reset input for the logic (active low)
            IR       : in STD_LOGIC;                            -- Data input from the IR receiver
            Enable   : in STD_LOGIC;                            -- Enable signal for the data bus
            Busy     : out STD_LOGIC;                           -- Device busy output signal
            Valid    : out STD_LOGIC;                           -- Indication of valid data
            Repeat   : out STD_LOGIC;                           -- Receive indication for repeating codes
            Addr     : out STD_LOGIC_VECTOR(7 downto 0);        -- Address output from the receiver response
            Data     : out STD_LOGIC_VECTOR(7 downto 0)         -- Data output from the receiver response
            );
end NEC_IR;

architecture NEC_IR_Arch of NEC_IR is

    type IR_State_t is (STATE_WAIT_START, STATE_RECEIVE_LEADING_BURST, STATE_RECEIVE_SPACE, STATE_RECEIVE_ADDR, STATE_RECEIVE_INV_ADDR, STATE_RECEIVE_DATA, STATE_RECEIVE_INV_DATA, STATE_RECEIVE_STOP); 

    signal Valid_Int            : STD_LOGIC                     := '0';
    signal Repeat_Int           : STD_LOGIC                     := '0';

    signal IR_Data_SR           : STD_LOGIC_VECTOR(1 downto 0)  := (others => '1');
    signal Data_Int             : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
    signal Data_Inv             : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
    signal Addr_Int             : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
    signal Addr_Inv             : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');

    signal CurrentState         : IR_State_t                    := STATE_WAIT_START;

begin

    IR_Data_Sync_Proc : process
    begin
        wait until rising_edge(Clock);

        IR_Data_SR <= IR_Data_SR(0) & IR;

        if(nReset = '0') then
            IR_Data_SR <= (others => '0');
        end if;
    end process;

    IR_Rec_Proc : process
        variable Bits       : INTEGER                       := 0;
        variable Counter    : INTEGER                       := 0;
    begin
        wait until rising_edge(Clock);

        case CurrentState is
            when STATE_WAIT_START =>
                if(IR_Data_SR = "10") then
                    Counter := 0;
                    Bits := 0;
                    Repeat_Int <= '0';
                    CurrentState <= STATE_RECEIVE_LEADING_BURST;
                else
                    CurrentState <= STATE_WAIT_START;
                end if;

            when STATE_RECEIVE_LEADING_BURST =>
                if((Counter > (NEC_IR_SHORT * 16)) and (IR_Data_SR = "01")) then
                    Counter := 0;
                    CurrentState <= STATE_RECEIVE_SPACE;
                else
                    Counter := Counter + 1;
                    CurrentState <= STATE_RECEIVE_LEADING_BURST;
                end if;

            when STATE_RECEIVE_SPACE =>
                if((Counter > (NEC_IR_SHORT * 8)) and (IR_Data_SR = "10")) then
                    Counter := 0;
                    CurrentState <= STATE_RECEIVE_ADDR;
                -- We have received a repeat signal here
                elsif((Counter > (NEC_IR_LONG + NEC_IR_SHORT + NEC_IR_SHORT)) and (IR_Data_SR = "01")) then
                    Repeat_Int <= '1';
                    CurrentState <= STATE_WAIT_START;
                else
                    Counter := Counter + 1;
                    CurrentState <= STATE_RECEIVE_SPACE;
                end if;

            when STATE_RECEIVE_ADDR =>
                Counter := Counter + 1;
 
                if(IR_Data_SR = "10") then
                    if(Counter > (NEC_IR_SHORT + NEC_IR_LONG)) then
                        Addr_Int <= '1' & Addr_Int((Addr_Int'Length - 1) downto 1);
                    else
                        Addr_Int <= '0' & Addr_Int((Addr_Int'Length - 1) downto 1);
                    end if;

                    Counter := 0;

                    if(Bits < (Addr_Int'Length - 1)) then
                        Bits := Bits + 1;
                        CurrentState <= STATE_RECEIVE_ADDR;
                    else
                        Bits := 0;
                        CurrentState <= STATE_RECEIVE_INV_ADDR;
                    end if;
                end if;

            when STATE_RECEIVE_INV_ADDR =>
                Counter := Counter + 1;
 
                if(IR_Data_SR = "10") then
                    if(Counter > (NEC_IR_SHORT + NEC_IR_LONG)) then
                        Addr_Inv <= '1' & Addr_Inv((Addr_Inv'Length - 1) downto 1);
                    else
                        Addr_Inv <= '0' & Addr_Inv((Addr_Inv'Length - 1) downto 1);
                    end if;

                    Counter := 0;

                    if(Bits < (Addr_Inv'Length - 1)) then
                        Bits := Bits + 1;
                        CurrentState <= STATE_RECEIVE_INV_ADDR;
                    else
                        Bits := 0;
                        CurrentState <= STATE_RECEIVE_DATA;
                    end if;
                end if;

            when STATE_RECEIVE_DATA =>
                Counter := Counter + 1;
 
                if(IR_Data_SR = "10") then
                    if(Counter > (NEC_IR_SHORT + NEC_IR_LONG)) then
                        Data_Int <= '1' & Data_Int((Data_Int'Length - 1) downto 1);
                    else
                        Data_Int <= '0' & Data_Int((Data_Int'Length - 1) downto 1);
                    end if;

                    Counter := 0;

                    if(Bits < (Data_Int'Length - 1)) then
                        Bits := Bits + 1;
                        CurrentState <= STATE_RECEIVE_DATA;
                    else
                        Bits := 0;
                        CurrentState <= STATE_RECEIVE_INV_DATA;
                    end if;
                end if;

            when STATE_RECEIVE_INV_DATA =>
                Counter := Counter + 1;
 
                if(IR_Data_SR = "10") then
                    if(Counter > (NEC_IR_SHORT + NEC_IR_LONG)) then
                        Data_Inv <= '1' & Data_Inv((Data_Inv'Length - 1) downto 1);
                    else
                        Data_Inv <= '0' & Data_Inv((Data_Inv'Length - 1) downto 1);
                    end if;

                    Counter := 0;

                    if(Bits < (Data_Inv'Length - 1)) then
                        Bits := Bits + 1;
                        CurrentState <= STATE_RECEIVE_INV_DATA;
                    else
                        Bits := 0;
                        CurrentState <= STATE_RECEIVE_STOP;
                    end if;
                end if;

            when STATE_RECEIVE_STOP =>
                Counter := Counter + 1;

                if(Counter > NEC_IR_SHORT) then
                    CurrentState <= STATE_WAIT_START;
                else
                    CurrentState <= STATE_RECEIVE_STOP;
                end if;
        end case;

        if(nReset = '0') then
            Data_Int <= (others => '0');
            Addr_Int <= (others => '0');
            Data_Inv <= (others => '0');
            Addr_Inv <= (others => '0');
            CurrentState <= STATE_WAIT_START;
        end if;
    end process;

    -- The data are valid when the address and the inverted address and the data and the inverted data are equal
    Valid_Int <= '1' when ((Addr_Int = (not Addr_Inv)) and (Data_Int = (not Data_Inv))) else '0';

    -- Output the data on the data bus when the bus is enabled
    Data <= Data_Int when (Enable = '1') else (others => 'Z');

    -- The device is busy as soon as the device has detected the start pulse
    Busy <= '0' when (CurrentState = STATE_WAIT_START) else '1';

    Valid <= Valid_Int;
    Repeat <= Repeat_Int;

end NEC_IR_Arch;