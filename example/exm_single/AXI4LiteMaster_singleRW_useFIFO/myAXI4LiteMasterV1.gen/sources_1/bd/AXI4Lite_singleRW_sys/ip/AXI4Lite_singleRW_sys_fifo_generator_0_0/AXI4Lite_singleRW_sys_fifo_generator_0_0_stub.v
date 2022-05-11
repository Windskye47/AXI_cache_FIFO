// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Dec  9 20:27:15 2021
// Host        : Dakang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Onedrive/VivadoPrj/myAXI4LiteMasterV1/myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_fifo_generator_0_0/AXI4Lite_singleRW_sys_fifo_generator_0_0_stub.v
// Design      : AXI4Lite_singleRW_sys_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *)
module AXI4Lite_singleRW_sys_fifo_generator_0_0(clk, rst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[44:0],wr_en,rd_en,dout[44:0],full,empty" */;
  input clk;
  input rst;
  input [44:0]din;
  input wr_en;
  input rd_en;
  output [44:0]dout;
  output full;
  output empty;
endmodule
