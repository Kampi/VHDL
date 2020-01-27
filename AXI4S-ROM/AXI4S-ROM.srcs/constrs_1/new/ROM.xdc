set_property IOSTANDARD LVCMOS33 [get_ports Resetn]
set_property IOSTANDARD LVCMOS33 [get_ports Clock]

set_property PACKAGE_PIN L16 [get_ports Clock]
set_property PACKAGE_PIN G15 [get_ports Resetn]


set_property IOSTANDARD LVCMOS33 [get_ports Output]
set_property PACKAGE_PIN M14 [get_ports Output]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets Clock_IBUF_BUFG]
