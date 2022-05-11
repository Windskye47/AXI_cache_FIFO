/*
 * @Author       : Xu Dakang
 * @Email        : XudaKang_up@qq.com
 * @Date         : 2021-12-09 16:14:44
 * @LastEditors  : Xu Dakang
 * @LastEditTime : 2021-12-10 09:46:43
 * @Filename     :
 * @Description  :
*/

/*
! 模块功能:
  使用AXI4-Lite接口写入数据再读取数据已确认写入成功且正确，
  要写入的地址和数据来源于FIFO，当FIFO非空时进行先写后读的操作
  读操作仅用在调试中，调试完毕后可以关闭读功能
* 使用注意:
  1.FIFO必须使用FWFT FIFO
  2.FIFO的读时钟必须和m_axi_aclk为同一个时钟
  3.FIFO的数据位宽必须 = ADDR_WIDTH + DATA_WIDTH，且高位存放地址，低位存放数据
  3.RD_CHECK_EN参数为单bit，只能赋值0或者1
  4.DATA_WIDTH参数只能是32或64，这是AXI类型的接口确定好的
*/


module  AXI4LiteMaster_singleRW_useFIFO
#(
  parameter ADDR_WIDTH = 32, // 可任意配置
  parameter DATA_WIDTH = 32, // 可选32/64

  parameter [0 : 0] RD_CHECK_EN = 1 // 读检查使能，必须设置位宽为1
)(
  output logic                       single_burst_wr_finish, // 单次写完成

  output logic                       error_flag,                 // 为高代表有错误发生
  output logic                       write_resp_error,           // 写相应错误
  output logic                       read_resp_error,            // 读响应错误
  output logic                       rdata_notequal_wdata_error, // 写入数据不等于读取数据错误

  // 与FIFO读接口对接，接收要写入的地址和数据，FIFO数据 = {ADDR, DATA}，高位地址，低位数据
  input  logic                                   fwft_fifo_read_empty,
  input  logic [ADDR_WIDTH + DATA_WIDTH -1 : 0]  fwft_fifo_read_dout,
  output logic                                   fwft_fifo_read_rd_en,


  //~ 写地址通道
  output logic [ADDR_WIDTH-1 : 0]    m_axi_awaddr,  // 写地址
  output logic [2 : 0]               m_axi_awprot,  // 写保护
  output logic                       m_axi_awvalid,
  input  logic                       m_axi_awready,

  //~ 写数据通道
  output logic [DATA_WIDTH-1 : 0]    m_axi_wdata,   // 写数据通道
  output logic [DATA_WIDTH/8-1 : 0]  m_axi_wstrb,   // 写数据有效字节位
  output logic                       m_axi_wvalid,
  input  logic                       m_axi_wready,

  //~ 写响应通道
  input  logic [1 : 0]               m_axi_bresp,   // 写响应
  input  logic                       m_axi_bvalid,
  output logic                       m_axi_bready,

  //~ 读地址通道
  output logic [ADDR_WIDTH-1 : 0]    m_axi_araddr,  // 读地址
  output logic [2 : 0]               m_axi_arprot,  // 读保护
  output logic                       m_axi_arvalid,
  input  logic                       m_axi_arready,

  //~ 读数据通道
  input  logic [DATA_WIDTH-1 : 0]    m_axi_rdata,   // 读数据
  input  logic [1 : 0]               m_axi_rresp,   // 读响应
  input  logic                       m_axi_rvalid,
  output logic                       m_axi_rready,

  input  logic  m_axi_aclk,
  input  logic  m_axi_aresetn
);


//++ 写开始与写完成 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
logic rnext; // 读数据信号，也意味着单次读完成
logic bnext;
always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn)
    single_burst_wr_finish <= 1'b0;
  // 读使能时，读响应后输出单次突发完成；读不使能时，写响应后输出单次突发完成
  else if ((RD_CHECK_EN && rnext) || (~RD_CHECK_EN && bnext))
    single_burst_wr_finish <= 1'b1;
  else
    single_burst_wr_finish <= 1'b0;
end


always_comb begin
  if (~fwft_fifo_read_empty && single_burst_wr_finish) // 写完成之后更新下一个数据
    fwft_fifo_read_rd_en = 1'b1;
  else
    fwft_fifo_read_rd_en = 1'b0;
end


logic start_single_burst_write; // 开始单次突发写
logic burst_write_active;       // 正在写
always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn)
    burst_write_active <= 1'b0;
  else if (start_single_burst_write)
    burst_write_active <= 1'b1;
  else if (single_burst_wr_finish)
    burst_write_active <= 1'b0;
  else
    burst_write_active <= burst_write_active;
end


logic burst_write_active_r1;
always_ff @(posedge m_axi_aclk) begin
  burst_write_active_r1 <= burst_write_active;
end


always_comb begin
  // 直接使用空信号防止读空，使用burst_write_active打一拍的信号，防止空拉高慢引起的毛刺，必须使用组合逻辑
  if (~fwft_fifo_read_empty && ~burst_write_active && ~burst_write_active_r1)
    start_single_burst_write <= 1'b1;
  else
    start_single_burst_write <= 1'b0;
