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
            Load    : in STD_LOGIC;                             -- Load new data into the FIFO

            -- Status signals
            Busy    : out STD_LOGIC;                            -- Slave busy signal

            -- Data in- and outputs
            Rx      : out STD_LOGIC_VECTOR(7 downto 0);         -- Received data from the master
            Tx      : in STD_LOGIC_VECTOR(7 downto 0);          -- Data transmitted to the master

            -- SPI connections
            nSS     : in STD_LOGIC;                             -- Slave select
            SCLK    : in STD_LOGIC;                             -- Serial clock
            MOSI    : in STD_LOGIC;                             -- Master Out Slave In
            MISO    : out STD_LOGIC                             -- Master In Slave Out
            );
end SPI_Slave;

architecture SPI_Slave_Arch of SPI_Slave is

    signal Tx_Buffer            : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
    signal Rx_Buffer            : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
    signal SCLK_Reg             : STD_LOGIC_VECTOR(1 downto 0)  := (others => '0');

    signal BitCounter           : UNSIGNED(2 downto 0)          := (others => '0');

    signal Tx_BufferFull        : STD_LOGIC                     := '0';
    signal SCLK_FallingEdge     : STD_LOGIC                     := '0';
    signal SCLK_RisingEdge      : STD_LOGIC                     := '0';
    signal MISO_Out             : STD_LOGIC                     := '0';
    signal MOSI_Reg             : STD_LOGIC;

begin

    -- Generate a rising edge for data sampling and a falling edge for data shifting
    SCLK_FallingEdge <= (not SCLK) and SCLK_Reg(0);
    SCLK_RisingEdge <= SCLK and (not SCLK_Reg(1));

    -- Generate the busy signal
    Busy <= (not nSS) and Tx_BufferFull;

    -- Set MISO to high Z when the slave isn´t selected
    MISO <= Tx_Buffer(7) when (nSS = '0') else 'Z';

    -- Sync SCLK with the system clock for the edge detection
    SCLK_Proc : process
    begin
        wait until rising_edge(Clock);

        SCLK_Reg(0) <= SCLK;
        SCLK_Reg(1) <= SCLK_Reg(0);

        if(nReset = '0') then
            SCLK_Reg <= (others => '0');
        end if;
    end process;

    -- Sync MOSI with the system clock
    MOSI_Proc : process
    begin
        wait until rising_edge(Clock);

        MOSI_Reg <= MOSI;

        if(nReset = '0') then
            MOSI_Reg <= '0';
        end if;    
    end process;

    -- Bit counter process
    Bit_Count_Proc : process
    begin
        wait until rising_edge(Clock);

        if(SCLK_FallingEdge = '1' and nSS = '0') then
            if(Tx_BufferFull = '1') then
                BitCounter <= BitCounter + 1;
            else
                BitCounter <= (others => '0');
            end if;
        elsif(nSS = '1') then
            BitCounter <= (others => '0');
        end if;

        if((nReset = '0') or (nSS = '1')) then
            BitCounter <= (others => '0');
        end if;
    end process;

    -- Buffer full signal process
    IsBusy_Proc : process
    begin
        wait until rising_edge(Clock);

        if(Load = '1') then
            Tx_BufferFull <= '1';
        elsif((BitCounter = 7) and (SCLK_FallingEdge = '1')) then
            Tx_BufferFull <= '0';
        elsif(nReset = '0') then
            Tx_BufferFull <= '0';
        end if;
    end process;

    -- Use the rising edge to sample the data and store them in the internal buffer
    Read_Data_Proc : process
    begin
        wait until rising_edge(Clock);

        if(SCLK_RisingEdge = '1') then
            Rx_Buffer <= Rx_Buffer(6 downto 0) & MOSI_Reg;
        end if;

        if(nReset = '0') then
            Rx_Buffer <= (others => '0');
        end if;
    end process;

    -- Load new data and use the falling edge to shift out the data from the internal buffer
    Load_Data_Proc : process
    begin
        wait until rising_edge(Clock);

        if((Tx_BufferFull = '0') and (Load = '1')) then
            Tx_Buffer <= Tx;
        elsif(SCLK_FallingEdge = '1') then
            Tx_Buffer <= Tx_Buffer(6 downto 0) & '0';
        elsif(nReset = '0') then
            Tx_Buffer <= (others => '0');
        end if;
    end process;

end SPI_Slave_Arch;