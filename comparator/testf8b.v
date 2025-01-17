`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:15:54 10/29/2024
// Design Name:   comprator8b
// Module Name:   D:/ilck/comparator/testf8b.v
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

module testf8b;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire A_greater_B;
	wire A_equal_B;
	wire A_less_B;

	// Instantiate the Unit Under Test (UUT)
	comprator8b uut (
		.A(A), 
		.B(B), 
		.A_greater_B(A_greater_B), 
		.A_equal_B(A_equal_B), 
		.A_less_B(A_less_B)
	);

	initial begin
		// Initialize Inputs
		A = 8'b00000000;
		B = 8'b00000001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

