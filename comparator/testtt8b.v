

module testtt8b;

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
		
	
		A = 8'b00000001;
		B = 8'b00000001;
		#100;
        
		// Add stimulus here




		A = 8'b00000100;
		B = 8'b10000001;
		#100;
		
		
		
		
		A = 8'b01000000;
		B = 8'b01000000;
		#100;
	end
      
endmodule

