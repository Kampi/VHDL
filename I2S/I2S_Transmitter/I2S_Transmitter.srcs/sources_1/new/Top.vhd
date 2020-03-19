----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert          
-- 
-- Create Date:         26.06.2019 15:35:01
-- Design Name: 
-- Module Name:         Top - Top_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:         Top design for the hardware implementation of the I2S transmitter project from
--                      https://www.kampis-elektroecke.de/fpga/i2s/design-des-i2s-sender/
-- Dependencies: 
-- 
-- Revision:
--      Revision        0.01 - File Created
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
    Generic (   RATIO   : INTEGER := 8;
                WIDTH   : INTEGER := 16
                );
    Port (  Clock   : in STD_LOGIC;
            nReset  : in STD_LOGIC;
            MCLK    : out STD_LOGIC;
            LRCLK   : out STD_LOGIC;
            SCLK    : out STD_LOGIC;
            SD      : out STD_LOGIC;
            LED     : out STD_LOGIC_VECTOR(3 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    signal nSystemReset : STD_LOGIC := '0';
    signal MCLK_DCM     : STD_LOGIC := '0';
    signal Locked       : STD_LOGIC := '0';

    component I2S is    
        Generic (   RATIO   : INTEGER := 8;
                    WIDTH   : INTEGER := 16
                    );
        Port (  MCLK    : in STD_LOGIC;
                nReset   : in STD_LOGIC;
                LRCLK    : out STD_LOGIC;
                SCLK     : out STD_LOGIC;
                SD       : out STD_LOGIC
                );
    end component;

    component AudioClock is
        Port (  ClockIn     : in STD_LOGIC;
                Locked      : out STD_LOGIC;
                MCLK        : out STD_LOGIC;
                nReset      : in STD_LOGIC
                );
    end component;

begin

    InputClock : AudioClock port map (  ClockIn => Clock,
                                        nReset => nReset,
                                        MCLK => MCLK_DCM,
                                        Locked => Locked
                                        );

    I2S_Module : I2S generic map (  RATIO => RATIO,
                                    WIDTH => WIDTH
                                    )
                          port map ( MCLK => MCLK_DCM,
                                     nReset => nSystemReset,
                                     LRCLK => LRCLK,
                                     SCLK => SCLK,
                                     SD => SD
                                     );

    nSystemReset <= nReset and Locked;
    LED(0) <= nReset;
    LED(1) <= Locked;
    LED(2) <= nSystemReset;
    MCLK <= MCLK_DCM;

end Top_Arch;