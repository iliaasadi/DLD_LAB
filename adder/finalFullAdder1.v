`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:16 11/05/2024 
// Design Name: 
// Module Name:    finalFullAdder1 
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
module finalFullAdder1(a , b ,cin , s , cout);
	input [3:0] a;
	input [3:0] b;
	output [3:0] s;
	input cin;
	output cout;
	wire c1 , c2 ,c3;
	FulladderSelec f1 (a[0] , b[0] , cin ,s[0] , c1);
	FulladderSelec f2 (a[1] , b[1] , c1 ,s[1] , c2);
	FulladderSelec f3 (a[2] , b[2] , c2 ,s[2] , c3);
	FulladderSelec f4 (a[3] , b[3] , c3 ,s[3] , cout);


	endmodule
