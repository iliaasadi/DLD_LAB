`timescale 1ns / 1ps
module clkcounter ( input clk_in, output reg clk_out );
	
	initial begin 
	clk_out = 0;
	end 
	reg [25:0] counter = 0;
	always @ (negedge clk_in)
	begin
	if (counter == 20000000 - 1)
		begin
		counter <= 0;
		clk_out <= ~ clk_out;
		end
	else
		begin
		counter <= counter + 1;
		end
	end
endmodule
