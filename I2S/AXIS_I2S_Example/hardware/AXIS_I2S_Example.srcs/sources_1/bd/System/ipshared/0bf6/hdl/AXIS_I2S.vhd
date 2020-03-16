----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         04.03.2020 09:00:02
-- Design Name: 
-- Module Name:         AXIS_I2S - AXIS_I2S_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 		Vivado 2019.2
-- Description:         AXI-Stream I2S transmitter IP core.
--
-- Dependencies: 
-- 
-- Revision:
--      Revision        0.01 - File Created
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

Library xpm;
use xpm.vcomponents.all;

entity AXIS_I2S is
    Generic (   WIDTH       : INTEGER := 16
                );
    Port (  Audio_Reset : in STD_LOGIC;

            -- AXI-Stream interface
            aclk        : in STD_LOGIC;
            aresetn     : in STD_LOGIC;
            TDATA_RXD   : in STD_LOGIC_VECTOR(31 downto 0);
            TREADY_RXD  : out STD_LOGIC;
            TVALID_RXD  : in STD_LOGIC;

            -- I2S interface
            MCLK        : in STD_LOGIC;
            LRCLK       : out STD_LOGIC;
            SCLK        : out STD_LOGIC;
            SD          : out STD_LOGIC;
            
            DataOut     : out STD_LOGIC_VECTOR(31 downto 0)
            );
end AXIS_I2S;

architecture AXIS_I2S_Arch of AXIS_I2S is

    type AXIS_State_t is (State_Reset, State_WaitForTransmitterReady, WaitForValid, WaitForBusy);

    signal CurrentState : AXIS_State_t                                          := State_Reset;

    signal FIFO                 : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);
    signal TransmitterFIFO      : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);

    signal TransmitterValid     : STD_LOGIC_VECTOR(2 downto 0);
    signal TransmitterReady     : STD_LOGIC_VECTOR(2 downto 0);

    component I2S_Transmitter is
        Generic (   WIDTH   : INTEGER := 16
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

    Transmitter : I2S_Transmitter generic map(  WIDTH => WIDTH
                                                )
                                  port map(     MCLK => MCLK,
                                                ResetN => Audio_Reset,
                                                Valid => TransmitterValid(1),
                                                Ready => TransmitterReady(0),
                                                Data => TransmitterFIFO,
                                                LRCLK => LRCLK,
                                                SCLK => SCLK,
                                                SD => SD
                                                );

   xpm_cdc_Data : xpm_cdc_gray generic map( DEST_SYNC_FF => 4,
                                            SIM_ASSERT_CHK => 0,
                                            SIM_LOSSLESS_GRAY_CHK => 0,
                                            WIDTH => (2 * WIDTH)
                                            )
                                    port map (  src_clk => aclk,
                                                dest_clk => MCLK,
                                                src_in_bin => FIFO,
                                                dest_out_bin => TransmitterFIFO
                                                );

   xpm_cdc_Ready : xpm_cdc_single generic map(  DEST_SYNC_FF => 4,
                                                SRC_INPUT_REG => 1
                                                )
                                    port map (  src_clk => MCLK,
                                                dest_clk => aclk,
                                                src_in => TransmitterReady(0),
                                                dest_out => TransmitterReady(1)
                                                );

   xpm_cdc_Valid : xpm_cdc_single generic map(  DEST_SYNC_FF => 4,
                                                SRC_INPUT_REG => 1
                                                )
                                    port map (  src_clk => aclk,
                                                dest_clk => MCLK,
                                                src_in => TransmitterValid(0),
                                                dest_out => TransmitterValid(1)
                                                );

    process(aclk)
    begin
        if(rising_edge(aclk)) then
            if(aresetn = '0') then
                CurrentState <= State_Reset;
            else
                case CurrentState is
                    when State_Reset =>
                        FIFO <= (others => '0');
                        TransmitterValid(0) <= '0';

                        CurrentState <= State_WaitForTransmitterReady;

                    when State_WaitForTransmitterReady =>
                        TransmitterValid(0) <= '0';

                        if(TransmitterReady(1) = '1') then
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
                        TransmitterValid(0) <= '1';
                        TREADY_RXD <= '0';

                        if(TransmitterReady(1) = '0') then
                            CurrentState <= State_WaitForTransmitterReady;
                        else
                            CurrentState <= WaitForBusy;
                        end if;

                end case;
            end if;
        end if;
    end process;
    
    DataOut <= FIFO;
end AXIS_I2S_Arch;