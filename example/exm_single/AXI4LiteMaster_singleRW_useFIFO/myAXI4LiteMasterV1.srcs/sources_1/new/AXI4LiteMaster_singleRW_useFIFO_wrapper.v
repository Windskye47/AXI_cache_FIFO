/*
 * @Author       : Xu Dakang
 * @Email        : XudaKang_up@qq.com
 * @Date         : 2021-12-09 19:16:56
 * @LastEditors  : Xu Dakang
 * @LastEditTime : 2021-12-09 19:39:21
 * @Filename     :
 * @Description  :
*/


module AXI4LiteMaster_singleRW_useFIFO_wrapper
#(
  parameter ADDR_WIDTH = 32, // 可任意配置
  parameter DATA_WIDTH = 32, // 可选32/64

  parameter RD_CHECK_EN = 0 // 读检查使能
)(
  output wire                       single_burst_wr_finish, // 单次写完成

  output wire                       error_flag,                 // 为高代表有错误发生
  output wire                       write_resp_error,           // 写相应错误
  output wire                       read_resp_error,            // 读响应错误
  output wire                       rdata_notequal_wdata_error, // 写入数据不等于读取数据错误

  // 与FIFO读接口对接，接收要写入的地址和数据，FIFO数据 = {ADDR, DATA}，高位地址，低位数据
  input  wire                                   fwft_fifo_read_empty,
  input  wire [ADDR_WIDTH + DATA_WIDTH -1 : 0]  fwft_fifo_read_dout,
  output wire                                   fwft_fifo_read_rd_en,


  //~ 写地址通道
  output wire [ADDR_WIDTH-1 : 0]    m_axi_awaddr,  // 写地址
  output wire [2 : 0]               m_axi_awprot,  // 写保护
  output wire                       m_axi_awvalid,
  input  wire                       m_axi_awready,

  //~ 写数据通道
  output wire [DATA_WIDTH-1 : 0]    m_axi_wdata,   // 写数据通道
  output wire [DATA_WIDTH/8-1 : 0]  m_axi_wstrb,   // 写数据有效字节位
  output wire                       m_axi_wvalid,
  input  wire                       m_axi_wready,

  //~ 写响应通道
  input  wire [1 : 0]               m_axi_bresp,   // 写响应
  input  wire                       m_axi_bvalid,
  output wire                       m_axi_bready,

  //~ 读地址通道
  output wire [ADDR_WIDTH-1 : 0]    m_axi_araddr,  // 读地址
  output wire [2 : 0]               m_axi_arprot,  // 读保护
  output wire                       m_axi_arvalid,
  input  wire                       m_axi_arready,

  //~ 读数据通道
  input  wire [DATA_WIDTH-1 : 0]    m_axi_rdata,   // 读数据
  input  wire [1 : 0]               m_axi_rresp,   // 读响应
  input  wire                       m_axi_rvalid,
  output wire                       m_axi_rready,

  input  wire  m_axi_aclk,
  input  wire  m_axi_aresetn
);


AXI4LiteMaster_singleRW_useFIFO #(
  .ADDR_WIDTH  (ADDR_WIDTH  ),
  .DATA_WIDTH  (DATA_WIDTH  ),
  .RD_CHECK_EN (RD_CHECK_EN )
) u_AXI4LiteMaster_singleRW_useFIFO(
  .single_burst_wr_finish     (single_burst_wr_finish     ),
  .error_flag                 (error_flag                 ),
  .write_resp_error           (write_resp_error           ),
  .read_resp_error            (read_resp_error            ),
  .rdata_notequal_wdata_error (rdata_notequal_wdata_error ),
  .fwft_fifo_read_empty            (fwft_fifo_read_empty            ),
  .fwft_fifo_read_dout             (fwft_fifo_read_dout             ),
  .fwft_fifo_read_rd_en            (fwft_fifo_read_rd_en            ),
  .m_axi_awaddr               (m_axi_awaddr               ),
  .m_axi_awprot               (m_axi_awprot               ),
  .m_axi_awvalid              (m_axi_awvalid              ),
  .m_axi_awready              (m_axi_awready              ),
  .m_axi_wdata                (m_axi_wdata                ),
  .m_axi_wstrb                (m_axi_wstrb                ),
  .m_axi_wvalid               (m_axi_wvalid               ),
  .m_axi_wready               (m_axi_wready               ),
  .m_axi_bresp                (m_axi_bresp                ),
  .m_axi_bvalid               (m_axi_bvalid               ),
  .m_axi_bready               (m_axi_bready               ),
  .m_axi_araddr               (m_axi_araddr               ),
  .m_axi_arprot               (m_axi_arprot               ),
  .m_axi_arvalid              (m_axi_arvalid              ),
  .m_axi_arready              (m_axi_arready              ),
  .m_axi_rdata                (m_axi_rdata                ),
  .m_axi_rresp                (m_axi_rresp                ),
  .m_axi_rvalid               (m_axi_rvalid               ),
  .m_axi_rready               (m_axi_rready               ),
  .m_axi_aclk                 (m_axi_aclk                 ),
  .m_axi_aresetn              (m_axi_aresetn              )
);

endmodule
