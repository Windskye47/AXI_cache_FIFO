module imem(input [5:0]a,
            output [31:0]rd);
reg [31:0] RAM [63:0];
reg [5:0] n;
initial
begin
  $readmemh("/home/lxl/proj/mips/0628/t1.asm",RAM);
//RAM[00001]=32'h20020005;
//RAM[00010]=32'h20070003;
//RAM[00011]=32'h2003000c;
//RAM[00100]=32'h00e22025;
//RAM[00101]=32'h00642824;
//RAM[00110]=32'h00a42820;
//RAM[00111]=32'h10a70008;
//RAM[01000]=32'h0064302a;
//RAM[01001]=32'h10c00001;
//RAM[01010]=32'h2005000a;
//RAM[01011]=32'h00e2302a;
//RAM[01100]=32'h00c53820;
//RAM[01101]=32'h00e23822;
//RAM[01110]=32'h0800000f;
//RAM[01111]=32'h8c070000;
//RAM[10000]=32'hac470047;
  for (n=0;n<=35;n=n+1)
  $display("%h",RAM[n]);
end            
assign rd = RAM[a]; //word aligned         
endmodule