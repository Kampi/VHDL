# Clock
set_property PACKAGE_PIN L16 [get_ports Clock_In]
set_property IOSTANDARD LVCMOS33 [get_ports Clock_In]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports Clock_In]

# Color
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[15]}]

set_property PACKAGE_PIN M19 [get_ports {RGB[0]}]
set_property PACKAGE_PIN L20 [get_ports {RGB[1]}]
set_property PACKAGE_PIN J20 [get_ports {RGB[2]}]
set_property PACKAGE_PIN G20 [get_ports {RGB[3]}]
set_property PACKAGE_PIN F19 [get_ports {RGB[4]}]
set_property PACKAGE_PIN H18 [get_ports {RGB[5]}]
set_property PACKAGE_PIN N20 [get_ports {RGB[6]}]
set_property PACKAGE_PIN L19 [get_ports {RGB[7]}]
set_property PACKAGE_PIN J19 [get_ports {RGB[8]}]
set_property PACKAGE_PIN H20 [get_ports {RGB[9]}]
set_property PACKAGE_PIN F20 [get_ports {RGB[10]}]
set_property PACKAGE_PIN P20 [get_ports {RGB[11]}]
set_property PACKAGE_PIN M20 [get_ports {RGB[12]}]
set_property PACKAGE_PIN K19 [get_ports {RGB[13]}]
set_property PACKAGE_PIN J18 [get_ports {RGB[14]}]
set_property PACKAGE_PIN G19 [get_ports {RGB[15]}]

# Sync
set_property PACKAGE_PIN P19 [get_ports HSync]
set_property PACKAGE_PIN R19 [get_ports VSync]

set_property IOSTANDARD LVCMOS33 [get_ports HSync]
set_property IOSTANDARD LVCMOS33 [get_ports VSync]

# Reset
set_property PACKAGE_PIN G15 [get_ports Reset]
set_property IOSTANDARD LVCMOS33 [get_ports Reset]

# LEDs
set_property PACKAGE_PIN M14 [get_ports {Output[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Output[0]}]

set_property PACKAGE_PIN M15 [get_ports {Output[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Output[1]}]
