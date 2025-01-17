`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:28 11/12/2024
// Design Name:   verilog77
// Module Name:   D:/ilck/veilog7/verilog7/veritrst7.v
// Project Name:  verilog7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: verilog77
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module veritrst7;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;
	reg [1:0] s;

	// Outputs
	wire [3:0] o;

	// Instantiate the Unit Under Test (UUT)
	verilog77 uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 2'b00;
		b = 2'b11;
		s = 2'b00;
		#100;
		
				a = 2'b00;
		b = 2'b01;
		s = 2'b01;
		#100;
		
				a = 2'b11;
		b = 2'b11;
		s = 2'b11;
		#100;
		
				a = 2'b11;
		b = 2'b01;
		s = 2'b10;
		#100;	
		
		
		a = 2'b01;
		b = 2'b01;
		s = 2'b10;
		#100;
		
				a = 2'b00;
		b = 2'b00;
		s = 2'b00;
		#100;
		
		
		a = 2'b00;
		b = 2'b00;
		s = 2'b00;
		#100;
		
				
		
        
		// Add stimulus here

	end
      
endmodule

