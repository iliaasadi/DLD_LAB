`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:37 10/29/2024 
// Design Name: 
// Module Name:    decoder2x4nd 
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
module decoder2x4nd(
  input a,
    input b,
    input en,
    output I0,
    output I1,
    output I2,
    output I3
    );
	wire a1 , b1;
	not (a1 , a);
	not (b1 , b);
	and f0(I0 , a1 , b1 , en);
	and f1(I1 , a , b1 , en);
	and f2(I2 , a1 , b , en);
	and f3(I3 , a , b , en);


endmodule