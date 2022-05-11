module  fifo(clk,rstp,din,writep,readp,dout,emptyp,fullp
);
input           clk;
input           rstp;      // 复位信号
input[15:0]     din;
input           readp;
input           writep;
output[15:0]    dout;
output          emptyp;
output          fullp;
parameter       DEPTH = 2,
                MAX_COUNT=2'b11;      //定义地址最大值
               
reg             emptyp;
reg             fullp;
reg[15:0]       dout;
reg[(DEPTH-1):0]    tail;
reg[(DEPTH-1):0]    head;
reg[(DEPTH-1):0]    count;
reg[15:0]           fifomem[0:MAX_COUNT];       //  定义fifo存储器，4个16位的存储器

// dout被赋给tail指针指向的数值
always @(posedge clk)  begin
  if(rstp==1) begin
    dout <= 16'h0000;       // 复位信号有效置0
  end
  else begin
    dout <= fifomem[tail];   //将fifomem中第tail个单元给dout
  end
end

// 写入数据
always @(posedge clk) begin
    if(rstp==1'b0 && writep == 1'b1 && fullp == 1'b0) begin
        fifomem[head]<=din;      // 写入
    end
end

// head指针递增
always @(posedge clk) begin
    if(rstp==1'b1) begin
        head<=2'b00;
    end
    else begin
        if(writep==1'b1 && fullp==1'b0) begin
        head<=head+1;
        end
    end
end

//tail指针递增
always @(posedge clk) begin
    if(rstp==1'b1) begin
        tail<=2'b00;
    end
    else begin
        if(readp==1'b1 && emptyp==1'b0) begin
        tail<=tail+1;
        end
    end
end

// 计数器
always @(posedge clk) begin
   if (rstp == 1'b1) begin
      count <= 2'b00;
   end
   else begin
      case ({readp, writep})
         2'b00: count <= count;
         2'b01: 
            if (count != MAX_COUNT) 
               count <= count + 1;     //为写状态时计数器进行加法计数
         2'b10: 
            if (count != 2'b00)
               count <= count - 1;    //为读状态计数器进行减法计数
         2'b11:
           count <= count;
      endcase
   end
end

// empty指针
always @(count) begin
   if (count == 2'b00)
      emptyp <= 1'b1;      //count为0时emptyp赋为1
   else
      emptyp <= 1'b0;
end

// fullp指针
always @(count) begin
   if (count == MAX_COUNT)
      fullp <= 1'b1;                     //计数到最大时fullp赋为1
   else
      fullp <= 1'b0;
end

endmodule
