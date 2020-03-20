----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         14.01.2019 18:15:17
-- Design Name: 
-- Project Name:
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         Top design for the seven segment multiplexer tutorial from
--                      https://www.kampis-elektroecke.de/fpga/multiplexer-fuer-siebensegmentanzeigen
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is
    Generic (   REFRESH : INTEGER := 1000
                );
    Port (  Clock    : in STD_LOGIC;
            nReset   : in STD_LOGIC;
            Kathode  : out STD_LOGIC;
            Anode    : out STD_LOGIC_VECTOR (6 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    signal First        : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal Second       : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

    component Multiplexer is
        Generic (   REFRESH : INTEGER := 10000
                    );
        Port ( Clock    : in STD_LOGIC;
               nReset   : in STD_LOGIC;
               Data     : in STD_LOGIC_VECTOR(7 downto 0);
               Anode    : out STD_LOGIC_VECTOR(6 downto 0);
               Strobe   : out STD_LOGIC
               );
    end component Multiplexer;

begin

    Segment : component Multiplexer generic map (   REFRESH => REFRESH
                                                    )
                                    port map ( Clock => Clock,
                                               Data => Second & First,
                                               nReset => nReset,
                                               Anode => Anode,
                                               Strobe => Kathode
                                               );

    process(Clock, nReset)
        variable Counter    : INTEGER := 0;
        variable Seconds_E  : INTEGER := 0;
        variable Seconds_Z  : INTEGER := 0;
    begin
        if(nReset = '0') then
            Counter := 0;
            Seconds_E := 0;
            Seconds_Z := 0;
        elsif(rising_edge(Clock)) then
            if(Counter < 125000000) then
                Counter := Counter + 1;
            else
                Counter := 0;
                
                if(Seconds_E < 9) then
                    Seconds_E := Seconds_E + 1;
                else
                    Seconds_E := 0;
                    
                    if(Seconds_Z < 9) then
                        Seconds_Z := Seconds_Z + 1;
                    else
                        Seconds_Z := 0;
                    end if;
                end if;
            end if;
            
            First <= STD_LOGIC_VECTOR(to_unsigned(Seconds_E, First'length));
            Second <= STD_LOGIC_VECTOR(to_unsigned(Seconds_Z, First'length));
            
        end if;
    end process;

end Top_Arch;