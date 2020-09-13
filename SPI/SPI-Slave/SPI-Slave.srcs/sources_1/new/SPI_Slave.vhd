----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         16.07.2020 10:23:07
-- Design Name: 
-- Module Name:         SPI_Slave - SPI_Slave_Arch
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:   	Vivado 2020.1
-- Description:         SPI slave implementation for a FPGA (Mode 0).
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPI_Slave is
    Port (  Clock   : in STD_LOGIC;                             -- Clock signal
            nReset  : in STD_LOGIC;                             -- Reset signal (active low)

            Valid   : out STD_LOGIC;                            -- Received data valid signal
            Busy    : out STD_LOGIC;                            -- Slave busy signal
            Strobe  : in STD_LOGIC;                             -- Load new data into the FIFO

            Rx      : out STD_LOGIC_VECTOR(7 downto 0);
            Tx      : in STD_LOGIC_VECTOR(7 downto 0);

            -- SPI connections
            nSS     : in STD_LOGIC;                             -- Slave select
            SCLK    : in STD_LOGIC;                             -- Serial clock
            MOSI    : in STD_LOGIC;                             -- Master Out Slave In
            MISO    : out STD_LOGIC                             -- Master In Slave Out
            );
end SPI_Slave;

architecture SPI_Slave_Arch of SPI_Slave is

    signal DataBuffer           : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');

    signal BitCounter           : UNSIGNED(2 downto 0)          := (others => '0');

    signal SlaveReady           : STD_LOGIC                     := '0';
    signal SlaveDataValid       : STD_LOGIC                     := '0';
    signal RxLastBit            : STD_LOGIC                     := '0';
    signal SCLK_Reg             : STD_LOGIC                     := '0';
    signal SCLK_FallingEdge     : STD_LOGIC                     := '0';
    signal SCLK_RisingEdge      : STD_LOGIC                     := '0';
    signal MISO_Out             : STD_LOGIC                     := '0';

begin

    -- Set the valid signal during the next clock edge after the last bit was received
    SlaveDataValid <= SCLK_FallingEdge and RxLastBit;

    -- Sync SCLK with the system clock
    SCLK_Sync_Proc : process
    begin
        wait until rising_edge(Clock);
        SCLK_Reg <= SCLK;

        -- Generate a rising edge for data sampling and a falling edge for data shifting
        SCLK_FallingEdge <= (not SCLK) and SCLK_Reg;
        SCLK_RisingEdge <= SCLK and (not SCLK_Reg);

        if(nReset = '0') then
            SCLK_Reg <= '0';
        end if;
    end process;

    -- Bit counter process
    Bit_Count_Proc : process
    begin
        wait until rising_edge(Clock);

        if(SCLK_FallingEdge = '1' and nSS = '0') then
            if(BitCounter < 7) then
                BitCounter <= BitCounter + 1;
            else
                BitCounter <= (others => '0');
            end if;
        end if;

        if((nReset = '0') or (nSS = '1')) then
            BitCounter <= (others => '0');
        end if;
    end process;

    -- Ready signal process
    -- The slave is busy until all data are send to the master
    Ready_Proc : process
    begin
        wait until rising_edge(Clock);

        if(Strobe = '1') then
            SlaveReady <= '0';
        elsif(SlaveDataValid = '1') then
            SlaveReady <= '1';
        end if;

        if(nReset = '0') then
            SlaveReady <= '1';
        end if;
    end process;

    -- Data load and shift process
    Load_Data_Proc : process
    begin
        wait until rising_edge(CLock);

        if((SlaveReady = '1') and (Strobe = '1')) then
            DataBuffer <= Tx;
        elsif((SCLK_RisingEdge = '1') and (nSS = '0')) then
            DataBuffer <= DataBuffer(6 downto 0) & '0';
        end if;
    end process;

    -- Data output process
    -- Use the falling edge to shift out the data from the internal buffer
    SPI_MISO_Proc : process
    begin
        wait until rising_edge(Clock);

        if(Strobe = '1') then
            MISO_Out <= Tx(7);
        elsif((SCLK_RisingEdge = '1') and (nSS = '0')) then
            MISO_Out <= DataBuffer(7);
        end if;
    end process;

    Busy <= (not nSS) and (not SlaveReady);
    Valid <= SlaveDataValid;
    
    MISO <= MISO_Out when (nSS = '0') else 'Z';

end SPI_Slave_Arch;