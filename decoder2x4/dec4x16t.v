`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:47:42 10/29/2024
// Design Name:   decoder4X16
// Module Name:   C:/iili/decoder2x4/dec4x16t.v
// Project Name:  decoder2x4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder4X16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dec4x16t;

	// Inputs
	reg c;
	reg d;
	reg d1;
	reg c1;
	reg en;

	// Outputs
	wire D0;
	wire D1;
	wire D2;
	wire D3;
	wire D4;
	wire D5;
	wire D6;
	wire D7;
	wire D8;
	wire D9;
	wire D10;
	wire D11;
	wire D12;
	wire D13;
	wire D14;
	wire D15;

	// Instantiate the Unit Under Test (UUT)
	decoder4X16 uut (
		.c(c), 
		.d(d), 
		.d1(d1), 
		.c1(c1), 
		.en(en), 
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.D4(D4), 
		.D5(D5), 
		.D6(D6), 
		.D7(D7), 
		.D8(D8), 
		.D9(D9), 
		.D10(D10), 
		.D11(D11), 
		.D12(D12), 
		.D13(D13), 
		.D14(D14), 
		.D15(D15)
	);

	initial begin
		// Initialize Inputs
		c = 0;
		c1 = 0;
		d = 0;
		d1 = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		c = 1;
		c1 = 0;
		d = 1;
		d1 = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		c = 1;
		c1 = 1;
		d = 0;
		d1 = 0;
		en =1;

		// Wait 100 ns for global reset to finish
		#100;
		
		c = 0;
		c1 = 0;
		d = 1;
		d1 = 1;
				en =1;


		// Wait 100 ns for global reset to finish
		#100;
		
		c = 1;
		c1 = 0;
		d = 0;
		d1 = 1;
				en =1;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

