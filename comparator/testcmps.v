`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:59:56 10/29/2024
// Design Name:   comparatoeB
// Module Name:   D:/ilck/comparator/testcmps.v
// Project Name:  comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparatoeB
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testcmps;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;

	// Outputs
	wire A_greater_B;
	wire A_equal_B;

	// Instantiate the Unit Under Test (UUT)
	comparatoeB uut (
		.A(A), 
		.B(B), 
		.A_greater_B(A_greater_B), 
		.A_equal_B(A_equal_B)
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

