`timescale 1ns / 1ps


module testfinalfudllladdd;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	reg sel;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	finalFulladder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sel(sel), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0010;
		b = 4'b0001;
		cin = 1;
		sel = 0;
		#100;
		
		
		a = 4'b0011;
		b = 4'b0110;
		cin = 0;
		sel = 1;


		#100;
        
		// Add stimulus here

	end
      
endmodule

