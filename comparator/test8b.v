`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:38:16 10/29/2024
// Design Name:   comprator8b
// Module Name:   D:/ilck/comparator/test8b.v
// Project Name:  comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comprator8b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test8b;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire A_gt_B;
	wire A_eq_B;
	wire A_lt_B;

	// Instantiate the Unit Under Test (UUT)
	comprator8b uut (
		.A(A), 
		.B(B), 
		.A_gt_B(A_gt_B), 
		.A_eq_B(A_eq_B), 
		.A_lt_B(A_lt_B)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

