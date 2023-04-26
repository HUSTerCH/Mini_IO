set_property PACKAGE_PIN C17 [get_ports {SS1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SS1[0]}]

set_property PACKAGE_PIN D18 [get_ports MISO]
set_property IOSTANDARD LVCMOS33 [get_ports MISO]

set_property PACKAGE_PIN G17 [get_ports SCLK1]
set_property IOSTANDARD LVCMOS33 [get_ports SCLK1]


set_property PACKAGE_PIN D14 [get_ports {SS0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SS0[0]}]

set_property PACKAGE_PIN F16 [get_ports MOSI]
set_property IOSTANDARD LVCMOS33 [get_ports MOSI]

set_property PACKAGE_PIN H14 [get_ports SCLK0]
set_property IOSTANDARD LVCMOS33 [get_ports SCLK0]


set_property PACKAGE_PIN M18 [get_ports {push_buttons_5bits_tri_i[0]}]
set_property PACKAGE_PIN P17 [get_ports {push_buttons_5bits_tri_i[1]}]
set_property PACKAGE_PIN P18 [get_ports {push_buttons_5bits_tri_i[2]}]
set_property PACKAGE_PIN N17 [get_ports {push_buttons_5bits_tri_i[4]}]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
