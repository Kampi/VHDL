----------------------------------------------------------------------------------
-- Company:             www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert  
-- 
-- Create Date:         18.07.2019 08:26:24
-- Design Name: 
-- Module Name:         AXI4S_ROM - AXI4S_ROM_Arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:         Simple ROM with am AXI4 stream master interface. 
-- 
-- Dependencies: 
-- 
-- Revision:
--      Revision 0.01 - File Created
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

entity AXI4S_ROM is
    Generic (   DUAL_CHANNEL_DATA   : BOOLEAN := false
                );
    Port ( ACLK         : in STD_LOGIC;
           ARESETN      : in STD_LOGIC;
           
           -- AXI4S interface
           M_TDATA      : out STD_LOGIC_VECTOR(31 downto 0);
           M_TID        : out STD_LOGIC_VECTOR(7 downto 0);
           M_TREADY     : in STD_LOGIC;
           M_TVALID     : out STD_LOGIC;
           M_TLAST      : out STD_LOGIC
           );
end AXI4S_ROM;

architecture AXI4S_ROM_Arch of AXI4S_ROM is

    type STATE_t is (Reset, EndOfReset, ReadData, WaitForReady);
    signal CurrentState : STATE_t := Reset;

    signal Address      : INTEGER := 0;
    
    signal TLAST_Int    : STD_LOGIC := '0';
    signal TVALID_Int   : STD_LOGIC := '0';

    signal TID_Int      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal TDATA_Int    : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal ROM_Address  : STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal ROM_Data     : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal DataBuffer   : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

    constant ZERO       : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

    component ROM_blk_mem_gen_0_0 is
        Port (  clka : in STD_LOGIC;
                addra : in STD_LOGIC_VECTOR(10 downto 0);
                douta : out STD_LOGIC_VECTOR(15 downto 0)
                );
    end component;

begin

    DataROM : ROM_blk_mem_gen_0_0 port map (addra => ROM_Address,
                                            douta => ROM_Data,
                                            clka => ACLK
                                            );

    process(ACLK, ARESETN, M_TREADY, DataBuffer, CurrentState, Address)
    begin
        if(rising_edge(ACLK)) then
            case CurrentState is

                when Reset =>
                    TVALID_Int <= '0';
                    TLAST_Int <= '0';
                    TDATA_Int <= (others => '0');
                    TID_Int <= (others => '0');
                    Address <= 0;

                    if      ARESETN = '1' then CurrentState <= EndOfReset;
                    elsif   ARESETN = '0' then CurrentState <= Reset;
                    end if;

                when EndOfReset =>
                    CurrentState <= ReadData;
                    
                when ReadData =>
                    if(DUAL_CHANNEL_DATA = true) then
                        TDATA_Int <= ROM_Data & ROM_Data;
                    else
                        TDATA_Int <= ZERO & ROM_Data;
                    end if;
                    
                    TVALID_Int <= '1';
                    
                    if      Address = 99 then   Address <= 0;
                                                TLAST_Int <= '1';
                    else    Address <= Address + 1;
                            TLAST_Int <= '0';
                    end if;
                    
                    CurrentState <= WaitForReady;
                    
                when WaitForReady =>
                    -- Wait until TREADY from the slave
                    if      M_TREADY = '1' then CurrentState <= ReadData;
                                                TVALID_Int <= '0';
                    else    CurrentState <= WaitForReady;
                    end if;
             
            end case;
        end if;
    end process;

    M_TDATA <= TDATA_Int;
    M_TLAST <= TLAST_Int;
    M_TID <= TID_Int;
    M_TVALID <= TVALID_Int;
    ROM_Address <= STD_LOGIC_VECTOR(to_unsigned(Address, ROM_Address'length));

end AXI4S_ROM_Arch;