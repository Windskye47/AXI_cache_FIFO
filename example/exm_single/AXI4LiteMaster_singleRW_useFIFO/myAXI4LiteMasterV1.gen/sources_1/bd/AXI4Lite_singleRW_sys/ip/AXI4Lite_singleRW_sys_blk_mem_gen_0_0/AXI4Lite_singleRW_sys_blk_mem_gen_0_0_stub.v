// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Dec  9 21:01:17 2021
// Host        : Dakang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Onedrive/VivadoPrj/myAXI4LiteMasterV1/myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_blk_mem_gen_0_0/AXI4Lite_singleRW_sys_blk_mem_gen_0_0_stub.v
// Design      : AXI4Lite_singleRW_sys_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *)
module AXI4Lite_singleRW_sys_blk_mem_gen_0_0(clka, rsta, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,ena,wea[3:0],addra[31:0],dina[31:0],douta[31:0]" */;
  input clka;
  input rsta;
  input ena;
  input [3:0]wea;
  input [31:0]addra;
  input [31:0]dina;
  output [31:0]douta;
endmodule
