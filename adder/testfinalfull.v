`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:04 11/05/2024
// Design Name:   finalFulladder
// Module Name:   D:/ummm/adder/testfinalfull.v
// Project Name:  adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: finalFulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testfinalfull;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	finalFulladder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a[0] =0;
		a[1] =1;
		a[2] =0;
		a[3] =1;
		
		b[0] = 0;
		b[1] = 0;
		b[2] = 0;
		b[3] = 1;
		cin = 0;

		

	end
      
endmodule

