
`timescale 1ns / 1ps
module JKFF(input j , input k , input clk , output reg q , output nq  
    );
	initial begin 
		q = 0;
	end
	assign nq = ~q ;
	always @ (negedge clk) begin
		case ({j , k})
		2'b00 : q <= q;
		2'b01 : q <= 1'b0;
		2'b10 : q <= 1'b1;
		2'b11 : q <= ~q;
		endcase
		end
endmodule