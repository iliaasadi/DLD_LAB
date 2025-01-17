`timescale 1ns / 1ps


module testtakbit;

	// Inputs
	reg a;
	reg b;
	reg cin;
	reg selector;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	FulladderSelec uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.selector(selector), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 0;
		cin = 0;
		selector = 0;

		#100;
        
		a = 0;
		b = 1;
		cin = 0;
		selector = 0;

		#100;
        a = 1;
		b = 1;
		cin = 1;
		selector = 1;

		#100;
        a = 1;
		b = 1;
		cin = 0;
		selector = 0;

		#100;
        a = 0;
		b = 1;
		cin = 1;
		selector = 1;

		#100;
        
	end
      
endmodule

