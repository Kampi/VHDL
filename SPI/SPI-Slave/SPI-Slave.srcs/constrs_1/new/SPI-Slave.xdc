# PL clock
set_property PACKAGE_PIN L16 [get_ports Clock]
set_property IOSTANDARD LVCMOS33 [get_ports Clock]
create_clock -period 8.000 -name Clock -waveform {0.000 4.000} -add [get_ports Clock]

# External reset
set_property PACKAGE_PIN R18 [get_ports nReset]
set_property IOSTANDARD LVCMOS33 [get_ports nReset]

# LED
set_property PACKAGE_PIN D18 [get_ports {DataOut[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DataOut[3]}]

set_property PACKAGE_PIN G14 [get_ports {DataOut[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DataOut[2]}]

set_property PACKAGE_PIN M15 [get_ports {DataOut[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DataOut[1]}]

set_property PACKAGE_PIN M14 [get_ports {DataOut[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DataOut[0]}]