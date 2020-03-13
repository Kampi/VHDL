----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         13.03.2020 11:44:07
-- Design Name: 
-- Module Name:         AXIS_I2S - AXIS_I2S_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 		Vivado 2019.2
-- Description:         AXI-Stream wrapper for the I2S transmitter.
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

entity AXIS_I2S is
    Generic (   MULT        : INTEGER := 8;
                WIDTH       : INTEGER := 16;
                FIFO_SIZE   : INTEGER := 32
                );
    Port (  aclk        : in STD_LOGIC;
            aresetn     : in STD_LOGIC;

            -- AXI-Stream interface
            TDATA_RXD   : in STD_LOGIC_VECTOR(31 downto 0);
            TREADY_RXD  : out STD_LOGIC;
            TVALID_RXD  : in STD_LOGIC;

            -- I2S interface
            MCLK        : in STD_LOGIC;
            LRCLK       : out STD_LOGIC;
            SCLK        : out STD_LOGIC;
            SD          : out STD_LOGIC        
            );
end AXIS_I2S;

architecture AXIS_I2S_Arch of AXIS_I2S is

    type AXIS_State_t is (State_Reset, State_WaitForTransmitterReady, WaitForValid, WaitForBusy);

    signal CurrentState : AXIS_State_t   := State_Reset;

    signal FIFO             : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0) := (others => '0');

    signal Valid            : STD_LOGIC := '0';
    signal TransmitterReady : STD_LOGIC;

    component I2S_Transmitter is
        Generic (   MULT    : INTEGER := 4;
                    WIDTH   : INTEGER := 16
                  );
        Port (  MCLK    : in STD_LOGIC;
                ResetN  : in STD_LOGIC;
                Ready   : out STD_LOGIC;
                Valid   : in STD_LOGIC;
                Data    : in STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);
                LRCLK   : out STD_LOGIC;
                SCLK    : out STD_LOGIC;
                SD      : out STD_LOGIC
                );
    end component;

begin

    Transmitter : I2S_Transmitter generic map(  MULT => MULT,
                                                WIDTH => WIDTH
                                                )
                                  port map(     MCLK => MCLK,
                                                ResetN => aresetn,
                                                Valid => Valid,
                                                Ready => TransmitterReady,
                                                Data => FIFO,
                                                LRCLK => LRCLK,
                                                SCLK => SCLK,
                                                SD => SD
                                                );

    -- AXI-Stream state machine
    process(aclk)
    begin
        if(rising_edge(aclk)) then
            if(aresetn = '0') then
                CurrentState <= State_Reset;
            else
                case CurrentState is
                    when State_Reset =>
                        FIFO <= (others => '0');
                        Valid <= '0';

                        CurrentState <= State_WaitForTransmitterReady;

                    when State_WaitForTransmitterReady =>
                        Valid <= '0';

                        if(TransmitterReady = '1') then
                            CurrentState <= WaitForValid;
                        else
                            CurrentState <= State_WaitForTransmitterReady;
                        end if;

                    when WaitForValid =>
                        TREADY_RXD <= '1';
                        
                        if(TVALID_RXD = '1') then
                            FIFO <= TDATA_RXD;
                            CurrentState <= WaitForBusy;
                        else
                            CurrentState <= WaitForValid;
                        end if;

                    when WaitForBusy =>
                        Valid <= '1';
                        TREADY_RXD <= '0';

                        if(TransmitterReady = '0') then
                            CurrentState <= State_WaitForTransmitterReady;
                        else
                            CurrentState <= WaitForBusy;
                        end if;

                end case;
            end if;
        end if;
    end process;
end AXIS_I2S_Arch;