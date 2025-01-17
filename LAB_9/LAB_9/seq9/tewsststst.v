`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:01:39 11/19/2024
// Design Name:   seqqq
// Module Name:   C:/Users/Admin/Desktop/seq9/seq9/tewsststst.v
// Project Name:  seq9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seqqq
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tewsststst;

	// Inputs
	reg clk;
	reg ud;

	// Outputs
	wire q0;
	wire q1;
	wire q2;

	// Instantiate the Unit Under Test (UUT)
	seqqq uut (
		.clk(clk), 
		.ud(ud), 
		.q0(q0), 
		.q1(q1), 
		.q2(q2)
	);

	always #40 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		ud = 0;

		#160 ud = 1;
		#160 ud = 0;
		#160 ud = 1;
      #500  $finish;
	end
	      
endmodule

