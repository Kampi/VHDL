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
            
            ReadyIn     : in STD_LOGIC;
            DataOut     : out STD_LOGIC_VECTOR(31 downto 0)
            );
end AXIS_I2S;

architecture AXIS_I2S_Arch of AXIS_I2S is

    type AXIS_State_t is (State_Reset, State_WaitForTransmitterReady, WaitForValid, State_WaitForTransmitterBusy);

    signal CurrentState : AXIS_State_t                                          := State_Reset;

    signal FIFO_AXI             : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);
    signal Valid_AXI            : STD_LOGIC := '0';
    signal Ready_AXI            : STD_LOGIC;
    
    signal FIFO_Transmitter     : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);
    signal Valid_Transmitter    : STD_LOGIC := '0';
    signal Ready_Transmitter    : STD_LOGIC;

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
                                                Valid => '1',
                                                Ready => Ready_Transmitter,
                                                Data => FIFO_Transmitter,
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
                                                src_in_bin => FIFO_AXI,
                                                dest_clk => MCLK,
                                                dest_out_bin => FIFO_Transmitter
                                                );

   xpm_cdc_Ready : xpm_cdc_single generic map(  DEST_SYNC_FF => 4,
                                                SRC_INPUT_REG => 1
                                                )
                                    port map (  src_clk => MCLK,
                                                src_in => Ready_Transmitter,
                                                dest_clk => aclk,
                                                dest_out => Ready_AXI
                                                );

   xpm_cdc_Valid : xpm_cdc_single generic map(  DEST_SYNC_FF => 4,
                                                SRC_INPUT_REG => 1
                                                )
                                    port map (  src_clk => aclk,
                                                src_in => Valid_AXI,
                                                dest_clk => MCLK,
                                                dest_out => Valid_Transmitter
                                                );

    process(aclk)
    begin
        if(rising_edge(aclk)) then
            if(aresetn = '0') then
                CurrentState <= State_Reset;
            else
                case CurrentState is
                    when State_Reset =>
                        FIFO_AXI <= (others => '0');

                        CurrentState <= WaitForValid;

                    when WaitForValid =>
                        Valid_AXI <= '0';
                        TREADY_RXD <= '1';
                        
                        if(TVALID_RXD = '1') then
                            FIFO_AXI <= TDATA_RXD;
                            CurrentState <= State_WaitForTransmitterReady;
                        else
                            CurrentState <= WaitForValid;
                        end if;

                    when State_WaitForTransmitterReady =>
                        Valid_AXI <= '1';
                        TREADY_RXD <= '0';
                        
                        if(Ready_AXI = '1') then
                            CurrentState <= State_WaitForTransmitterBusy;
                        else
                            CurrentState <= State_WaitForTransmitterReady;
                        end if;

                    when State_WaitForTransmitterBusy =>
                        if(Ready_AXI = '0') then
                            CurrentState <= WaitForValid;
                        else
                            CurrentState <= State_WaitForTransmitterBusy;
                        end if;

                end case;
            end if;
        end if;
    end process;
    
    DataOut <= FIFO_AXI;
    
end AXIS_I2S_Arch;