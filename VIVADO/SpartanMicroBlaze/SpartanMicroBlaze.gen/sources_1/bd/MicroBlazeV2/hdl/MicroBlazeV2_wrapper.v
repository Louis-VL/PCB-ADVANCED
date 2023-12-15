//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Fri Dec 15 09:35:43 2023
//Host        : LAPTOP-K67JHBA7 running 64-bit major release  (build 9200)
//Command     : generate_target MicroBlazeV2_wrapper.bd
//Design      : MicroBlazeV2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MicroBlazeV2_wrapper
   (RST,
    RsRx,
    RsTx,
    clk100Mhz,
    led);
  input RST;
  input RsRx;
  output RsTx;
  input clk100Mhz;
  output [0:0]led;

  wire RST;
  wire RsRx;
  wire RsTx;
  wire clk100Mhz;
  wire [0:0]led;

  MicroBlazeV2 MicroBlazeV2_i
       (.RST(RST),
        .RsRx(RsRx),
        .RsTx(RsTx),
        .clk100Mhz(clk100Mhz),
        .led(led));
endmodule
