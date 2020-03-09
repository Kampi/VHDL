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
-- Description:         AXI-Stream Slave implementation from
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is
    Generic (   FIFO_SIZE   : INTEGER := 32
                );
    Port (  clk         : in STD_LOGIC;
            resetn      : in STD_LOGIC;

            -- Transmission interface
            TDATA_RXD   : in STD_LOGIC_VECTOR(31 downto 0);
            TREADY_RXD  : out STD_LOGIC;
            TVALID_RXD  : in STD_LOGIC;
            TLAST_RXD   : in STD_LOGIC;
            
            DataOut     : out STD_LOGIC_VECTOR(31 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    type State_t is (Reset, Ready);
    type FIFO_t is array(0 to (FIFO_SIZE - 1)) of STD_LOGIC_VECTOR(31 downto 0);

    signal TransmitState    : State_t   := Reset;

    signal FIFO             : FIFO_t    := (others => (others => '0'));
    signal FIFO_Counter     : INTEGER   := 0;

begin

    -- Data transmission path
    process(clk, resetn)
    begin
        if(rising_edge(clk)) then
            if(resetn = '0') then
                TransmitState <= Reset;
            else
                case TransmitState is

                    when Reset =>
                        FIFO <= (others => (others => '0'));
                        FIFO_Counter <= 0;
                        TransmitState <= Ready;

                    when Ready =>
                        if(TVALID_RXD = '1') then
                            TREADY_RXD <= '0';
                            
                            FIFO(FIFO_Counter) <= TDATA_RXD;

                            if((FIFO_Counter = (FIFO_SIZE - 1)) or (TLAST_RXD = '1')) then
                                FIFO_Counter <= 0;
                            else
                                FIFO_Counter <= FIFO_Counter + 1;
                            end if;
                        else
                            TREADY_RXD <= '1';
                        end if;
                        
                        TransmitState <= Ready;

                end case;
            end if;
        end if;
    end process;

    DataOut <= FIFO(0);
end Top_Arch;