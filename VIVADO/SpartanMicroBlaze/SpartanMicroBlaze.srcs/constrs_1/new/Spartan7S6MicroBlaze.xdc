## This file is a general .xdc for the Sparten dev board by Louis Van Lommel
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project


## Clock signal
set_property PACKAGE_PIN H13 [get_ports clk100Mhz]
    #set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk_IBUF}]
	set_property IOSTANDARD LVCMOS33 [get_ports clk100Mhz]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk100Mhz]
## period = 1/100M // waveform = period/2 == Duty Cycle


#USB-RS232 Interface
set_property PACKAGE_PIN P3 [get_ports RsRx]
	set_property IOSTANDARD LVCMOS33 [get_ports RsRx]
set_property PACKAGE_PIN P4 [get_ports RsTx]
	set_property IOSTANDARD LVCMOS33 [get_ports RsTx]	
##How to initialize FTDI Devices (JTAG)
##https://docs.xilinx.com/r/2022.1-English/ug908-vivado-programming-debugging/Programming-FTDI-Devices-for-Vivado-Hardware-Manager-Support
##program_ftdi write -ftdi FT2232H -vendor "my vendor co" -board "my board" -m "my mfg co" -desc "my product desc" -serial FT8SX3JC	
	
	
## Switches
set_property PACKAGE_PIN N14 [get_ports sw[0]]
	set_property IOSTANDARD LVCMOS33 [get_ports sw[0]]
set_property PACKAGE_PIN G14 [get_ports {sw[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
set_property PACKAGE_PIN B6 [get_ports {sw[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
set_property PACKAGE_PIN B5 [get_ports {sw[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
set_property PACKAGE_PIN B3 [get_ports {sw[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
set_property PACKAGE_PIN B2 [get_ports {sw[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
set_property PACKAGE_PIN C4 [get_ports {sw[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
set_property PACKAGE_PIN D3 [get_ports {RST}]
	set_property IOSTANDARD LVCMOS33 [get_ports {RST}]
	
	
## LEDs
set_property PACKAGE_PIN J14 [get_ports {led[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN F14 [get_ports {led[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN A5 [get_ports {led[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property PACKAGE_PIN A4 [get_ports {led[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property PACKAGE_PIN A3 [get_ports {led[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property PACKAGE_PIN A2 [get_ports {led[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property PACKAGE_PIN C3 [get_ports {led[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property PACKAGE_PIN D4 [get_ports {led[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]

	
##Header JA (Header 1)
set_property PACKAGE_PIN J2 [get_ports {JA[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JA[0]}]
set_property PACKAGE_PIN J1 [get_ports {JA[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JA[1]}]
set_property PACKAGE_PIN H2 [get_ports {JA[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JA[2]}]
set_property PACKAGE_PIN H1 [get_ports {JA[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JA[3]}]
set_property PACKAGE_PIN G1 [get_ports {JA[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JA[4]}]
set_property PACKAGE_PIN F1 [get_ports {JA[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JA[5]}]
set_property PACKAGE_PIN D1 [get_ports {JA[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JA[6]}]
set_property PACKAGE_PIN C1 [get_ports {JA[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JA[7]}]


##Header JB (header 2)
set_property PACKAGE_PIN M11 [get_ports {JB[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JB[0]}]
set_property PACKAGE_PIN M12 [get_ports {JB[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JB[1]}]
set_property PACKAGE_PIN P12 [get_ports {JB[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JB[2]}]
set_property PACKAGE_PIN P13 [get_ports {JB[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JB[3]}]
set_property PACKAGE_PIN P10 [get_ports {JB[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JB[4]}]
set_property PACKAGE_PIN P11 [get_ports {JB[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JB[5]}]
set_property PACKAGE_PIN N10 [get_ports {JB[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JB[6]}]
set_property PACKAGE_PIN N11 [get_ports {JB[7]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {JB[7]}]


##How to store code in QSPI FLASH memory MX25V1635FM2I
##https://docs.xilinx.com/r/en-US/xapp586-spi-flash/Programming-the-SPI-Flash-Vivado-Design-Suite-IDE-Example
##Creating the .bin file with Vivado is easy. Go to "Tools > Settings > Bitstream" and check "-bin-file".

##Quad SPI Flash
##Note that CCLK_0 cannot be placed in 7 series devices. You can access it using the 
##STARTUPE2 primitive. https://docs.xilinx.com/r/en-US/ug470_7Series_Config/STARTUPE2-Primitive
#set_property PACKAGE_PIN B11 [get_ports {QspiDQ[0]}]
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDQ[0]}]
#set_property PACKAGE_PIN B12 [get_ports {QspiDQ[1]}]
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDQ[1]}]
#set_property PACKAGE_PIN D10 [get_ports {QspiDQ[2]}]
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDQ[2]}]
#set_property PACKAGE_PIN C10 [get_ports {QspiDQ[3]}]
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDQ[3]}]
#set_property PACKAGE_PIN C11 [get_ports QspiCSn]
	#set_property IOSTANDARD LVCMOS33 [get_ports QspiCSn]
	

## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
	