----------------------------------------------------------------------------------
-- Company:             www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert          
-- 
-- Create Date:         26.06.2019 15:35:01
-- Design Name: 
-- Module Name:         Top - Top_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:         Top design for the hardware implementation of the I2S audio project.
-- 
-- Dependencies: 
-- 
-- Revision:
--      Revision 0.01 - File Created
--
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library work;
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
    Generic ( WIDTH  : INTEGER := 16
              );
    Port (  Clock    : in STD_LOGIC;
            Resetn   : in STD_LOGIC;
            Active   : out STD_LOGIC;
            Last     : out STD_LOGIC;
            MCLK     : out STD_LOGIC;
            LRCLK    : out STD_LOGIC;
            SCLK     : out STD_LOGIC;
            SD       : out STD_LOGIC
            );
end Top;

architecture Top_Arch of Top is

    signal MCLK_DCM     : STD_LOGIC := '0';
    signal MCLK_Int     : STD_LOGIC := '0';
    signal Locked       : STD_LOGIC := '0';
    signal ARESETn      : STD_LOGIC := '0';
    
    -- AXI4 stream signals
    signal TREADY       : STD_LOGIC := '0';
    signal TVALID       : STD_LOGIC := '1';
    signal TLAST        : STD_LOGIC := '0';
    signal TDATA        : STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0) := (others => '0');

    -- ROM signals
    signal Address      : INTEGER := 0;
    signal ROM_Data     : STD_LOGIC_VECTOR((WIDTH - 1) downto 0) := (others => '0');
    signal ROM_Address  : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');

    component I2S is    
        Generic ( WIDTH  : INTEGER := 16;
                  RATIO  : INTEGER := 256;
                  FIFO_WIDTH    : INTEGER := 4
                  );
        Port (  ACLK     : in STD_LOGIC;
                ARESETn  : in STD_LOGIC;
                TDATA    : in STD_LOGIC_VECTOR(((2 * WIDTH) - 1) downto 0);
                TREADY   : out STD_LOGIC;
                TVALID   : in STD_LOGIC;
                TLAST    : in STD_LOGIC;
                MCLK     : in STD_LOGIC;
                LRCLK    : out STD_LOGIC;
                SCLK     : out STD_LOGIC;
                SD       : out STD_LOGIC
                );
    end component;
    
    component ClockGeneration is
        Port (  ClockIn  : in STD_LOGIC;
                ClockOut : out STD_LOGIC;
                Locked   : out STD_LOGIC
                );
    end component;
    
    component DataROM is
        Port (  ACLK    : in STD_LOGIC;
                ARESETN : in STD_LOGIC;
                TDATA   : out STD_LOGIC_VECTOR(31 downto 0);
                TID     : out STD_LOGIC_VECTOR(7 downto 0);
                TLAST   : out STD_LOGIC;
                TREADY  : in STD_LOGIC;
                TVALID  : out STD_LOGIC
                );
    end component DataROM;

begin

    -- This ROM contains the sine test pattern
    AudioData : DataROM port map (  ACLK => Clock,
                                    ARESETN => ARESETn,
                                    TDATA => TDATA,
                                    TLAST => TLAST,
                                    TREADY => TREADY,
                                    TVALID => TVALID
                                    );

    -- Generate MLCK
    InputClock : ClockGeneration port map ( ClockIn => Clock,
                                            ClockOut => MCLK_DCM,
                                            Locked => Locked
                                            );

    I2S_Transmitter : I2S generic map ( WIDTH => WIDTH,
                                        RATIO => 256
                                        )
                          port map ( ACLK => Clock,
                                     ARESETn => ARESETn,
                                     TDATA => TDATA,
                                     TVALID => TVALID,
                                     TLAST => TLAST,
                                     TREADY => TREADY,
                                     MCLK => MCLK_Int,
                                     LRCLK => LRCLK,
                                     SCLK => SCLK,
                                     SD => SD
                                     );

    -- Assign output signals
    Active <= ARESETn;
    Last <= TLAST;
    MCLK <= MCLK_Int;
    MCLK_Int <= Locked and MCLK_DCM;
    ARESETn <= Locked and ResetN;

end Top_Arch;