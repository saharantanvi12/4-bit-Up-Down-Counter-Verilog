##================ CLOCK =================
set_property PACKAGE_PIN W6 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk [get_ports clk]


##================ SWITCHES (data_in[3:0]) =================
set_property PACKAGE_PIN U2 [get_ports {data_in[0]}]
set_property PACKAGE_PIN U1 [get_ports {data_in[1]}]
set_property PACKAGE_PIN T2 [get_ports {data_in[2]}]
set_property PACKAGE_PIN T1 [get_ports {data_in[3]}]


##================ BUTTONS =================
set_property PACKAGE_PIN J3 [get_ports load]
set_property PACKAGE_PIN J5 [get_ports en_p]
set_property PACKAGE_PIN H2 [get_ports en_t]
set_property PACKAGE_PIN J1 [get_ports up_down]


##================ LED OUTPUTS =================
set_property PACKAGE_PIN G3 [get_ports {count_out[0]}]
set_property PACKAGE_PIN G2 [get_ports {count_out[1]}]
set_property PACKAGE_PIN F2 [get_ports {count_out[2]}]
set_property PACKAGE_PIN F1 [get_ports {count_out[3]}]


##================ RCO OUTPUT =================
set_property PACKAGE_PIN E1 [get_ports rco_bar]


##================ IO STANDARDS =================
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports load]
set_property IOSTANDARD LVCMOS33 [get_ports en_p]
set_property IOSTANDARD LVCMOS33 [get_ports en_t]
set_property IOSTANDARD LVCMOS33 [get_ports up_down]
set_property IOSTANDARD LVCMOS33 [get_ports {count_out[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports rco_bar]
