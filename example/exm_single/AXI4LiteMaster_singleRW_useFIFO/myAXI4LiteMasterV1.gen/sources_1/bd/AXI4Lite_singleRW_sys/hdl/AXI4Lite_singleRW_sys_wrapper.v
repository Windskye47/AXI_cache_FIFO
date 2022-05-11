//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sat Dec 11 13:57:47 2021
//Host        : Dakang running 64-bit major release  (build 9200)
//Command     : generate_target AXI4Lite_singleRW_sys_wrapper.bd
//Design      : AXI4Lite_singleRW_sys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI4Lite_singleRW_sys_wrapper
   (FIFO_WRITE_full,
    FIFO_WRITE_wr_data,
    FIFO_WRITE_wr_en,
    error_flag,
    m_axi_aclk,
    m_axi_aresetn,
    rdata_notequal_wdata_error,
    read_resp_error,
    single_burst_wr_finish,
    write_resp_error);
  output FIFO_WRITE_full;
  input [44:0]FIFO_WRITE_wr_data;
  input FIFO_WRITE_wr_en;
  output error_flag;
  input m_axi_aclk;
  input m_axi_aresetn;
  output rdata_notequal_wdata_error;
  output read_resp_error;
  output single_burst_wr_finish;
  output write_resp_error;

  wire FIFO_WRITE_full;
  wire [44:0]FIFO_WRITE_wr_data;
  wire FIFO_WRITE_wr_en;
  wire error_flag;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire rdata_notequal_wdata_error;
  wire read_resp_error;
  wire single_burst_wr_finish;
  wire write_resp_error;

  AXI4Lite_singleRW_sys AXI4Lite_singleRW_sys_i
       (.FIFO_WRITE_full(FIFO_WRITE_full),
        .FIFO_WRITE_wr_data(FIFO_WRITE_wr_data),
        .FIFO_WRITE_wr_en(FIFO_WRITE_wr_en),
        .error_flag(error_flag),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_aresetn(m_axi_aresetn),
        .rdata_notequal_wdata_error(rdata_notequal_wdata_error),
        .read_resp_error(read_resp_error),
        .single_burst_wr_finish(single_burst_wr_finish),
        .write_resp_error(write_resp_error));
endmodule
