// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Dec 13 14:45:30 2023
// Host        : LAPTOP-K67JHBA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MicroBlazeV2_lmb_bram_0_sim_netlist.v
// Design      : MicroBlazeV2_lmb_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s6ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MicroBlazeV2_lmb_bram_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59888)
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