end
//-- 写开始与写完成 ------------------------------------------------------------



//++ write_address 写地址 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
assign awnext = m_axi_awvalid && m_axi_awready; // 写地址有效


// 生成写地址有效信号
always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn)
    m_axi_awvalid <= 1'b0;
  else if (start_single_burst_write) // 传输开始后，马上写地址
    m_axi_awvalid <= 1'b1;
  else if (awnext) // 一次突发中，写地址只需要传一次
    m_axi_awvalid <= 1'b0;
  else
    m_axi_awvalid <= m_axi_awvalid;
end


always_comb begin
  m_axi_awaddr = fwft_fifo_read_dout[ADDR_WIDTH + DATA_WIDTH -1 : DATA_WIDTH]; // FIFO的高位部分为地址
  m_axi_awprot = '0;
end
//-- write_address 写地址 ------------------------------------------------------------



//++ write_data 写数据 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
assign wnext = m_axi_wvalid && m_axi_wready; // 写数据有效


always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn)
    m_axi_wvalid <= 1'b0;
  else if (start_single_burst_write) // 写地址和写数据可以是同时的，所以不能设置写地址完成后再写数据
    m_axi_wvalid <= 1'b1;
  else if (wnext)
    m_axi_wvalid <= 1'b0;
  else
    m_axi_wvalid <= m_axi_wvalid;
end


always_comb begin
  m_axi_wstrb = '1; // 所有数据位均有效
  m_axi_wdata = fwft_fifo_read_dout[DATA_WIDTH - 1 : 0]; // FWFT FIFO低位为数据
end
//-- write_data 写数据 ------------------------------------------------------------



//++ write_response 写响应 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
assign bnext = m_axi_bvalid && m_axi_bready; // 写响应有效


always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn)
    m_axi_bready <= 1'b0;
  else if (wnext) // 数据传完后置1
    m_axi_bready <= 1'b1;
  else if (bnext) // 接收响应后置0
    m_axi_bready <= 1'b0;
  else
    m_axi_bready <= m_axi_bready;
end


always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn)
    write_resp_error <= 1'b0;
  else if (bnext && (m_axi_bresp[1] == 1'b1)) // 接收写响应报错
    write_resp_error <= 1'b1;
  else
    write_resp_error <= 1'b0;
end
//-- write_response 写响应 ------------------------------------------------------------



//++ 读开始 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
logic start_single_burst_read; // 读开始
logic burst_read_active;       // 正在读
always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn || ~RD_CHECK_EN)
    burst_read_active <= 1'b0;
  else if (start_single_burst_read)
    burst_read_active <= 1'b1;
  else if (rnext)
    burst_read_active <= 1'b0;
  else
    burst_read_active <= burst_read_active;
end


always_comb begin
  if (~RD_CHECK_EN)
    start_single_burst_read = 1'b0;
  else if (bnext && ~burst_read_active) // 当写响应完成，且不是正在读时，开始读
    start_single_burst_read = 1'b1;
  else
    start_single_burst_read = 1'b0;
end
//-- 读开始 ------------------------------------------------------------



//++ read_address 读地址 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
assign arnext = m_axi_arready && m_axi_arvalid; // 读地址有效


always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn || ~RD_CHECK_EN)
    m_axi_arvalid <= 1'b0;
  else if (start_single_burst_read)
    m_axi_arvalid <= 1'b1;
  else if (arnext) // 一次突发读中，读地址只需传一次
    m_axi_arvalid <= 1'b0;
  else
    m_axi_arvalid <= m_axi_arvalid;
end


always_comb begin
  m_axi_araddr = m_axi_awaddr; // 读地址等于写地址
  m_axi_arprot = '0;
end
//-- read_address 读地址 ------------------------------------------------------------



//++ read_data 读数据 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
assign rnext = m_axi_rvalid && m_axi_rready; // 读数据有效


always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn || ~RD_CHECK_EN)
    m_axi_rready <= 1'b0;
  else if (start_single_burst_read) // 读开始，读数据ready置高
    m_axi_rready <= 1'b1;
  else if (rnext) // 一个数据读完后，读数据ready置低
    m_axi_rready <= 1'b0;
  else
    m_axi_rready <= m_axi_rready;
end


always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn || ~RD_CHECK_EN)
    rdata_notequal_wdata_error <= 1'b0;
  else if (rnext && (m_axi_rdata != m_axi_wdata))
    rdata_notequal_wdata_error <= 1'b1;
  else
    rdata_notequal_wdata_error <= 1'b0;
end


always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn || ~RD_CHECK_EN)
    read_resp_error <= 1'b0;
  else if (rnext && (m_axi_rresp[1] == 1'b1))
    read_resp_error <= 1'b1;
  else
    read_resp_error <= 1'b0;
end


// 生成单bit信号, 指示是否出现错误
assign error_flag = write_resp_error || rdata_notequal_wdata_error || read_resp_error;
//-- read_data 读数据 ------------------------------------------------------------



endmodule