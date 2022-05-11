// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Dec 10 09:50:48 2021
// Host        : DESKTOP-73JDS9H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/OneDrive/VivadoPrj/myAXI4LiteMasterV1/myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_stub.v
// Design      : AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AXI4LiteMaster_singleRW_useFIFO_wrapper,Vivado 2021.2" *)
module AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1(single_burst_wr_finish, error_flag, 
  write_resp_error, read_resp_error, rdata_notequal_wdata_error, fwft_fifo_read_empty, 
  fwft_fifo_read_dout, fwft_fifo_read_rd_en, m_axi_awaddr, m_axi_awprot, m_axi_awvalid, 
  m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wvalid, m_axi_wready, m_axi_bresp, 
  m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arprot, m_axi_arvalid, m_axi_arready, 
  m_axi_rdata, m_axi_rresp, m_axi_rvalid, m_axi_rready, m_axi_aclk, m_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="single_burst_wr_finish,error_flag,write_resp_error,read_resp_error,rdata_notequal_wdata_error,fwft_fifo_read_empty,fwft_fifo_read_dout[44:0],fwft_fifo_read_rd_en,m_axi_awaddr[12:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[31:0],m_axi_wstrb[3:0],m_axi_wvalid,m_axi_wready,m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_araddr[12:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rvalid,m_axi_rready,m_axi_aclk,m_axi_aresetn" */;
  output single_burst_wr_finish;
  output error_flag;
  output write_resp_error;
  output read_resp_error;
  output rdata_notequal_wdata_error;
  input fwft_fifo_read_empty;
  input [44:0]fwft_fifo_read_dout;
  output fwft_fifo_read_rd_en;
  output [12:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [12:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
endmodule
