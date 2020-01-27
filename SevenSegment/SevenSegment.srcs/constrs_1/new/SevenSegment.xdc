# Clock
set_property PACKAGE_PIN L16 [get_ports Clock_In]
set_property IOSTANDARD LVCMOS33 [get_ports Clock_In]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports Clock_In]

# Reset
set_property PACKAGE_PIN G15 [get_ports Reset]
set_property IOSTANDARD LVCMOS33 [get_ports Reset]

set_property PACKAGE_PIN M14 [get_ports Reset_Out]
set_property IOSTANDARD LVCMOS33 [get_ports Reset_Out]

# Seven segment
set_property PACKAGE_PIN T20 [get_ports {Anode[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[0]}]

set_property PACKAGE_PIN U20 [get_ports {Anode[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[1]}]

set_property PACKAGE_PIN V20 [get_ports {Anode[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[2]}]

set_property PACKAGE_PIN W20 [get_ports {Anode[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[3]}]

set_property PACKAGE_PIN V15 [get_ports {Anode[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[4]}]

set_property PACKAGE_PIN W15 [get_ports {Anode[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[5]}]

set_property PACKAGE_PIN T11 [get_ports {Anode[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[6]}]

set_property PACKAGE_PIN T10 [get_ports Kathode]
set_property IOSTANDARD LVCMOS33 [get_ports Kathode]
