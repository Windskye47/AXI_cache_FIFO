// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Dec 10 09:50:48 2021
// Host        : DESKTOP-73JDS9H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/OneDrive/VivadoPrj/myAXI4LiteMasterV1/myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_sim_netlist.v
// Design      : AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1,AXI4LiteMaster_singleRW_useFIFO_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AXI4LiteMaster_singleRW_useFIFO_wrapper,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1
   (single_burst_wr_finish,
    error_flag,
    write_resp_error,
    read_resp_error,
    rdata_notequal_wdata_error,
    fwft_fifo_read_empty,
    fwft_fifo_read_dout,
    fwft_fifo_read_rd_en,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready,
    m_axi_aclk,
    m_axi_aresetn);
  output single_burst_wr_finish;
  output error_flag;
  output write_resp_error;
  output read_resp_error;
  output rdata_notequal_wdata_error;
  input fwft_fifo_read_empty;
  input [44:0]fwft_fifo_read_dout;
  output fwft_fifo_read_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) output [12:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *) output [12:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN AXI4Lite_singleRW_sys_m_axi_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_aclk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI4Lite_singleRW_sys_m_axi_aclk_0, INSERT_VIP 0" *) input m_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire error_flag;
  wire [44:0]fwft_fifo_read_dout;
  wire fwft_fifo_read_empty;
  wire fwft_fifo_read_rd_en;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire single_burst_wr_finish;

  assign m_axi_araddr[12:0] = fwft_fifo_read_dout[44:32];
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[12:0] = fwft_fifo_read_dout[44:32];
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[31:0] = fwft_fifo_read_dout[31:0];
  assign m_axi_wstrb[3] = \<const1> ;
  assign m_axi_wstrb[2] = \<const1> ;
  assign m_axi_wstrb[1] = \<const1> ;
  assign m_axi_wstrb[0] = \<const1> ;
  assign rdata_notequal_wdata_error = \<const0> ;
  assign read_resp_error = \<const0> ;
  assign write_resp_error = error_flag;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO_wrapper inst
       (.error_flag(error_flag),
        .fwft_fifo_read_empty(fwft_fifo_read_empty),
        .fwft_fifo_read_rd_en(fwft_fifo_read_rd_en),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready_reg(m_axi_bready),
        .m_axi_bresp(m_axi_bresp[1]),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .single_burst_wr_finish(single_burst_wr_finish));
endmodule

(* ORIG_REF_NAME = "AXI4LiteMaster_singleRW_useFIFO" *) 
module AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO
   (fwft_fifo_read_rd_en,
    single_burst_wr_finish,
    error_flag,
    m_axi_bready_reg_0,
    m_axi_wvalid,
    m_axi_awvalid,
    fwft_fifo_read_empty,
    m_axi_aclk,
    m_axi_bvalid,
    m_axi_bresp,
    m_axi_aresetn,
    m_axi_wready,
    m_axi_awready);
  output fwft_fifo_read_rd_en;
  output single_burst_wr_finish;
  output error_flag;
  output m_axi_bready_reg_0;
  output m_axi_wvalid;
  output m_axi_awvalid;
  input fwft_fifo_read_empty;
  input m_axi_aclk;
  input m_axi_bvalid;
  input [0:0]m_axi_bresp;
  input m_axi_aresetn;
  input m_axi_wready;
  input m_axi_awready;

  wire bnext;
  wire burst_write_active;
  wire burst_write_active_i_1_n_0;
  wire burst_write_active_r1;
  wire error_flag;
  wire fwft_fifo_read_empty;
  wire fwft_fifo_read_rd_en;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_i_1_n_0;
  wire m_axi_bready_i_1_n_0;
  wire m_axi_bready_reg_0;
  wire [0:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire m_axi_wvalid_i_1_n_0;
  wire p_0_in;
  wire single_burst_wr_finish;
  wire write_resp_error0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h01F1)) 
    burst_write_active_i_1
       (.I0(fwft_fifo_read_empty),
        .I1(burst_write_active_r1),
        .I2(burst_write_active),
        .I3(single_burst_wr_finish),
        .O(burst_write_active_i_1_n_0));
  FDRE burst_write_active_r1_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(burst_write_active),
        .Q(burst_write_active_r1),
        .R(1'b0));
  FDRE burst_write_active_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(burst_write_active_i_1_n_0),
        .Q(burst_write_active),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    fwft_fifo_read_rd_en_INST_0
       (.I0(single_burst_wr_finish),
        .I1(fwft_fifo_read_empty),
        .O(fwft_fifo_read_rd_en));
  LUT5 #(
    .INIT(32'h01FF0101)) 
    m_axi_awvalid_i_1
       (.I0(fwft_fifo_read_empty),
        .I1(burst_write_active_r1),
        .I2(burst_write_active),
        .I3(m_axi_awready),
        .I4(m_axi_awvalid),
        .O(m_axi_awvalid_i_1_n_0));
  FDRE m_axi_awvalid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(m_axi_awvalid_i_1_n_0),
        .Q(m_axi_awvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    m_axi_bready_i_1
       (.I0(m_axi_wready),
        .I1(m_axi_wvalid),
        .I2(m_axi_bready_reg_0),
        .I3(m_axi_bvalid),
        .O(m_axi_bready_i_1_n_0));
  FDRE m_axi_bready_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(m_axi_bready_i_1_n_0),
        .Q(m_axi_bready_reg_0),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h01FF0101)) 
    m_axi_wvalid_i_1
       (.I0(fwft_fifo_read_empty),
        .I1(burst_write_active_r1),
        .I2(burst_write_active),
        .I3(m_axi_wready),
        .I4(m_axi_wvalid),
        .O(m_axi_wvalid_i_1_n_0));
  FDRE m_axi_wvalid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(m_axi_wvalid_i_1_n_0),
        .Q(m_axi_wvalid),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    single_burst_wr_finish_i_1
       (.I0(m_axi_aresetn),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    single_burst_wr_finish_i_2
       (.I0(m_axi_bvalid),
        .I1(m_axi_bready_reg_0),
        .O(bnext));
  FDRE single_burst_wr_finish_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(bnext),
        .Q(single_burst_wr_finish),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    write_resp_error_i_1
       (.I0(m_axi_bready_reg_0),
        .I1(m_axi_bvalid),
        .I2(m_axi_bresp),
        .O(write_resp_error0));
  FDRE write_resp_error_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(write_resp_error0),
        .Q(error_flag),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "AXI4LiteMaster_singleRW_useFIFO_wrapper" *) 
module AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO_wrapper
   (fwft_fifo_read_rd_en,
    single_burst_wr_finish,
    error_flag,
    m_axi_bready_reg,
    m_axi_wvalid,
    m_axi_awvalid,
    fwft_fifo_read_empty,
    m_axi_aclk,
    m_axi_bvalid,
    m_axi_bresp,
    m_axi_aresetn,
    m_axi_wready,
    m_axi_awready);
  output fwft_fifo_read_rd_en;
  output single_burst_wr_finish;
  output error_flag;
  output m_axi_bready_reg;
  output m_axi_wvalid;
  output m_axi_awvalid;
  input fwft_fifo_read_empty;
  input m_axi_aclk;
  input m_axi_bvalid;
  input [0:0]m_axi_bresp;
  input m_axi_aresetn;
  input m_axi_wready;
  input m_axi_awready;

  wire error_flag;
  wire fwft_fifo_read_empty;
  wire fwft_fifo_read_rd_en;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready_reg;
  wire [0:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire single_burst_wr_finish;

  AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1_AXI4LiteMaster_singleRW_useFIFO u_AXI4LiteMaster_singleRW_useFIFO
       (.error_flag(error_flag),
        .fwft_fifo_read_empty(fwft_fifo_read_empty),
        .fwft_fifo_read_rd_en(fwft_fifo_read_rd_en),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready_reg_0(m_axi_bready_reg),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .single_burst_wr_finish(single_burst_wr_finish));
endmodule
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
