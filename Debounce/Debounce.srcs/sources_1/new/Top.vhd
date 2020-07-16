----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert  
-- 
-- Create Date:         17.06.2020 14:58:32
-- Design Name: 
-- Module Name:         Top - Top_Arch
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:   	Vivado 2020.1
-- Description:         Top design for the hardware implementation of a MAX6817 debounce IC from 
--                      https://www.kampis-elektroecke.de/fpga/taster-entprellen/
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is
    Port (  Bounce_In    : in STD_LOGIC;
            ResetN       : in STD_LOGIC;
            Clock        : in STD_LOGIC;
            Debounce_Out : out STD_LOGIC
            );
end Top;

architecture Top_Arch of Top is
    
   component Debounce 
        Generic (   BOUNCETIME : INTEGER 
                    );
        Port (  Clock    : in  STD_LOGIC;
                ResetN   : in STD_LOGIC;
                Input    : in  STD_LOGIC;
                Output   : out STD_LOGIC
            );
   end component;

begin                       

    Button_1 : Debounce generic map (   BOUNCETIME => 20
                                        )
                        port map (  Input => Bounce_In,
                                    ResetN => ResetN,
                                    Output => Debounce_Out, 
                                    Clock => Clock
                                    );
end Top_Arch;