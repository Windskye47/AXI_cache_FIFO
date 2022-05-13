//------------------------------------------------
// mipssingle.v
// David_Harris@hmc.edu 23 October 2005
// Single-cycle MIPS processor
//------------------------------------------------

// single-cycle MIPS processor
module mips(input         clk, reset,
            output [31:0] pc,
            input  [31:0] instr,
            output        memwrite,
            output [31:0] aluout, writedata,
            input  [31:0] readdata);

  wire        memtoreg, branch,
              alusrc, regdst, regwrite, jump;
  wire [2:0]  alucontrol;

  controller c(instr[31:26], instr[5:0],
               memtoreg, memwrite, branch,
               alusrc, regdst, regwrite, jump,
               alucontrol, en);
  datapath dp(clk, reset, en, memtoreg, branch,
              alusrc, regdst, regwrite, jump,
              alucontrol,
              pc, instr,
              aluout, writedata, readdata);
endmodule

module controller(input  [5:0] op, funct,
                  output       memtoreg, memwrite,
                  output       branch, alusrc,
                  output       regdst, regwrite,
                  output       jump,
                  output [2:0] alucontrol,
                  output	   en);

  wire [1:0] aluop;

  maindec md(op, memtoreg, memwrite, branch,
             alusrc, regdst, regwrite, jump,
             aluop, en);
  aludec  ad(funct, aluop, alucontrol);
endmodule

module maindec(input  [5:0] op,
               output       memtoreg, memwrite,
               output       branch, alusrc,
               output       regdst, regwrite,
               output       jump,
               output [1:0] aluop,
               output 		en);

  reg [9:0] controls;

  assign {regwrite, regdst, alusrc,
          branch, memwrite,
          memtoreg, jump, aluop, en} = controls;

  always @( * )
    case(op)
      6'b000000: controls <= 10'b1100000100; //Rtyp
      6'b100011: controls <= 10'b1010010000; //LW
      6'b101011: controls <= 10'b0010100000; //SW
      6'b000100: controls <= 10'b0001000010; //BEQ
      6'b001000: controls <= 10'b1010000000; //ADDI
      6'b000010: controls <= 10'b0000001000; //J
      6'b000010: controls <= 10'b0000001000; //J
      6'b000011: controls <= 10'b0000011001; //JAL
      default:   controls <= 10'bxxxxxxxxxx; //???
    endcase
endmodule

module aludec(input      [5:0] funct,
              input      [1:0] aluop,
              output reg [2:0] alucontrol);

  always @( * )
    case(aluop)
      2'b00: alucontrol <= 3'b010;  // add
      2'b01: alucontrol <= 3'b110;  // sub
      default: case(funct)          // RTYPE
          6'b100000: alucontrol <= 3'b010; // ADD
          6'b100010: alucontrol <= 3'b110; // SUB
          6'b100100: alucontrol <= 3'b000; // AND
          6'b100101: alucontrol <= 3'b001; // OR
          6'b101010: alucontrol <= 3'b111; // SLT
          default:   alucontrol <= 3'bxxx; // ???
        endcase
    endcase
endmodule

module datapath(input         clk, reset, en,
                input         memtoreg, branch,
                input         alusrc, regdst,
                input         regwrite, jump,
                input  [2:0]  alucontrol,
                output [31:0] pc,
                input  [31:0] instr,
                output [31:0] aluout, writedata,
                input  [31:0] readdata);

  wire [4:0]  writereg;
  wire [4:0]  writeregtemp;
  wire        zero, pcsrc;
  wire [31:0] pcnext, pcnextbr, pcplus4, pcbranch;
  wire [31:0] pcjump;
  wire [31:0] immext, immextsh;
  wire [31:0] srca, srcb;
  wire [31:0] result;
  wire [31:0] resulttemp;
  wire [4:0]  allone = 5'b11111;

  // next PC logic
  assign pcsrc = branch & zero;
  assign pcjump = {pcplus4[31:28], instr[25:0], 2'b00};

  flopr #(32) pcreg(clk, reset, pcnext, pc);
  adder       pcadd1(pc, 32'b100, pcplus4);
  sl2         immsh(immext, immextsh);
  adder       pcadd2(pcplus4, immextsh, pcbranch);
  mux2 #(32)  pcbrmux(pcplus4, pcbranch, pcsrc,
                      pcnextbr);
  mux2 #(32)  pcmux(pcnextbr, pcjump, jump,
                    pcnext);

  // register file logic
  regfile     rf(clk, regwrite, instr[25:21],
                 instr[20:16], writereg,
                 result, srca, writedata);
  // NEED MODIFY
  mux2 #(5)   wrmux(instr[20:16], instr[15:11],
                    regdst, writeregtemp);
  mux2 #(5)   wrmuxadd(writeregtemp,allone,en,writereg);
  // always @(*) begin
  //   if (en) begin
  //     writereg = writeregtemp;
  //   end else begin
  //     writereg = 5'b11111;
  //   end
  // end
  mux2 #(32)  resmux(aluout, readdata,
                     memtoreg, resulttemp);
  mux2 #(32)  resmuxadd(resulttemp,pcplus4,en,result);
  // END
  signext     se(instr[15:0], immext);

  // ALU logic
  mux2 #(32)  srcbmux(writedata, immext, alusrc,
                      srcb);
  alu32       alu(srca, srcb, alucontrol,
                  aluout, zero);
endmodule