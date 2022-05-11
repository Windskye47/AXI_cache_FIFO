module  test_fifo;

reg         clk;
reg         rstp;
reg [15:0]  din;
reg         readp;
reg         writep;
wire [15:0] dout;
wire        emptyp;
wire        fullp;

reg [15:0]  value;
fifo U1 (.clk(clk),.rstp(rstp),.din(din),.readp(readp),.writep(writep),.dout(dout),
   .emptyp(emptyp),.fullp(fullp));

// 读任务
task read_word;
begin
   @(negedge clk);
   readp = 1;
   @(posedge clk) #5;
   readp = 0;
end
endtask
   
// 写任务
task write_word;
input [15:0]    value;
begin
   @(negedge clk);
   din = value;
   writep = 1;
   @(posedge clk);
   #5;
   din = 16'hzzzz;
   writep = 0;
end
endtask


initial begin
   clk = 0;
   forever begin
      #10 clk = 1;
      #10 clk = 0;
   end
end


initial begin
 //test1;
   test2;  //调用测试模块2
end


task test1;
begin
   din = 16'hzzzz;
   writep = 0;
   readp = 0;
   rstp = 1;
   #50 rstp = 0;
   #50;
   write_word (16'h1111);
   write_word (16'h2222);
   write_word (16'h3333);   //写入3个数据
   read_word;
   read_word;               //读两个
   write_word (16'h4444);   //在写一个数据
   repeat (6) begin
      read_word;
end
   write_word (16'h0001);
   write_word (16'h0002);
   write_word (16'h0003);
   write_word (16'h0004);
   write_word (16'h0005);
   write_word (16'h0006);
   write_word (16'h0007);
   write_word (16'h0008);
repeat (6) begin
      read_word;
   end
end
endtask


task test2;
reg [15:0] writer_counter;
begin
   writer_counter = 16'h0001;
   din = 16'hzzzz;
   writep = 0;
   readp = 0;
   rstp = 1;
   #50   rstp = 0;
   #50;
   fork
     //写数据
    begin
         repeat (500) begin
            @(negedge clk);
            if (fullp == 1'b0) begin
               write_word (writer_counter);
               #5;
               writer_counter = writer_counter + 1;
            end
               #50;
         end
    end
      //读数据
      begin
         forever begin
            @(negedge clk);
            if (emptyp == 1'b0) begin
               read_word;
            end  
          #50;
         end
      end
   join
end
endtask


endmodule
