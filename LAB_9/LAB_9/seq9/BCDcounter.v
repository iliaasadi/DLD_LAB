`timescale 1ns / 1ps

module BCDcounter (
	input q0 , input q1 ,input q2,
	output [4:0] SEG_SEL,
	output reg [7:0]SEG_DATA);
	
	always @(*)
	begin
	 if(q0 == 0 & q1 == 0 & q2 ==0 )
	 SEG_DATA = 8'b01111111;
	 else if (q0 == 1 & q1 == 0 & q2 ==0 )
	 SEG_DATA = 8'b00000110;
	 else if (q0 == 0 & q1 == 1 & q2 ==0 )
	 SEG_DATA = 8'b01011011;
	 else if (q0 == 1 & q1 == 1 & q2 ==0 )
	 SEG_DATA = 8'b01001111;
	 else if (q0 == 0 & q1 == 0 & q2 ==1 )
	 SEG_DATA = 8'b01100110;
	 else if (q0 == 1 & q1 == 0 & q2 ==1 )
	 SEG_DATA = 8'b01101101;
	 else if (q0 == 0 & q1 == 1 & q2 ==1 )
	 SEG_DATA = 8'b01111101;
	 else if (q0 == 1 & q1 == 1 & q2 ==1 )
	 SEG_DATA = 8'b00000111;
	end
	
	assign SEG_SEL= 5'b00001;
endmodule