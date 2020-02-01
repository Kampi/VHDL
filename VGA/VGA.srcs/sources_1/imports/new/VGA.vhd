----------------------------------------------------------------------------------
-- Company:             https://www.kampis-elektroecke.de
-- Engineer:            Daniel Kampert
-- 
-- Create Date:         02.08.2014 13:17:51
-- Design Name: 
-- Module Name:         VGA - VGA_Arch
-- Project Name:        VHDL VGA controller tutorial from
--                      https://www.kampis-elektroecke.de/fpga/vga-im-fpga-der-vga-controller/
-- Target Devices:      XC7Z010CLG400-1
-- Tool Versions:       Vivado 2019.2
-- Description:         VGA Interface for a 640 x 480 Pixel Screen.
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
use IEEE.NUMERIC_STD.ALL;

entity VGA is
    Generic (
            Color_Width         : INTEGER := 16;                                        -- Breite Ausgabebus fuer die Farbe
            ROM_Address_Width   : INTEGER := 11;                                        -- Breite Adressbus Font-ROM
            ROM_Data_Width      : INTEGER := 8;                                         -- Breite Datenbus Font-ROM
            Char_Size           : INTEGER := 8;                                         -- Breite eines Zeichens
            Max_Char_x          : INTEGER := 80;                                        -- Maximale Anzahl Zeichen bezogen auf die Breite
            Max_Char_y          : INTEGER := 60                                         -- Maximale Anzahl Zeichen bezogen auf die Hoehe
            );
    Port (  Clock_In    : in STD_LOGIC;                                                 -- Taktsignal fuer VGA-Logik
            Reset       : in STD_LOGIC;                                                 -- Reset fuer VGA-Logik
            HSync       : out STD_LOGIC;                                                -- Ausgang fuer H-Sync Signal
            VSync       : out STD_LOGIC;                                                -- Ausgang fuer V-Sync Signal
            RGB         : out STD_LOGIC_VECTOR((Color_Width - 1) downto 0)              -- RGB Ausgang fuer das VGA-Signal
            );
end VGA;

architecture VGA_Arch of VGA is

    -- DCM
    signal Lock                 : STD_LOGIC := '0';
    signal Clock_VGA            : STD_LOGIC := '0';

    -- Koordinaten des Zeigers auf dem Bildschirm
    signal Pixel_x_delay_0      : UNSIGNED(9 downto 0) := (others => '0');               
    signal Pixel_y_delay_0      : UNSIGNED(9 downto 0) := (others => '0'); 
    signal Pixel_x_delay_1      : UNSIGNED(9 downto 0) := (others => '0');               
    signal Pixel_y_delay_1      : UNSIGNED(9 downto 0) := (others => '0'); 
    signal Pixel_x_delay_2      : UNSIGNED(9 downto 0) := (others => '0');               
    signal Pixel_y_delay_2      : UNSIGNED(9 downto 0) := (others => '0'); 
    signal Pixel_x_delay_3      : UNSIGNED(9 downto 0) := (others => '0');               
    signal Pixel_y_delay_3      : UNSIGNED(9 downto 0) := (others => '0'); 

    signal HSync_delay_0        : STD_LOGIC := '0';
    signal VSync_delay_0        : STD_LOGIC := '0';
    signal HSync_delay_1        : STD_LOGIC := '0';
    signal VSync_delay_1        : STD_LOGIC := '0';
    signal HSync_delay_2        : STD_LOGIC := '0';
    signal VSync_delay_2        : STD_LOGIC := '0';
    signal HSync_delay_3        : STD_LOGIC := '0';
    signal VSync_delay_3        : STD_LOGIC := '0';
    signal HSync_delay_4        : STD_LOGIC := '0';
    signal VSync_delay_4        : STD_LOGIC := '0';

    -- Font ROM
    signal ROM_Data             : STD_LOGIC_VECTOR(0 to (ROM_Data_Width - 1)) := (others => '0');
    signal ROM_Address          : STD_LOGIC_VECTOR(0 to (ROM_Address_Width - 1)) := (others => '0');
    signal ROM_Bit              : STD_LOGIC := '0';
    signal Row_Addr             : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal Col_Addr             : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');

    -- Display RAM
    signal Display_Address      : UNSIGNED(12 downto 0) := (others => '0');
    signal Zeichen_Address      : UNSIGNED(6 downto 0);
    signal Offset               : UNSIGNED(12 downto 0) := (others => '0');
    signal Display_Buffer       : STD_LOGIC_VECTOR((Color_Width + Char_Size - 1) downto 0);
    signal Character            : STD_LOGIC_VECTOR((Char_Size - 1) downto 0); 
    signal Color                : STD_LOGIC_VECTOR((Color_Width - 1) downto 0);

    component Clock is
        Port (  Clock_In : in STD_LOGIC;
                Clock_Reset : in STD_LOGIC;
                Clock_Locked : out STD_LOGIC;
                Clock_Out : out STD_LOGIC
                );
    end component Clock;

    -- Einbinden des VGA-Controllers
    component VGA_Timing is
        Port (  HSync       : out STD_LOGIC;
                VSync       : out STD_LOGIC;
                Clock_VGA   : in STD_LOGIC;
                Reset       : in STD_LOGIC;
                x_out       : out UNSIGNED(9 downto 0);
                y_out       : out UNSIGNED(9 downto 0) 
                );
    end component VGA_Timing;

    -- Font-ROM fuer VGA-Controller
    component Font_ROM is
        port (  ROM_Address : in STD_LOGIC_VECTOR((ROM_Address_Width - 1) downto 0);
                ROM_Clock   : in STD_LOGIC;
                ROM_DataOut : out STD_LOGIC_VECTOR((ROM_Data_Width - 1) downto 0);
                ROM_Reset   : in STD_LOGIC
                );
    end component Font_ROM;

    -- Display RAM fuer das Bild    
    component Display_RAM
        Generic (
                Addr_Width : INTEGER := 13;
                Data_Width : INTEGER := 24
                );
        Port (  Clock       : in STD_LOGIC;
                Reset       : in STD_LOGIC;   
                Read_Write  : in STD_LOGIC;
                Address     : in UNSIGNED((Addr_Width - 1) downto 0);
                Data_Out    : out STD_LOGIC_VECTOR ((Data_Width - 1) downto 0);
                Data_In     : in STD_LOGIC_VECTOR ((Data_Width - 1) downto 0)
                );
    end component;

