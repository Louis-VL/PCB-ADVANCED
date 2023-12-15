## Clock signal
set_property -dict { PACKAGE_PIN H13    IOSTANDARD LVCMOS33 } [get_ports { clk100Mhz }];
create_clock -add -name sys_clk -period 10 -waveform {0 5} [get_ports {clk100Mhz}];

#USB-RS232 Interface
set_property -dict { PACKAGE_PIN P3     IOSTANDARD LVCMOS33 } [get_ports { RsRx }];
set_property -dict { PACKAGE_PIN P4     IOSTANDARD LVCMOS33 } [get_ports { RsTx }];

## Switches
set_property -dict { PACKAGE_PIN N14    IOSTANDARD LVCMOS33 } [get_ports { RST }];
	
##LED	0
set_property -dict {PACKAGE_PIN J14    IOSTANDARD LVCMOS33 } [get_ports { led }];
	