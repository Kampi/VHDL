----------------------------------------------------------------------------------
-- Company:             www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert          
-- 
-- Create Date:         26.06.2019 15:47:52
-- Design Name: 
-- Module Name:         I2S_Transmitter - I2S_Transmitter_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:         I2S transmitter protocol module.
-- 
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

entity I2S_Transmitter is
    Generic ( WIDTH  : INTEGER := 16                                            -- Data width per channel
              );
    Port (  CLK      : in STD_LOGIC;                                            -- Input clock for the module
            RESETn   : in STD_LOGIC;                                            -- Reset (active low)
            Data     : in STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);         -- Input data for both channel
            LRCLK    : out STD_LOGIC;                                           -- L/R clock output signal
            SCLK     : out STD_LOGIC;                                           -- I2S output clock signal
            SD       : out STD_LOGIC;                                           -- I2S output data
            BitCounter : out INTEGER                                            -- Bit counter output signal
            );
end I2S_Transmitter;

architecture I2S_Transmitter_Arch of I2S_Transmitter is

    signal SD_Int           : STD_LOGIC := '0';
    signal LRCLK_Int        : STD_LOGIC := '1';
    signal ShiftReg         : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0) := (others => '0');
    signal BitCounter_Int   : INTEGER := 0;

begin

    process(CLK)
    begin
        if(rising_edge(CLK)) then
            if(RESETn = '0') then
                LRCLK_Int <= '1';
                BitCounter_Int <= 0;
                ShiftReg <= (others => '0');
                SD_Int <= '0';
            else
                if(BitCounter_Int < ((2 * WIDTH) - 1)) then
                    BitCounter_Int <= BitCounter_Int + 1;
                else
                    BitCounter_Int <= 0;
                end if;

                -- L/R logic
                if(BitCounter_Int < WIDTH) then
                    LRCLK_Int <= '0';
                else
                    LRCLK_Int <= '1';
                end if;

                -- Handle the shift register
                if(BitCounter_Int = 0) then
                    ShiftReg <= Data;
                else
                    ShiftReg <= ShiftReg(((2 * WIDTH) - 2) downto 0) & "0";
                end if;
                
                SD_Int <= ShiftReg((2 * WIDTH) - 1);
            end if;
        end if;
    end process;
 
    BitCounter <= BitCounter_Int;
    SD <= SD_Int;
    LRCLK <= LRCLK_Int;
    SCLK <= CLK and RESETn;
end I2S_Transmitter_Arch;