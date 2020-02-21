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
    Generic (   MULT    : INTEGER := 8;
                WIDTH   : INTEGER := 16
                );
    Port (  Clock   : in STD_LOGIC;
            ResetN  : in STD_LOGIC;
            MCLK    : out STD_LOGIC;
            LRCLK   : out STD_LOGIC;
            SCLK    : out STD_LOGIC;
            SD      : out STD_LOGIC;
            LED     : out STD_LOGIC_VECTOR(3 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    signal SystemResetN : STD_LOGIC := '0';
    signal SysClock     : STD_LOGIC := '0';
    signal MCLK_DCM     : STD_LOGIC := '0';
    signal Locked       : STD_LOGIC := '0';

    -- AXI4 stream signals
    signal ARESETn      : STD_LOGIC := '1';

    component I2S is    
        Generic ( MULT   : INTEGER := 4;
                  WIDTH  : INTEGER := 16
                  );
        Port (  ACLK     : in STD_LOGIC;
                ARESETn  : in STD_LOGIC;
                MCLK     : in STD_LOGIC;
                LRCLK    : out STD_LOGIC;
                SCLK     : out STD_LOGIC;
                SD       : out STD_LOGIC
                );
    end component;

    component SystemClock is
        Port (  ClockIn     : in STD_LOGIC;
                Locked      : out STD_LOGIC;
                MCLK        : out STD_LOGIC;
                ResetN      : in STD_LOGIC
                );
    end component;

begin

    -- Generate MLCK
    InputClock : SystemClock port map ( ClockIn => Clock,
                                        ResetN => ResetN,
                                        MCLK => MCLK_DCM,
                                        Locked => Locked
                                        );

    I2S_Module : I2S generic map (  MULT => MULT,
                                    WIDTH => WIDTH
                                    )
                          port map ( ACLK => Clock,
                                     ARESETn => SystemResetN,
                                     MCLK => MCLK_DCM,
                                     LRCLK => LRCLK,
                                     SCLK => SCLK,
                                     SD => SD
                                     );

    SystemResetN <= ResetN and Locked;
    LED(0) <= ResetN;
    LED(1) <= Locked;
    MCLK <= MCLK_DCM;

end Top_Arch;