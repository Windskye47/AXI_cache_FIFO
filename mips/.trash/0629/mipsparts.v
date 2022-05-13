//------------------------------------------------
// mipsparts.v
// David_Harris@hmc.edu 23 October 2005
// Components used in MIPS processor
//------------------------------------------------


module regfile(input         clk, 
               input         we3, 
               input  [4:0]  ra1, ra2, wa3, 
               input  [31:0] wd3, 
               output [31:0] rd1, rd2);

  reg [31:0] rf[31:0];

  // three ported register file
  // read two ports combinationally
  // write third port on rising edge of clock
  // register 0 hardwired to 0

  always @(posedge clk)
    if (we3) rf[wa3] <= wd3;	

  assign rd1 = (ra1 != 0) ? rf[ra1] : 0;
  assign rd2 = (ra2 != 0) ? rf[ra2] : 0;
endmodule

module adder(input [31:0] a, b,
             output [31:0] y);

  assign y = a + b;
endmodule

module sl2(input  [31:0] a,
           output [31:0] y);

  // shift left by 2
  assign y = {a[29:0], 2'b00};
endmodule

module signext(input  [15:0] a,
               output [31:0] y);
              
  assign y = {{16{a[15]}}, a};
endmodule

module flopr #(parameter WIDTH = 8)
              (input                  clk, reset,
               input      [WIDTH-1:0] d, 
               output reg [WIDTH-1:0] q);

  always @(posedge clk, posedge reset)
    if (reset) q <= 0;
    else       q <= d;
endmodule

// module flopenr #(parameter WIDTH = 8)
//                 (input                  clk, reset,
//                  input                  en,
//                  input      [WIDTH-1:0] d, 
//                  output reg [WIDTH-1:0] q);
 
//   always @(posedge clk, posedge reset)
//     if      (reset) q <= 0;
//     else if (en)    q <= d;
// endmodule

module mux2 #(parameter WIDTH = 8)
             (input  [WIDTH-1:0] d0, d1, 
              input              s, 
              output [WIDTH-1:0] y);

  assign y = s ? d1 : d0; 
endmodule

module alu32  (input [31:0]srca, srcb, 
          input [2:0] alucontrol,
          output reg [31:0]  aluout,
          output reg zero);
  // assign zero = (aluout == 0)?1:0;
  always @( * )
    case(alucontrol)
      3'b000: begin aluout <= srca & srcb;  zero <= 0; end
      3'b001: begin aluout <= srca | srcb;  zero <= 0; end
      3'b010: begin aluout <= srca + srcb;  zero <= 0; end
      3'b100: begin aluout <= srca & srcb;  zero <= 0; end
      3'b101: begin aluout <= srca |~ srcb; zero <= 0; end
      3'b110: begin aluout <= srca - srcb;  zero <= (srca == srcb)?1:0; end
      3'b111: begin aluout <= (srca < srcb)? 32'hffffffff:32'h00000000;  zero <= 0; end
      default:  begin aluout <= 0; zero <= 0; end
    endcase
endmodule