# Input clock
set_property PACKAGE_PIN L16 [get_ports Clock]
set_property IOSTANDARD LVCMOS33 [get_ports Clock]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports Clock]

set_property IOSTANDARD LVCMOS33 [get_ports Resetn]
set_property PACKAGE_PIN G15 [get_ports Resetn]

# I2S
set_property IOSTANDARD LVCMOS33 [get_ports MCLK]
set_property IOSTANDARD LVCMOS33 [get_ports LRCLK]
set_property IOSTANDARD LVCMOS33 [get_ports SCLK]
set_property IOSTANDARD LVCMOS33 [get_ports SD]

set_property PACKAGE_PIN V12 [get_ports MCLK]
set_property PACKAGE_PIN W16 [get_ports LRCLK]
set_property PACKAGE_PIN J15 [get_ports SCLK]
set_property PACKAGE_PIN H15 [get_ports SD]

# LED
set_property IOSTANDARD LVCMOS33 [get_ports Last]
set_property IOSTANDARD LVCMOS33 [get_ports Active]

set_property PACKAGE_PIN M15 [get_ports Last]
set_property PACKAGE_PIN M14 [get_ports Active]
