// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Dec 13 14:45:32 2023
// Host        : LAPTOP-K67JHBA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/louis/Documents/Github/PCB
//               ADVANCED/PCB-ADVANCED/VIVADO/SpartanMicroBlaze/SpartanMicroBlaze.gen/sources_1/bd/MicroBlazeV2/ip/MicroBlazeV2_lmb_bram_0/MicroBlazeV2_lmb_bram_0_sim_netlist.v}
// Design      : MicroBlazeV2_lmb_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s6ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MicroBlazeV2_lmb_bram_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module MicroBlazeV2_lmb_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "MicroBlazeV2_lmb_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  MicroBlazeV2_lmb_bram_0_blk_mem_gen_v8_4_6 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59904)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
