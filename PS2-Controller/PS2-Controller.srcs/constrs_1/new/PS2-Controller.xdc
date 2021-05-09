# PL Clock
set_property PACKAGE_PIN L16 [get_ports Clock]
set_property IOSTANDARD LVCMOS33 [get_ports Clock]
create_clock -period 8.000 -name Clock -waveform {0.000 4.000} -add [get_ports Clock]

# Valid handshake
set_property PACKAGE_PIN R18 [get_ports {Valid}]
set_property IOSTANDARD LVCMOS33 [get_ports {Valid}]

# Data output
set_property PACKAGE_PIN Y17 [get_ports {Data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data[7]}]

set_property PACKAGE_PIN T17 [get_ports {Data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data[6]}]

set_property PACKAGE_PIN U17 [get_ports {Data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data[5]}]

set_property PACKAGE_PIN V13 [get_ports {Data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data[4]}]

set_property PACKAGE_PIN H15 [get_ports {Data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data[3]}]

set_property PACKAGE_PIN J15 [get_ports {Data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data[2]}]

set_property PACKAGE_PIN W16 [get_ports {Data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data[1]}]

set_property PACKAGE_PIN V12 [get_ports {Data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data[0]}]

# Status output
set_property PACKAGE_PIN M15 [get_ports {Status[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Status[1]}]

set_property PACKAGE_PIN M14 [get_ports {Status[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Status[0]}]

# PS/2 interface
set_property PACKAGE_PIN T20 [get_ports PS2_Clk]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_Clk]
set_property PULLUP true [get_ports PS2_Clk]

set_property PACKAGE_PIN U20 [get_ports PS2_Data]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_Data]
set_property PULLUP true [get_ports PS2_Data]
