`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:09 10/29/2024 
// Design Name: 
// Module Name:    decoder4X16 
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
module decoder4X16(
    
	input c,
	input d,
	input d1,
	input c1,
	input en,
    output D0,
    output D1,
    output D2,
    output D3,
    output D4,
    output D5,
    output D6,
    output D7,
    output D8,
    output D9,
    output D10,
    output D11,
    output D12,
    output D13,
    output D14,
    output D15
    );
	wire I0 , I1 , I2 , I3;
	
	decoder2x4nd g0(d1 , c1 , en ,I0 , I1 , I2 , I3);
	decoder2x4nd g1(d , c , I0 , D0 , D1 , D2 , D3);
	decoder2x4nd g2(d , c , I1 , D4 , D5 , D6 , D7);
	decoder2x4nd g3(d , c , I2 , D8 , D9 , D10 , D11);
	decoder2x4nd g4(d , c , I3 , D12 , D13 , D14 , D15);
	



endmodule
