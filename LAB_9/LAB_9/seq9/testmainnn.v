`timescale 1ns / 1ps


module testmainnn;

	// Inputs
	reg ud;
	reg clkin;

	// Outputs
	wire [4:0] SEG_SEL;

	wire [7:0] SEG_DATA;
	// Instantiate the Unit Under Test (UUT)
	main uut (
		.ud(ud), 
		.clkin(clkin), 
		.SEG_SEL(SEG_SEL),
		.SEG_DATA(SEG_DATA) 

	);


	initial begin
		
		#100;
    
	 repeat(1000)
	 begin
	 #2.5 clkin = ~clkin;
	end
	end


	
	initial begin
		// Initialize Inputs
		clkin = 1;
		ud = 1;

		#160 ud = 1;
		#160 ud = 0;
		#160 ud = 1;
      #500  $finish;
	end
      
endmodule

