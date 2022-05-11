//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sat Dec 11 13:57:47 2021
//Host        : Dakang running 64-bit major release  (build 9200)
//Command     : generate_target AXI4Lite_singleRW_sys.bd
//Design      : AXI4Lite_singleRW_sys
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "AXI4Lite_singleRW_sys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=AXI4Lite_singleRW_sys,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_bram_cntlr_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "AXI4Lite_singleRW_sys.hwdef" *) 
module AXI4Lite_singleRW_sys
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output FIFO_WRITE_full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [44:0]FIFO_WRITE_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input FIFO_WRITE_wr_en;
  output error_flag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.M_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.M_AXI_ACLK, ASSOCIATED_RESET m_axi_aresetn, CLK_DOMAIN AXI4Lite_singleRW_sys_m_axi_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input m_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.M_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.M_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input m_axi_aresetn;
  output rdata_notequal_wdata_error;
  output read_resp_error;
  output single_burst_wr_finish;
  output write_resp_error;

  wire AXI4LiteMaster_singl_0_error_flag;
  wire AXI4LiteMaster_singl_0_fwft_fifo_read_rd_en;
  wire [12:0]AXI4LiteMaster_singl_0_m_axi_ARADDR;
  wire [2:0]AXI4LiteMaster_singl_0_m_axi_ARPROT;
  wire AXI4LiteMaster_singl_0_m_axi_ARREADY;
  wire AXI4LiteMaster_singl_0_m_axi_ARVALID;
  wire [12:0]AXI4LiteMaster_singl_0_m_axi_AWADDR;
  wire [2:0]AXI4LiteMaster_singl_0_m_axi_AWPROT;
  wire AXI4LiteMaster_singl_0_m_axi_AWREADY;
  wire AXI4LiteMaster_singl_0_m_axi_AWVALID;
  wire AXI4LiteMaster_singl_0_m_axi_BREADY;
  wire [1:0]AXI4LiteMaster_singl_0_m_axi_BRESP;
  wire AXI4LiteMaster_singl_0_m_axi_BVALID;
  wire [31:0]AXI4LiteMaster_singl_0_m_axi_RDATA;
  wire AXI4LiteMaster_singl_0_m_axi_RREADY;
  wire [1:0]AXI4LiteMaster_singl_0_m_axi_RRESP;
  wire AXI4LiteMaster_singl_0_m_axi_RVALID;
  wire [31:0]AXI4LiteMaster_singl_0_m_axi_WDATA;
  wire AXI4LiteMaster_singl_0_m_axi_WREADY;
  wire [3:0]AXI4LiteMaster_singl_0_m_axi_WSTRB;
  wire AXI4LiteMaster_singl_0_m_axi_WVALID;
  wire AXI4LiteMaster_singl_0_rdata_notequal_wdata_error;
  wire AXI4LiteMaster_singl_0_read_resp_error;
  wire AXI4LiteMaster_singl_0_single_burst_wr_finish;
  wire AXI4LiteMaster_singl_0_write_resp_error;
  wire FIFO_WRITE_0_1_FULL;
  wire [44:0]FIFO_WRITE_0_1_WR_DATA;
  wire FIFO_WRITE_0_1_WR_EN;
  wire [11:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [44:0]fifo_generator_0_dout;
  wire fifo_generator_0_empty;
  wire m_axi_aclk_0_1;
  wire m_axi_aresetn_0_1;
  wire [11:0]smartconnect_0_M00_AXI_ARADDR;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [11:0]smartconnect_0_M00_AXI_AWADDR;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [0:0]util_vector_logic_0_Res;

  assign FIFO_WRITE_0_1_WR_DATA = FIFO_WRITE_wr_data[44:0];
  assign FIFO_WRITE_0_1_WR_EN = FIFO_WRITE_wr_en;
  assign FIFO_WRITE_full = FIFO_WRITE_0_1_FULL;
  assign error_flag = AXI4LiteMaster_singl_0_error_flag;
  assign m_axi_aclk_0_1 = m_axi_aclk;
  assign m_axi_aresetn_0_1 = m_axi_aresetn;
  assign rdata_notequal_wdata_error = AXI4LiteMaster_singl_0_rdata_notequal_wdata_error;
  assign read_resp_error = AXI4LiteMaster_singl_0_read_resp_error;
  assign single_burst_wr_finish = AXI4LiteMaster_singl_0_single_burst_wr_finish;
  assign write_resp_error = AXI4LiteMaster_singl_0_write_resp_error;
  AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1 AXI4LiteMaster_singl_0
       (.error_flag(AXI4LiteMaster_singl_0_error_flag),
        .fwft_fifo_read_dout(fifo_generator_0_dout),
        .fwft_fifo_read_empty(fifo_generator_0_empty),
        .fwft_fifo_read_rd_en(AXI4LiteMaster_singl_0_fwft_fifo_read_rd_en),
        .m_axi_aclk(m_axi_aclk_0_1),
        .m_axi_araddr(AXI4LiteMaster_singl_0_m_axi_ARADDR),
        .m_axi_aresetn(m_axi_aresetn_0_1),
        .m_axi_arprot(AXI4LiteMaster_singl_0_m_axi_ARPROT),
        .m_axi_arready(AXI4LiteMaster_singl_0_m_axi_ARREADY),
        .m_axi_arvalid(AXI4LiteMaster_singl_0_m_axi_ARVALID),
        .m_axi_awaddr(AXI4LiteMaster_singl_0_m_axi_AWADDR),
        .m_axi_awprot(AXI4LiteMaster_singl_0_m_axi_AWPROT),
        .m_axi_awready(AXI4LiteMaster_singl_0_m_axi_AWREADY),
        .m_axi_awvalid(AXI4LiteMaster_singl_0_m_axi_AWVALID),
        .m_axi_bready(AXI4LiteMaster_singl_0_m_axi_BREADY),
        .m_axi_bresp(AXI4LiteMaster_singl_0_m_axi_BRESP),
        .m_axi_bvalid(AXI4LiteMaster_singl_0_m_axi_BVALID),
        .m_axi_rdata(AXI4LiteMaster_singl_0_m_axi_RDATA),
        .m_axi_rready(AXI4LiteMaster_singl_0_m_axi_RREADY),
        .m_axi_rresp(AXI4LiteMaster_singl_0_m_axi_RRESP),
        .m_axi_rvalid(AXI4LiteMaster_singl_0_m_axi_RVALID),
        .m_axi_wdata(AXI4LiteMaster_singl_0_m_axi_WDATA),
        .m_axi_wready(AXI4LiteMaster_singl_0_m_axi_WREADY),
        .m_axi_wstrb(AXI4LiteMaster_singl_0_m_axi_WSTRB),
        .m_axi_wvalid(AXI4LiteMaster_singl_0_m_axi_WVALID),
        .rdata_notequal_wdata_error(AXI4LiteMaster_singl_0_rdata_notequal_wdata_error),
        .read_resp_error(AXI4LiteMaster_singl_0_read_resp_error),
        .single_burst_wr_finish(AXI4LiteMaster_singl_0_single_burst_wr_finish),
        .write_resp_error(AXI4LiteMaster_singl_0_write_resp_error));
  AXI4Lite_singleRW_sys_axi_bram_ctrl_0_1 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(m_axi_aclk_0_1),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_aresetn(m_axi_aresetn_0_1),
        .s_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID));
  AXI4Lite_singleRW_sys_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  AXI4Lite_singleRW_sys_fifo_generator_0_0 fifo_generator_0
       (.clk(m_axi_aclk_0_1),
        .din(FIFO_WRITE_0_1_WR_DATA),
        .dout(fifo_generator_0_dout),
        .empty(fifo_generator_0_empty),
        .full(FIFO_WRITE_0_1_FULL),
        .rd_en(AXI4LiteMaster_singl_0_fwft_fifo_read_rd_en),
        .rst(util_vector_logic_0_Res),
        .wr_en(FIFO_WRITE_0_1_WR_EN));
  AXI4Lite_singleRW_sys_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(AXI4LiteMaster_singl_0_m_axi_ARADDR),
        .S00_AXI_arprot(AXI4LiteMaster_singl_0_m_axi_ARPROT),
        .S00_AXI_arready(AXI4LiteMaster_singl_0_m_axi_ARREADY),
        .S00_AXI_arvalid(AXI4LiteMaster_singl_0_m_axi_ARVALID),
        .S00_AXI_awaddr(AXI4LiteMaster_singl_0_m_axi_AWADDR),
        .S00_AXI_awprot(AXI4LiteMaster_singl_0_m_axi_AWPROT),
        .S00_AXI_awready(AXI4LiteMaster_singl_0_m_axi_AWREADY),
        .S00_AXI_awvalid(AXI4LiteMaster_singl_0_m_axi_AWVALID),
        .S00_AXI_bready(AXI4LiteMaster_singl_0_m_axi_BREADY),
        .S00_AXI_bresp(AXI4LiteMaster_singl_0_m_axi_BRESP),
        .S00_AXI_bvalid(AXI4LiteMaster_singl_0_m_axi_BVALID),
        .S00_AXI_rdata(AXI4LiteMaster_singl_0_m_axi_RDATA),
        .S00_AXI_rready(AXI4LiteMaster_singl_0_m_axi_RREADY),
        .S00_AXI_rresp(AXI4LiteMaster_singl_0_m_axi_RRESP),
        .S00_AXI_rvalid(AXI4LiteMaster_singl_0_m_axi_RVALID),
        .S00_AXI_wdata(AXI4LiteMaster_singl_0_m_axi_WDATA),
        .S00_AXI_wready(AXI4LiteMaster_singl_0_m_axi_WREADY),
        .S00_AXI_wstrb(AXI4LiteMaster_singl_0_m_axi_WSTRB),
        .S00_AXI_wvalid(AXI4LiteMaster_singl_0_m_axi_WVALID),
        .aclk(m_axi_aclk_0_1),
        .aresetn(m_axi_aresetn_0_1));
  AXI4Lite_singleRW_sys_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(m_axi_aresetn_0_1),
        .Res(util_vector_logic_0_Res));
endmodule
