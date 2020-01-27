----------------------------------------------------------------------------------
-- Company: 		https://www.kampis-elektroecke.de
-- Engineer: 		Daniel Kampert
-- 
-- Create Date:   	28.07.2019 16:01:56
-- Design Name: 
-- Module Name:    	Top - Top_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 	2018.2
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
--  	 0.01 - File Created
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
    Port (  Taster_In    : in STD_LOGIC;
            Reset        : in STD_LOGIC;
            Clock        : in STD_LOGIC;
            Taster_Out   : out STD_LOGIC
            );
end Top;

architecture Top_Arch of Top is

    signal Clock_1khz : STD_LOGIC := '0';

    component ClockDiv
         Generic (  DIVIDER : INTEGER 
                    );
         Port ( Clock_In    : in STD_LOGIC;
                Reset       : in STD_LOGIC;
                Clock_Out   : out STD_LOGIC
                );
    end component;
	
   component Debounce 
        Generic (   BOUNCETIME : INTEGER 
                    );
        Port (  Clock    : in  STD_LOGIC;
                Reset    : in STD_LOGIC;
                Input    : in  STD_LOGIC;
                Output   : out STD_LOGIC
	            );
   end component;
 
begin

    Clock_1000Hz : ClockDiv generic map (   DIVIDER => 125000)
                                port map (  Clock_In => Clock,
                                            Reset => Reset,
                                            Clock_Out => Clock_1khz
                                            );
														  
    Button_1 : Debounce generic map (BOUNCETIME => 20)
                        port map (  Input => Taster_In,
                                    Reset => Reset,
                                    Output => Taster_Out, 
                                    Clock => Clock_1khz
                                    );

end Top_Arch;
