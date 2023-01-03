----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         02.01.2023 14:02:28
-- Design Name:         
-- Module Name:         NEC_IR_TB - NEC_IR_TB_Arch
-- Project Name:        
-- Target Devices:      
-- Tool Versions:       Vivado 2022.2
-- Description:         Testbench for the NEC IR receiver
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

entity NEC_IR_TB is
end NEC_IR_TB;

architecture NEC_IR_TB_Arch of NEC_IR_TB is

    procedure IR_TransmitRepeat(    signal IR_Data      : out STD_LOGIC) is
    begin
        -- Transmit the start pulse (min. 9 ms zero)
        IR_Data <= '0';
        wait for 9020us;

        -- Transmit the start space (min 2.25 ms high)
        IR_Data <= '1';
        wait for 2260us;

        -- Transmit the stop signal
        IR_Data <= '0';
        wait for 570us;
        IR_Data <= '1';
    end procedure;

    procedure IR_TransmitData(  signal Address      : in STD_LOGIC_VECTOR(7 downto 0);
                                signal Data         : in STD_LOGIC_VECTOR(7 downto 0); 
                                signal IR_Data      : out STD_LOGIC) is
    begin
        wait for 1 ns;

        -- Transmit the start pulse (min. 9 ms zero)
        IR_Data <= '0';
        wait for 9020us;

        -- Transmit the start space (min 4.5 ms high)
        IR_Data <= '1';
        wait for 4520us;

        -- Transmit the address
        for i in 0 to (Address'length - 1) loop
            IR_Data <= '0';
            wait for 570us;

            IR_Data <= '1';
            if(Address(i) = '0') then
                wait for 570us;
            else
                IR_Data <= '1';
                wait for 1700us;
            end if;
        end loop;

        -- Transmit the inverted address
        for i in 0 to (Address'length - 1) loop
            IR_Data <= '0';
            wait for 570us;

            IR_Data <= '1';
            if(Address(i) = '0') then
                wait for 1700us;
            else
                IR_Data <= '1';
                wait for 570us;
            end if;
        end loop;

        -- Transmit the data
        for i in 0 to (Data'length - 1) loop
            IR_Data <= '0';
            wait for 570us;

            IR_Data <= '1';
            if(Data(i) = '0') then
                wait for 570us;
            else
                IR_Data <= '1';
                wait for 1700us;
            end if;
        end loop;

        -- Transmit the inverted data
        for i in 0 to (Data'length - 1) loop
            IR_Data <= '0';
            wait for 570us;

            IR_Data <= '1';
            if(Data(i) = '0') then
                wait for 1700us;
            else
                IR_Data <= '1';
                wait for 570us;
            end if;
        end loop;

        -- Transmit the stop signal
        IR_Data <= '0';
        wait for 570us;
        IR_Data <= '1';
    end procedure;

    -- 1 MHz Clock
    constant CLOCKPERIODE   : TIME                          := 1000 ns;

    signal SimulationClock  : STD_LOGIC                     := '0';
    signal SimulationResetN : STD_LOGIC                     := '1';

    signal IR_Data          : STD_LOGIC                     := '1';

    signal Repeat           : STD_LOGIC;
    signal Valid            : STD_LOGIC;
    signal Data             : STD_LOGIC_VECTOR(7 downto 0);
    signal Addr             : STD_LOGIC_VECTOR(7 downto 0);
    signal TransmitData     : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
    signal TransmitAddr     : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');

    component NEC_IR is
        Port (  Clock   : in STD_LOGIC;
                nReset  : in STD_LOGIC;
                IR      : in STD_LOGIC;
                Busy    : out STD_LOGIC;
                Valid   : out STD_LOGIC;
                Repeat  : out STD_LOGIC;
                Addr    : out STD_LOGIC_VECTOR(7 downto 0);
                Data    : out STD_LOGIC_VECTOR(7 downto 0)
                );
    end component;

begin

    -- Clock generation
    process begin
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '1';
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '0';
    end process;

    DUT : NEC_IR port map (  Clock => SimulationClock,
                             nReset => SimulationResetN,
                             Valid => Valid,
                             IR => IR_Data,
                             Repeat => Repeat,
                             Addr => Addr,
                             Data => Data
                             );

    Stimulus : process
    begin
        wait for 1000us;

        TransmitData <= x"AA";
        TransmitAddr <= x"05";

        IR_TransmitData(TransmitAddr, TransmitData, IR_Data);
        wait for 40500us;
        IR_TransmitRepeat(IR_Data);
        wait for 40500us;
        IR_TransmitRepeat(IR_Data);
        wait;
   end process;

end NEC_IR_TB_Arch;