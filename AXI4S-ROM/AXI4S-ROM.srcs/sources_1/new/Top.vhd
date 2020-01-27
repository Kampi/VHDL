----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert  
-- 
-- Create Date:         29.07.2019 14:12:29
-- Design Name: 
-- Module Name:         Top - Top_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
--  0.01 - File Created
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
    Port ( Clock    : in STD_LOGIC;
           Resetn   : in STD_LOGIC;
           Output   : out STD_LOGIC
           );
end Top;

architecture Top_Arch of Top is

    signal TDATA    : STD_LOGIC_VECTOR(15 downto 0);
    signal TID      : STD_LOGIC_VECTOR(7 downto 0);
    signal TREADY   : STD_LOGIC;
    signal TVALID   : STD_LOGIC;
    signal TLAST    : STD_LOGIC;

    component AXI4S_ROM is
        Port ( ACLK     : in STD_LOGIC;
               ARESETN  : in STD_LOGIC;
               TDATA    : out STD_LOGIC_VECTOR(15 downto 0);
               TID      : out STD_LOGIC_VECTOR(7 downto 0);
               TREADY   : in STD_LOGIC;
               TVALID   : out STD_LOGIC;
               TLAST    : out STD_LOGIC
               );
    end component;

begin

    ROM : AXI4S_ROM port map(   ACLK => Clock,
                                ARESETN => Resetn,
                                TDATA => TDATA,
                                TID => TID,
                                TREADY => TREADY,
                                TVALID => TVALID,
                                TLAST => TLAST
                                );

    Output <= not Resetn;

end Top_Arch;