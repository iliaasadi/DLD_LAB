`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:22:21 10/29/2024 
// Design Name: 
// Module Name:    f5555 
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
module f5555(
 
	input c,
    input d,
    input c1,
    input d1,
   
    input en,
    output f
    );
	wire D0 , D1 , D2 , D3 , D4 , D5 , D6 , D7 , D8 , D9 , D10 , D11 , D12 , D13 , D14 , D15;
	decoder4x16 (c , d , d1 , c1 , en , D0 , D1 , D2 , D3 , D4 , D5 , D6 , D7 , D8 , D9 , D10 , D11 , D12 , D13 , D14 , D15);
	or (f , D2 , D3 , D5 , D7 , D11 , D13); 


endmodule
