----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         02.01.2023 13:29:30
-- Design Name:         
-- Module Name:         Top - Top_Arch
-- Project Name:        
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:       Vivado 2022.2
-- Description:         NEC IR receiver Top module
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

entity Top is
    Port (  Clock       : in STD_LOGIC;
            nReset      : in STD_LOGIC;
            IR          : in STD_LOGIC;
            Reset_Out   : out STD_LOGIC;
            Repeat      : out STD_LOGIC;
            Valid       : out STD_LOGIC;
            Busy        : out STD_LOGIC;
            Data        : out STD_LOGIC_VECTOR(7 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    component ClockDivider is
        Generic (   DIV     : INTEGER
                );
        Port (  Clock_In    : in STD_LOGIC;
                nReset      : in STD_LOGIC;
                Clock_Out   : out STD_LOGIC
                );
    end component;

    component NEC_IR is
        Port (  Clock   : in STD_LOGIC;
                nReset  : in STD_LOGIC;
                IR      : in STD_LOGIC;
                Enable  : in STD_LOGIC;
                Busy    : out STD_LOGIC;
                Valid   : out STD_LOGIC;
                Repeat  : out STD_LOGIC;
                Addr    : out STD_LOGIC_VECTOR(7 downto 0);
                Data    : out STD_LOGIC_VECTOR(7 downto 0)
               );
    end component;

    signal Clock_Out_Int    : STD_LOGIC;
    signal Valid_Int        : STD_LOGIC;
    signal Busy_Int         : STD_LOGIC;
    signal Repeat_Int       : STD_LOGIC;
    signal Addr_Int         : STD_LOGIC_VECTOR(7 downto 0);
    signal Data_Int         : STD_LOGIC_VECTOR(7 downto 0);

begin

    Div_1MHz: ClockDivider generic map (    DIV => 125
                                            )
                            port map (  Clock_In => Clock,
                                        nReset => nReset,
                                        Clock_Out => Clock_Out_Int
                                        );

    IR_Rec : NEC_IR port map (  Clock => Clock_Out_Int,
                                nReset => nReset,
                                Valid => Valid_Int,
                                Busy => Busy_Int,
                                IR => IR,
                                Enable => '1',
                                Addr => Addr_Int,
                                Data => Data_Int,
                                Repeat => Repeat_Int
                                );

    Data        <= Data_Int when (Valid_Int = '1') else (others => '0');
    Reset_Out   <= nReset;
    Valid       <= Valid_Int;
    Busy        <= Busy_Int;
    Repeat      <= Repeat_Int;

end Top_Arch;