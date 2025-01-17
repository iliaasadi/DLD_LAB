`timescale 1ns / 1ps
module verilog77(a , b , s ,o);
	input[1:0] a;
	input[1:0] b;
	input[1:0] s;
	output [3:0] o;
	
			if(s == 2'b00)
			begin
			assign o = {2'b00 , ~a};
			end
			
			
			else if(s == 2'b01)
			begin
			assign o = {2'b00 , ~(a & b)};
			end
			
			
			else if(s == 2'b10)
			begin
			assign o = {2'b00 , a} + {2'b00 , b} ;
			end
			
			
			else if(s == 2'b11) 
			begin
			assign o = a * b ;
			end
endmodule
