----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date: 30.03.2021 14:51:55
-- Design Name: 
-- Module Name: Top_TB - Top_TB_Arch
-- Project Name: 
-- Target Devices: 		XC7Z010CLG400-1
-- Tool Versions:   	Vivado 2020.2
-- Description:         Testbench for the PS/2 interface project.
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

entity Top_TB is
--  Port ( );
end Top_TB;

architecture Top_TB_Arch of Top_TB is

    procedure PS2_Transmit( signal Data         : in STD_LOGIC_VECTOR(7 downto 0); 
                            signal PS2_Clock    : out STD_LOGIC;
                            signal PS2_Data     : out STD_LOGIC) is
        variable Parity : STD_LOGIC    := '1';
    begin
        wait for 1 ns;
        PS2_Clock <= '1';
        PS2_Data <= '1';
        wait for 5us;

        -- Start bit
        PS2_Data <= '0';
        wait for 20us;
        PS2_Clock <= '0';
        wait for 40us;
        PS2_Clock <= '1';
        wait for 20us;

        for i in 0 to (Data'length - 1) loop
            PS2_Data <= Data(i);

            -- Calculate the parity bit
            if(Data(i) = '1') then 
                Parity := not Parity; 
            end if;

            wait for 20us;
            PS2_Clock <= '0';
            wait for 40us;
            PS2_Clock <= '1';
            wait for 20us;
        end loop;

        -- Partity bit
        PS2_Data <= Parity;
        wait for 20us;
        PS2_Clock <= '0';
        wait for 40us;
        PS2_Clock <= '1';
        wait for 20us;

        -- Stop bit
        PS2_Data <= '1';
        wait for 20us;
        PS2_Clock <= '0';
        wait for 40us;
        PS2_Clock <= '1';
        wait for 20us;
    end procedure;

    -- 125 MHz Clock
    constant CLOCKPERIODE 	: TIME 							:= 8 ns;

    signal SimulationClock  : STD_LOGIC                     := '0';
    signal SimulationResetN : STD_LOGIC                     := '1';

    signal PS2_Data         : STD_LOGIC                     := '1';
    signal PS2_Clk          : STD_LOGIC                     := '1';

    signal Valid            : STD_LOGIC                     := '0';
    signal Status           : STD_LOGIC_VECTOR(1 downto 0);
    signal Data             : STD_LOGIC_VECTOR(7 downto 0);
    signal KeyboardData     : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');

    component Top is
        Port (  Clock       : in STD_LOGIC;
                nReset      : in STD_LOGIC;
                PS2_Clk     : in STD_LOGIC;
                PS2_Data    : in STD_LOGIC;
                Valid       : in STD_LOGIC;
                Status      : out STD_LOGIC_VECTOR(1 downto 0);
                Data        : out STD_LOGIC_VECTOR(7 downto 0)
                );
    end component;

begin

    -- Clock generation
    process begin
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '1';
        wait for (CLOCKPERIODE / 2);
        SimulationClock <= '0';
    end process;

   DUT : Top port map ( PS2_Data => PS2_Data,
                        PS2_Clk => PS2_Clk,
                        Valid => Valid,
                        Status => Status,
                        Data => Data,
                        Clock => SimulationClock,
                        nReset => SimulationResetN
                        );

    Stimulus : process
    begin
        KeyboardData <= x"AA";
        PS2_Transmit(KeyboardData, PS2_Clk, PS2_Data);
        wait;
   end process;

end Top_TB_Arch;
