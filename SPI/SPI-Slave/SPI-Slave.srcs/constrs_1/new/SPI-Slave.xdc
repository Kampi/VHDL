# PL clock
set_property PACKAGE_PIN L16 [get_ports Clock]
set_property IOSTANDARD LVCMOS33 [get_ports Clock]
create_clock -period 8.000 -name Clock -waveform {0.000 4.000} -add [get_ports Clock]

# External reset
set_property PACKAGE_PIN G15 [get_ports nReset]
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

# SPI
set_property PACKAGE_PIN T20 [get_ports MOSI]
set_property IOSTANDARD LVCMOS33 [get_ports MOSI]

set_property PACKAGE_PIN U20 [get_ports MISO]
set_property IOSTANDARD LVCMOS33 [get_ports MISO]

set_property PACKAGE_PIN V20 [get_ports SCLK]
set_property IOSTANDARD LVCMOS33 [get_ports SCLK]

set_property PACKAGE_PIN W20 [get_ports SS]
set_property IOSTANDARD LVCMOS33 [get_ports SS]

# Ultrasonic sensor
set_property PACKAGE_PIN V15 [get_ports Echo]
set_property IOSTANDARD LVCMOS33 [get_ports Echo]

set_property PACKAGE_PIN W15 [get_ports Trigger]
set_property IOSTANDARD LVCMOS33 [get_ports Trigger]
