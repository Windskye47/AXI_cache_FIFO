module imem(input [5:0]a,
            output [31:0]rd);
reg [31:0] RAM [63:0];

initial
begin
  $readmemh("/home/lxl/proj/mips/asm/t1.asm",RAM);
end            
assign rd = RAM[a]; //word aligned            
endmodule
            