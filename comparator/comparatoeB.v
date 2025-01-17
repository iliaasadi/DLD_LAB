`timescale 1ns / 1ps

module comparatoeB(

	input [2:0] A , 
	input [2:0] B,
	output reg A_greater_B,
	output reg A_equal_B,
	output reg A_less_B
	
    );
	
	always@(*)begin
	
	A_greater_B = 1'b0;
	A_equal_B = 1'b0;
	A_less_B = 1'b0;
		if(A > B) begin 
			A_greater_B = 1'b1;
		end 
		else if(A < B) begin 
			A_less_B = 1'b1;
		end
		else begin 
			A_equal_B = 1'b1;
		end
	end
		
endmodule
