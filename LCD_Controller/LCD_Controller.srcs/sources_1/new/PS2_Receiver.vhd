----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         31.01.2020 14:20:43
-- Design Name: 
-- Module Name:         PS2_Receiver - PS2_Receiver_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions:       Vivado 2019.2
-- Description:         PS/2 receiver for PS/2 keyboard.
-- 
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

entity PS2_Receiver is
    Port ( Clock : in STD_LOGIC;
           ResetN : in STD_LOGIC;
           PS2_Data : in STD_LOGIC;
           PS2_Clock : in STD_LOGIC);
end PS2_Receiver;

architecture PS2_Receiver_Arch of PS2_Receiver is

begin


end PS2_Receiver_Arch;