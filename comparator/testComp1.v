`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:00:55 10/29/2024
// Design Name:   comparatoeB
// Module Name:   D:/ilck/comparator/testcomp1.v
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

module testcomp1;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;
	

	// Outputs
	wire A_greater_B;
	wire A_equal_B;
	wire A_less_B;

	// Instantiate the Unit Under Test (UUT)
	comparatoeB uut (
		.A(A), 
		.B(B), 
		
		.A_greater_B(A_greater_B), 
		.A_equal_B(A_equal_B), 
		.A_less_B(A_less_B)
	);

	initial begin
		// Initialize Inputs
		A = 3'b000;
		B = 3'b001;
		

		// Wait 100 ns for global reset to finish
		#100;
		
		A = 3'b001;
		B = 3'b000;
	
        #100
		
		
		
		A = 3'b001;
		B = 3'b001;
		
        #100
		// Add stimulus here

	end
      
endmodule

