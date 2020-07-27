----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         20.06.2020 09:00:02
-- Design Name: 
-- Module Name:         Top - Top_Arch
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions: 		Vivado 2020.1
-- Description:         AXI-Stream slave implementation from
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
    Generic (   FIFO_SIZE   : INTEGER := 32
                );
    Port (  ACLK        : in STD_LOGIC;
            ARESETn     : in STD_LOGIC;
            TDATA_RXD   : in STD_LOGIC_VECTOR(31 downto 0);
            TREADY_RXD  : out STD_LOGIC;
            TVALID_RXD  : in STD_LOGIC;
            TLAST_RXD   : in STD_LOGIC;
            Index       : in STD_LOGIC_VECTOR(4 downto 0);
            DataOut     : out STD_LOGIC_VECTOR(31 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    type State_t is (Reset, Ready, WaitForValid);
    type FIFO_t is array(0 to (FIFO_SIZE - 1)) of STD_LOGIC_VECTOR(31 downto 0);

    signal NextState        : State_t   := Reset;

    signal FIFO             : FIFO_t    := (others => (others => '0'));
    signal FIFO_Counter     : INTEGER   := 0;

begin

    process
    begin
        wait until rising_edge(ACLK);

        if(ARESETn = '0') then
            NextState <= Reset;
        else
            case NextState is
                when Reset =>
                    FIFO <= (others => (others => '0'));
                    FIFO_Counter <= 0;
                    NextState <= Ready;

            when Ready =>
                TREADY_RXD <= '1';
                NextState <= WaitForValid;

            when WaitForValid =>
                if(TVALID_RXD = '1') then
                    TREADY_RXD <= '0';
                    FIFO(FIFO_Counter) <= TDATA_RXD;
                            
                    if((FIFO_Counter = (FIFO_SIZE - 1)) or (TLAST_RXD = '1')) then
                        FIFO_Counter <= 0;
                    else
                        FIFO_Counter <= FIFO_Counter + 1;
                    end if;
                            
                    NextState <= Ready;
                else
                    NextState <= WaitForValid;
                end if;

            end case;
        end if;
    end process;

    DataOut <= FIFO(to_integer(UNSIGNED(Index)));
end Top_Arch;