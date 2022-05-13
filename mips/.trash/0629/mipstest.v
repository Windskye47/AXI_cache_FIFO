//------------------------------------------------
// mipstest.v
// David_Harris@hmc.edu 23 October 2005
// Test bench for MIPS processor
//------------------------------------------------
`timescale 1ns/1ns
module testbench();

  reg         clk;
  reg         reset;

  wire [31:0] aluout, writedata, readdata;
  wire memwrite;

  // instantiate device to be tested
  top dut(clk, reset, aluout, writedata, readdata, memwrite);
  
  // initialize test
  initial
    begin
      reset <= 1; # 8; reset <= 0;
      #5000 $finish;
    end

  // generate clock to sequence tests
  always
    begin
      clk <= 1; # 5; clk <= 0; # 5;
    end

  // check results
  //always@(negedge clk)
   // begin
     // if(memwrite) begin
       // if(writedata == 21)
        //  $display("Simulation succeeded");
      //  else $display("Simulation failed");
       // $stop;
     // end
  //  end
  initial begin
     $fsdbDumpfile("tb.fsdb");
     $fsdbDumpvars("+all");
  end
endmodule