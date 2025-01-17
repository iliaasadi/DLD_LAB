`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:27:03 11/03/2024
// Design Name:   seqqq
// Module Name:   /home/ise/seq9/testseq1.v
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

module testseq1;

	// Inputs
	reg clk;
	reg ud;

	// Outputs
	wire [2:0] qf;

	// Instantiate the Unit Under Test (UUT)
	seqqq uut (
		.clk(clk), 
		.ud(ud), 
		.qf(qf)
	);

	always #40 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		ud = 0;

		#160 ud = 1;
		#160 ud = 0;
		#160 ud = 1;
		#160 ud = 0;
      #500  $finish;
	end
      
endmodule

