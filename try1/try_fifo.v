module  fifo(clk,rstp,din,writep,readp,dout,emptyp,fullp
);
input           clk;
input           rstp;      // ¸´Î»ÐÅºÅ
input[15:0]     din;
input           readp;
input           writep;
output[15:0]    dout;
output          emptyp;
output          fullp;
parameter       DEPTH = 2,
                MAX_COUNT=2'b11;      //¶¨ÒåµØÖ·×î´óÖµ
               
reg             emptyp;
reg             fullp;
reg[15:0]       dout;
reg[(DEPTH-1):0]    tail;
reg[(DEPTH-1):0]    head;
reg[(DEPTH-1):0]    count;
reg[15:0]           fifomem[0:MAX_COUNT];       //  ¶¨Òåfifo´æ´¢Æ÷£¬4¸ö16Î»µÄ´æ´¢Æ÷

// dout±»¸³¸øtailÖ¸ÕëÖ¸ÏòµÄÊýÖµ
always @(posedge clk)  begin
  if(rstp==1) begin
    dout <= 16'h0000;       // ¸´Î»ÐÅºÅÓÐÐ§ÖÃ0
  end
  else begin
    dout <= fifomem[tail];   //½«fifomemÖÐµÚtail¸öµ¥Ôª¸ødout
  end
end

// Ð´ÈëÊý¾Ý
always @(posedge clk) begin
    if(rstp==1'b0 && writep == 1'b1 && fullp == 1'b0) begin
        fifomem[head]<=din;      // Ð´Èë
    end
end

// headÖ¸ÕëµÝÔö
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

//tailÖ¸ÕëµÝÔö
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

// ¼ÆÊýÆ÷
always @(posedge clk) begin
   if (rstp == 1'b1) begin
      count <= 2'b00;
   end
   else begin
      case ({readp, writep})
         2'b00: count <= count;
         2'b01: 
            if (count != MAX_COUNT) 
               count <= count + 1;     //ÎªÐ´×´Ì¬Ê±¼ÆÊýÆ÷½øÐÐ¼Ó·¨¼ÆÊý
         2'b10: 
            if (count != 2'b00)
               count <= count - 1;    //Îª¶Á×´Ì¬¼ÆÊýÆ÷½øÐÐ¼õ·¨¼ÆÊý
         2'b11:
           count <= count;
      endcase
   end
end

// emptyÖ¸Õë
always @(count) begin
   if (count == 2'b00)
      emptyp <= 1'b1;      //countÎª0Ê±emptyp¸³Îª1
   else
      emptyp <= 1'b0;
end

// fullpÖ¸Õë
always @(count) begin
   if (count == MAX_COUNT)
      fullp <= 1'b1;                     //¼ÆÊýµ½×î´óÊ±fullp¸³Îª1
   else
      fullp <= 1'b0;
end

endmodule