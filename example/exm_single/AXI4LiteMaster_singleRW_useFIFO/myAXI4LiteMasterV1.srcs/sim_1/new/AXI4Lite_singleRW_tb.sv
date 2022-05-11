/*
 * @Author       : Xu Dakang
 * @Email        : XudaKang_up@qq.com
 * @Date         : 2021-12-09 19:46:44
 * @LastEditors  : Xu Dakang
 * @LastEditTime : 2021-12-11 13:48:25
 * @Filename     :
 * @Description  :
*/


module AXI4Lite_singleRW_tb ();

timeunit 1ns;
timeprecision 1ps;

localparam ADDR_WIDTH = 13;
localparam DIN_WIDTH = 32;

logic FIFO_WRITE_full;
logic [ADDR_WIDTH + DIN_WIDTH-1 : 0] FIFO_WRITE_wr_data;
logic FIFO_WRITE_wr_en;
logic error_flag;
logic m_axi_aclk;
logic m_axi_aresetn;
logic rdata_notequal_wdata_error;
logic read_resp_error;
logic single_burst_wr_finish;
logic write_resp_error;

AXI4Lite_singleRW_sys_wrapper AXI4Lite_singleRW_sys_wrapper_inst (.*);


// 生成时钟
localparam CLKT = 2;
initial begin
  m_axi_aclk = 0;
  forever #(CLKT / 2) m_axi_aclk = ~m_axi_aclk;
end


// 导入输入波形文件 路径需要修改
string din_path = "F:/Onedrive/VivadoPrj/AXI4LiteMaster_singleRW_useFIFO/myAXI4LiteMasterV1.srcs/sim_1/new/sin.txt";

localparam DATA_NUM = 10000; // 数据量, 也就是txt文件的行数, 如果此参数大于数据行数, 读取到的内容为不定态
logic [DIN_WIDTH-1 : 0] din_wave_data [DATA_NUM]; // 读取输入波形数据
initial begin
  $readmemb(din_path, din_wave_data, 0, DATA_NUM-1); // vivado读取txt文件
end



// 写使能
logic start;
logic [ADDR_WIDTH-1 : 0] addr;
always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn)
    FIFO_WRITE_wr_en <= 1'b0;
  else if (start || single_burst_wr_finish)
    FIFO_WRITE_wr_en <= 1'b1;
  else
    FIFO_WRITE_wr_en <= 1'b0;
end


// 写地址
always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn)
    addr <= '0;
  else if (start || single_burst_wr_finish)
    addr <= addr + 1'b1;
  else
    addr <= addr;
end


// 写数据
always_ff @(posedge m_axi_aclk) begin
  if (~m_axi_aresetn)
    FIFO_WRITE_wr_data <= '0;
  else if (start || single_burst_wr_finish)
    FIFO_WRITE_wr_data <= {addr, din_wave_data[addr]};
  else
    FIFO_WRITE_wr_data <= FIFO_WRITE_wr_data;
end


// 控制复位，仿真开始，仿真结束信号
initial begin
  m_axi_aresetn = 0;
  #(CLKT * 10)  m_axi_aresetn = 1;

  wait(FIFO_WRITE_full == 0)
  start = 1;
  #(CLKT) start = 0;
  wait (addr == 5000);

  #(CLKT * 1000) $stop;
end


endmodule