----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert          
-- 
-- Create Date:         28.01.2020 19:54:00
-- Design Name: 
-- Module Name:         I2S - I2S_Arch
-- Project Name: 
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         I2S transmitter top level module.
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

entity I2S is
    Generic ( WIDTH  : INTEGER := 16;                                       -- Data width per channel
              RATIO  : INTEGER := 256;                                      -- MCLK / L/R clock split ratio
              FIFO_WIDTH    : INTEGER := 8                                  -- FIFO depth in samples
              );
    Port (  ACLK     : in STD_LOGIC;                                        -- Logic clock
            ARESETn  : in STD_LOGIC;                                        -- Reset (active low)
            
            -- AXI4 Stream interface
            TDATA    : in STD_LOGIC_VECTOR(((WIDTH * 2) - 1) downto 0);     -- The primary payload that is used to provide the data
            TREADY   : out STD_LOGIC;                                       -- Indicates that the slave can accept a transfer in the
                                                                            -- current cycle
            TVALID   : in STD_LOGIC;                                        -- Indicates that the master is driving a valid transfer
            TLAST    : in STD_LOGIC;                                        -- Indicates the boundary of a packet
            
            -- I2S interface
            MCLK     : in STD_LOGIC;                                        -- Master audio clock. Must be an integer ration of the
                                                                            -- L/R clock signal
            LRCLK    : out STD_LOGIC;                                       -- L/R clock for the I2S protocol
            SCLK     : out STD_LOGIC;                                       -- I2S clock signal
            SD       : out STD_LOGIC                                        -- I2S data signal
            );
end I2S;

architecture I2S_Arch of I2S is

    type FIFO_STATE_t is (Reset, WaitForValid, ACKData, Full_FIFO_0, Full_FIFO_1);
    type I2S_STATE_t is (Reset, WaitForFIFO, WaitForSync, LoadData, StartTransmission);
    type MEMORY_t is array(0 to (FIFO_WIDTH - 1)) of STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);

    signal FIFOState    : FIFO_STATE_t := Reset;
    signal I2SState     : I2S_STATE_t := Reset;
    signal FIFO_0       : MEMORY_t := (others => (others => '0')); 
    signal FIFO_1       : MEMORY_t := (others => (others => '0')); 

    signal BitCounter   : INTEGER := 0;
    signal BytesInFIFO_0: INTEGER := 0;
    signal BytesInFIFO_1: INTEGER := 0;
    signal ReadCounter  : INTEGER := 0;

    signal TREADY_Int       : STD_LOGIC := '0';
    signal AudioClock       : STD_LOGIC := '0';
    signal FIFO_0_Full      : STD_LOGIC := '0';
    signal FIFO_1_Full      : STD_LOGIC := '0';
    
    signal AudioData    : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0) := (others => '0');
 
    component I2S_Transmitter is
        Generic ( WIDTH  : INTEGER := 24
                  );
        Port (  CLK      : in STD_LOGIC;
                RESETn   : in STD_LOGIC;
                Data     : in STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);
                LRCLK    : out STD_LOGIC;
                SCLK     : out STD_LOGIC;
                SD       : out STD_LOGIC;
                BitCounter : out INTEGER
                );
    end component;

begin

    Transmitter : I2S_Transmitter generic map ( WIDTH => WIDTH 
                                                )
                                  port map ( CLK => AudioClock,
                                             RESETn => ARESETn,
                                             Data => AudioData,
                                             LRCLK => LRCLK,
                                             SCLK => SCLK,
                                             SD => SD,
                                             BitCounter => BitCounter
                                             );

    -- I2S clock generation
    process(MCLK)
        variable Counter : INTEGER := 0;
    begin
        if(rising_edge(MCLK)) then
            if(ARESETn = '0') then
               Counter := 0;
            else
                if(Counter = ((RATIO / (4 * WIDTH)) - 1)) then
                    Counter := 0;
                    AudioClock <= not AudioClock;
                else
                    Counter := Counter + 1;
                end if;
            end if;
        end if;
    end process;

    process(ACLK)
    begin
        if(rising_edge(ACLK)) then
            case I2SState is
                when Reset =>
                    FIFO_1 <= (others => (others => '0')); 
                    AudioData <= (others => '0');
                    BytesInFIFO_1 <= 0;
                    FIFO_1_Full <= '0';

                    if      ARESETN = '1' then I2SState <= WaitForFIFO;
                    end if;

                when WaitForFIFO =>
                    if      FIFO_0_Full = '1' then  FIFO_1 <= FIFO_0;
                                                    FIFO_1_Full <= '1';
                                                    I2SState <= WaitForSync;
                                                    BytesInFIFO_1 <= BytesInFIFO_0;
                    end if;

                when WaitForSync =>
                    if      (BitCounter = ((2 * WIDTH) - 1)) then   I2SState <= LoadData;
                    end if;

                when LoadData =>
                    AudioData <= FIFO_1(ReadCounter);
                    
                    if      ReadCounter < BytesInFIFO_1 then    ReadCounter <= ReadCounter + 1;
                    else    ReadCounter <= 0;
                            FIFO_1_Full <= '0';
                    end if;

                    I2SState <= StartTransmission;

                when StartTransmission =>
                    if      BitCounter = 0 then 
                        if      FIFO_1_Full = '1' then    I2SState <= WaitForSync;
                        else    I2SState <= WaitForFIFO;
                        end if;
                    else    I2SState <= StartTransmission;
                    end if;
            end case;
        end if;
    end process;

    process(ACLK)
    begin
        if(rising_edge(ACLK)) then
            case FIFOState is
                when Reset =>
                    FIFO_0 <= (others => (others => '0')); 
                    TREADY_Int <= '0';
                    FIFO_0_Full <= '0';
                    BytesInFIFO_0 <= 0;

                    if      ARESETN = '1' then FIFOState <= WaitForValid;
                    end if;

                when WaitForValid =>
                    FIFO_0_Full <= '0';
                    if      TVALID = '1' then FIFOState <= ACKData;
                                              TREADY_Int <= '1';
                    elsif   TVALID = '0' then FIFOState <= WaitForValid;
                                              TREADY_Int <= '0';
                    end if;       

                when ACKData =>
                    TREADY_Int <= '0';
                    FIFO_0(BytesInFIFO_0) <= TDATA;

                    if      BytesInFIFO_0 < (FIFO_WIDTH - 1) then   BytesInFIFO_0 <= BytesInFIFO_0 + 1;
                                                                    FIFOState <= WaitForValid;
                    else    FIFO_0_Full <= '1';
                            
                            if      FIFO_1_Full = '0' then  FIFOState <= Full_FIFO_0;
                            else    FIFOState <= Full_FIFO_1;
                            end if;
                    end if;

                when Full_FIFO_0 =>
                    if      FIFO_1_Full = '1' then  FIFOState <= WaitForValid;
                                                    BytesInFIFO_0 <= 0;
                    end if;

                when Full_FIFO_1 =>
                    if      FIFO_1_Full = '1' then  FIFOState <= Full_FIFO_1;
                    elsif   FIFO_0_Full = '1' then  FIFOState <= Full_FIFO_0;
                    end if;

            end case;
        end if;
    end process;
    
    TREADY <= TREADY_Int;
end I2S_Arch;