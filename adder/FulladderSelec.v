`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:17 11/05/2024 
// Design Name: 
// Module Name:    FulladderSelec 
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
module FulladderSelec(a , b , cin , selector , sum , cout);
	input a , b , cin , selector;
	output sum , cout;
	wire w1 , w2 ,w3 , d;
	//d = bxor
	xor #(10)(d , b, selector );
	xor #(10)(sum , a , d, cin );
	and #(5)(w1 , a ,d);
	and #(5) (w2 , a ,cin);
	and #(5)(w3 , d , cin);
	or #(5)(cout , w1 , w2 , w3);
	
endmodule
