# Clock
set_property PACKAGE_PIN L16 [get_ports Clock]
set_property IOSTANDARD LVCMOS33 [get_ports Clock]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports Clock]

# Reset
set_property PACKAGE_PIN G15 [get_ports ResetN]
set_property IOSTANDARD LVCMOS33 [get_ports ResetN]

# Seven segment display
set_property PACKAGE_PIN T14 [get_ports {Anode[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[0]}]

set_property PACKAGE_PIN T15 [get_ports {Anode[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[1]}]

set_property PACKAGE_PIN P14 [get_ports {Anode[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[2]}]

set_property PACKAGE_PIN R14 [get_ports {Anode[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[3]}]

set_property PACKAGE_PIN V12 [get_ports {Anode[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[4]}]

set_property PACKAGE_PIN W16 [get_ports {Anode[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[5]}]

set_property PACKAGE_PIN J15 [get_ports {Anode[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[6]}]

set_property PACKAGE_PIN H15 [get_ports Kathode]
set_property IOSTANDARD LVCMOS33 [get_ports Kathode]
