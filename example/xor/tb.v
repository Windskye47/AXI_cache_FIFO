`timescale 1ns/1ns
module testbench(

     );
    reg clk;    // Clock
	reg rst;    // Asynchronous reset active low
	reg a;
	reg b;
	wire y;

  // instantiate device to be tested
  xorgate top(clk, rst, a, b, y);
  
  // initialize test
  initial
    begin
      rst <= 0; # 3; rst <= 1;
      #250 $finish;
    end

  // generate clock to sequence tests
  always
    begin
      clk <= 0; # 5; clk <= 1; # 5;
    end

      always
    begin
      a <= 1; # 10; a <= 0; # 10;
    end

      always
    begin
      b <= 1; # 20; b <= 0; # 20;
    end


  initial begin
     $fsdbDumpfile("tb.fsdb");
     $fsdbDumpvars("+all");
  end
endmodule
