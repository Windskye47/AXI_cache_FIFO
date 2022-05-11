module  fifo(clk,rstp,din,writep,readp,dout,emptyp,fullp
);
input           clk;
input           rstp;      // ��λ�ź�
input[15:0]     din;
input           readp;
input           writep;
output[15:0]    dout;
output          emptyp;
output          fullp;
parameter       DEPTH = 2,
                MAX_COUNT=2'b11;      //�����ַ���ֵ
               
reg             emptyp;
reg             fullp;
reg[15:0]       dout;
reg[(DEPTH-1):0]    tail;
reg[(DEPTH-1):0]    head;
reg[(DEPTH-1):0]    count;
reg[15:0]           fifomem[0:MAX_COUNT];       //  ����fifo�洢����4��16λ�Ĵ洢��

// dout������tailָ��ָ�����ֵ
always @(posedge clk)  begin
  if(rstp==1) begin
    dout <= 16'h0000;       // ��λ�ź���Ч��0
  end
  else begin
    dout <= fifomem[tail];   //��fifomem�е�tail����Ԫ��dout
  end
end

// д������
always @(posedge clk) begin
    if(rstp==1'b0 && writep == 1'b1 && fullp == 1'b0) begin
        fifomem[head]<=din;      // д��
    end
end

// headָ�����
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

//tailָ�����
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

// ������
always @(posedge clk) begin
   if (rstp == 1'b1) begin
      count <= 2'b00;
   end
   else begin
      case ({readp, writep})
         2'b00: count <= count;
         2'b01: 
            if (count != MAX_COUNT) 
               count <= count + 1;     //Ϊд״̬ʱ���������мӷ�����
         2'b10: 
            if (count != 2'b00)
               count <= count - 1;    //Ϊ��״̬���������м�������
         2'b11:
           count <= count;
      endcase
   end
end

// emptyָ��
always @(count) begin
   if (count == 2'b00)
      emptyp <= 1'b1;      //countΪ0ʱemptyp��Ϊ1
   else
      emptyp <= 1'b0;
end

// fullpָ��
always @(count) begin
   if (count == MAX_COUNT)
      fullp <= 1'b1;                     //���������ʱfullp��Ϊ1
   else
      fullp <= 1'b0;
end

endmodule
