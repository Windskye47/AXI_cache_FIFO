module xorgate (
	input clk,    // Clock
	input rst,    // Asynchronous reset active low
	input a,
	input b,
	output reg y );

	wire  temp;
	wire  d;

always @(posedge clk or negedge rst) begin
	if (!rst) begin
		// reset
		y <= 0;
	end
	else begin
		y <= d;
	end
end

mux21 ins1(1'b0,1'b1,b,temp);
mux21 ins2(temp,b,a,d);

endmodule

module mux21 (
	input a,
	input b,
	input select,
	output wire y );

assign y=select?a:b;

endmodule
