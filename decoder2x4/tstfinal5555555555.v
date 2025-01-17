`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:25:46 10/29/2024
// Design Name:   final555
// Module Name:   D:/ilck/decoder2x4/tstfinal5555555555.v
// Project Name:  decoder2x4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: final555
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tstfinal5555555555;

	// Inputs
	reg c;
	reg d;
	reg c1;
	reg d1;
	reg en;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	final555 uut (
		.c(c), 
		.d(d), 
		.c1(c1), 
		.d1(d1), 
		.en(en), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		c = 0;
		d = 0;
		c1 = 0;
		d1 = 0;
		en = 0;
		#100;
        
		
		
		c = 0;
		d = 0;
		c1 = 0;
		d1 = 0;
		en = 1;
		#100;
		
		
				c = 1;
		d = 0;
		c1 = 0;
		d1 = 0;
		en = 1;
		#100;
		
		
				c = 0;
		d = 1;
		c1 = 0;
		d1 = 0;
		en = 1;
		#100;
		
				c = 1;
		d = 1;
		c1 = 0;
		d1 = 0;
		en = 1;
		#100;
		
				c = 0;
		d = 0;
		c1 = 1;
		d1 = 0;
		en = 1;
		#100;
		
				c = 1;
		d = 0;
		c1 = 1;
		d1 = 0;
		en = 1;
		#100;


		c = 0;
		d = 1;
		c1 = 1;
		d1 = 0;
		en = 1;
		#100;
		
		
				c = 1;
		d = 1;
		c1 = 1;
		d1 = 0;
		en = 1;
		#100;
		
		
		
				c = 0;
		d = 0;
		c1 = 0;
		d1 = 1;
		en = 1;
		#100;
		
		
		
				c = 1;
		d = 0;
		c1 = 0;
		d1 = 1;
		en = 1;
		#100;
		
		
				c = 0;
		d = 1;
		c1 = 0;
		d1 = 1;
		en = 1;
		#100;
		
		
		
				c = 1;
		d = 1;
		c1 = 0;
		d1 = 1;
		en = 1;
		#100;
		
		
		
		
				c = 0;
		d = 0;
		c1 = 1;
		d1 = 1;
		en = 1;
		#100;
		
		
		
				c = 1;
		d = 0;
		c1 = 1;
		d1 = 1;
		en = 1;
		#100;
		
		
		
				c = 0;
		d = 1;
		c1 = 1;
		d1 = 1;
		en = 1;
		#100;
		
				c = 1;
		d = 1;
		c1 = 1;
		d1 = 1;
		en = 1;
		#100;
		
		
		
		
	end
      
endmodule

