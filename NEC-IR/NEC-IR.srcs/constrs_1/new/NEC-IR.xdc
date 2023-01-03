# PL Clock
set_property PACKAGE_PIN L16 [get_ports Clock]
set_property IOSTANDARD LVCMOS33 [get_ports Clock]
create_clock -period 8.000 -name Clock -waveform {0.000 4.000} -add [get_ports Clock]

# Reset input
set_property PACKAGE_PIN G15 [get_ports nReset]
set_property IOSTANDARD LVCMOS33 [get_ports nReset]

set_property PACKAGE_PIN D18 [get_ports Reset_Out]
set_property IOSTANDARD LVCMOS33 [get_ports Reset_Out]

# Status signals from the IR receiver
set_property PACKAGE_PIN M14 [get_ports Busy]
set_property IOSTANDARD LVCMOS33 [get_ports Busy]

set_property PACKAGE_PIN M15 [get_ports Valid]
set_property IOSTANDARD LVCMOS33 [get_ports Valid]

set_property PACKAGE_PIN G14 [get_ports Repeat]
set_property IOSTANDARD LVCMOS33 [get_ports Repeat]

# Data input from the IR receiver
set_property PACKAGE_PIN T14 [get_ports IR]
set_property IOSTANDARD LVCMOS33 [get_ports IR]
set_property PULLUP true [get_ports IR]

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

