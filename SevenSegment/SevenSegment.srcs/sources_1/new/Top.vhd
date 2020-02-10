----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         14.01.2019 18:15:17
-- Design Name: 
-- Module Name:    	    Top - Top_Arch
-- Project Name: 
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         Seven segment top level module.
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
    Port (  Clock    : in STD_LOGIC;
            ResetN   : in STD_LOGIC;
            Kathode  : out STD_LOGIC;
            Anode    : out STD_LOGIC_VECTOR (6 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    signal DisplayClock : STD_LOGIC := '0';
    signal SystemResetN : STD_LOGIC := '0';
    signal Locked       : STD_LOGIC;

    component SystemClock is
        Port (  Clk5MHz : out STD_LOGIC;
                ClockIn : in STD_LOGIC;
                Locked : out STD_LOGIC;
                ResetN : in STD_LOGIC
                );
    end component SystemClock;

    component SevenSegment is
        Port ( Clock    : in STD_LOGIC;
               ResetN   : in STD_LOGIC;
               Data     : in STD_LOGIC_VECTOR(7 downto 0);
               Anode    : out STD_LOGIC_VECTOR(6 downto 0);
               Active  : out STD_LOGIC
               );
    end component SevenSegment;

begin

    Clock_5MHz : component SystemClock port map (   Clk5MHz => DisplayClock,
                                                    ClockIn => Clock,
                                                    ResetN => ResetN,
                                                    Locked => Locked
                                                    );

    Segment : component SevenSegment port map ( Clock => DisplayClock,
                                                Data => "0001" & "0110",
                                                ResetN => SystemResetN,
                                                Anode => Anode,
                                                Active => Kathode
                                                );

    SystemResetN <= ResetN and Locked;

end Top_Arch;