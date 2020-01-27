----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:   	14.01.2019 18:15:17
-- Design Name: 
-- Module Name:    	Top - Top_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
--  	0.01 - File Created
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
    Port (  Clock_In : in STD_LOGIC;
            Reset    : in STD_LOGIC;
            Reset_Out: out STD_LOGIC;
            Kathode  : out STD_LOGIC;
            Anode    : out STD_LOGIC_VECTOR (6 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    signal Clk5MHz  : STD_LOGIC := '0';
    signal Reset_In : STD_LOGIC := '0';

    component Clock is
        Port (  ResetN : in STD_LOGIC;
                Clock_In : in STD_LOGIC;
                Clk5MHz : out STD_LOGIC
                );
    end component Clock;
    
    component SevenSegment is
        Port ( Clock    : in STD_LOGIC;
               ResetN   : in STD_LOGIC;
               Data     : in STD_LOGIC_VECTOR(7 downto 0);
               Anode    : out STD_LOGIC_VECTOR(6 downto 0);
               Active  : out STD_LOGIC
               );
    end component SevenSegment;

begin

    Reset_In <= Reset;

    Clock_5MHz : component Clock port map ( Clk5MHz => Clk5MHz,
                                            Clock_In => Clock_In,
                                            ResetN => Reset_In
                                            );

    Segment : component SevenSegment port map ( Clock => Clk5MHz,
                                                Data => "0001" & "0110",
                                                ResetN => Reset_In,
                                                Anode => Anode,
                                                Active => Kathode
                                                );                                    

    Reset_Out <= Reset_In;

end Top_Arch;