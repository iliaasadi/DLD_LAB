`timescale 1ns / 1ps
module testcounterdevider;

	// Inputs
	reg clk_in;

	// Outputs
	wire clk_out;

	// Instantiate the Unit Under Test (UUT)
	clkcounter uut (
		.clk_in(clk_in), 
		.clk_out(clk_out)
	);

	initial begin
		
		clk_in = 0;
		#100;
    
	 repeat(80000000)
	 begin
	 #12.5 clk_in = ~clk_in;
	end
	end
      
endmodule

