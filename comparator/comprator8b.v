`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:20 10/29/2024 
// Design Name: 
// Module Name:    comprator8b 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module comprator8b(
    input [7:0] A,
    input [7:0] B,
    output reg A_greater_B,
    output reg A_equal_B,
    output reg A_less_B
);

wire A_greater_B1, A_equal_B1, A_less_B1;
wire A_greater_B2, A_equal_B2, A_less_B2;
wire A_greater_B3, A_equal_B3, A_less_B3;

// Most significant 3 bits
comparatoeB comp1 (
    .A(A[7:5]),
    .B(B[7:5]),
    .A_greater_B(A_greater_B1),
    .A_equal_B(A_equal_B1),
    .A_less_B(A_less_B1)
);

// Middle 3 bits
comparatoeB comp2 (
    .A(A[4:2]),
    .B(B[4:2]),
    .A_greater_B(A_greater_B2),
    .A_equal_B(A_equal_B2),
    .A_less_B(A_less_B2)
);

// Least significant 2 bits + 1 bit
comparatoeB comp3 (
    .A(A[2:0]),
    .B(B[2:0]),
    .A_greater_B(A_greater_B3),
    .A_equal_B(A_equal_B3),
    .A_less_B(A_less_B3)
);



always@(*)begin

	if (A_greater_B1) begin
			
			A_greater_B = 1;
			end
	
	else if (A_less_B1) begin
			
			A_less_B = 1;	end
	
	else if (A_equal_B1) begin
	
		if(A_greater_B2) begin 
		
			A_greater_B = 1;
					end
		
		else if(A_less_B2) begin 
			
			A_less_B = 1;		end
		
		else if (A_equal_B2) begin 
		
			if(A_greater_B3) begin 
		
			A_greater_B = 1;
						end
			else if(A_less_B) begin 
			
			A_less_B = 1;			end
			else if(A_equal_B3) begin
			A_equal_B = 1;
			A_greater_B = 0;
			A_less_B = 0;
			
			
			end
		
		end
	end
end
endmodule