begin

    HSync <= HSync_delay_4;
    VSync <= VSync_delay_4;

    VGA_Ctrl        : VGA_Timing port map (HSync => HSync_delay_0, 
                                            VSync => VSync_delay_0, 
                                            Clock_VGA => Clock_VGA, 
                                            Reset => Reset, 
                                            x_out => Pixel_x_delay_0, 
                                            y_out => Pixel_y_delay_0
                                            );

    Char_Font       : Font_ROM port map (ROM_Address => ROM_Address, 
                                            ROM_Clock => Clock_VGA, 
                                            ROM_DataOut => ROM_Data, 
                                            ROM_Reset => '0'
                                            );

    Display         : Display_RAM port map (Clock => Clock_VGA, 
                                            Reset => Reset, 
                                            Read_Write => '1', 
                                            Address => Display_Address, 
                                            Data_Out => Display_Buffer, 
                                            Data_In => (others => '0')
                                            ); 

     Clock_25MHz : Clock port map (Clock_In => Clock_In, 
                                    Clock_Reset => '1', 
                                    Clock_Locked => Lock, 
                                    Clock_Out => Clock_VGA
                                    );

    --Farbausgabe    
    process(Clock_VGA)
    begin
        if(rising_edge(Clock_VGA)) then
            if((ROM_Bit = '1')) then
                RGB <= Color;
            else
                RGB <= x"0000";
            end if;                   
        end if;
    end process;

    -- Farbe und Zeichen trennen
    Character   <= Display_Buffer((Char_Size - 1) downto 0);
    Color       <= Display_Buffer((Color_Width + Char_Size - 1) downto Char_Size);

    -- ROM auslesen
    Row_Addr    <= std_logic_vector(Pixel_y_delay_2(2 downto 0));
    ROM_Address <= Character & Row_Addr;
    Col_Addr    <= std_logic_vector(Pixel_x_delay_2(2 downto 0));
    ROM_Bit     <= ROM_Data(to_integer(unsigned(Col_Addr)));     

    Zeichen_Address <= Pixel_x_delay_0(9 downto 3);   
    Display_Address <= Offset + Zeichen_Address; 

    process(Clock_VGA)
    begin 
        if(rising_edge(Clock_VGA)) then  
             if(Pixel_x_delay_0(2 downto 0) = "000") then
                if((Pixel_x_delay_0 = 0) and (Pixel_y_delay_0 = 0)) then
                    Offset <= to_unsigned(0, Offset'length);
                elsif((Pixel_x_delay_0 = 0) and (Pixel_y_delay_0(2 downto 0) = 0)) then 
                    Offset <= Offset + Max_Char_x; 
                end if;        
           end if;  
        end if;
     end process;

    -- Signale verzoegern
    process(Clock_VGA)
    begin
        if(rising_edge(Clock_VGA)) then
            HSync_delay_1 <= HSync_delay_0;
            VSync_delay_1 <= VSync_delay_0;
            HSync_delay_2 <= HSync_delay_1;
            VSync_delay_2 <= VSync_delay_1;
            HSync_delay_3 <= HSync_delay_2;
            VSync_delay_3 <= VSync_delay_2;
            HSync_delay_4 <= HSync_delay_3;
            VSync_delay_4 <= VSync_delay_3;

            Pixel_x_delay_1 <= Pixel_x_delay_0;
            Pixel_y_delay_1 <= Pixel_y_delay_0;
            Pixel_x_delay_2 <= Pixel_x_delay_1;
            Pixel_y_delay_2 <= Pixel_y_delay_1;
            Pixel_x_delay_3 <= Pixel_x_delay_2;
            Pixel_y_delay_3 <= Pixel_y_delay_2;
        end if;
    end process;

end VGA_Arch;