----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         30.03.2021 13:27:26
-- Design Name: 
-- Module Name:         Top - Top_Arch
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:   	Vivado 2020.2
-- Description:         PS/2 keyboard interface project from
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
            PS2_Clk     : in STD_LOGIC;
            PS2_Data    : in STD_LOGIC;
            Valid       : in STD_LOGIC;
            Status      : out STD_LOGIC_VECTOR(1 downto 0);
            Data        : out STD_LOGIC_VECTOR(7 downto 0)
            );
end Top;

architecture Top_Arch of Top is

    component PS2_Interface is
        Port (  Clock       : in STD_LOGIC;
                nReset      : in STD_LOGIC;
                PS2_Clk     : in STD_LOGIC;
                PS2_Data    : in STD_LOGIC;
                Valid       : in STD_LOGIC;
                RxComplete  : out STD_LOGIC;
                Busy        : out STD_LOGIC;
                RxData      : out STD_LOGIC_VECTOR(7 downto 0)
                );
    end component;

begin

    Interface : PS2_Interface port map (PS2_Clk => PS2_Clk,
                                        PS2_Data => PS2_Data,
                                        Clock => Clock,
                                        nReset => '1',
                                        Valid => Valid,
                                        Busy => Status(0),
                                        RxComplete => Status(1),
                                        RxData => Data
                                        );

end Top_Arch;
