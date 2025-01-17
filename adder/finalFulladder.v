`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:48 11/05/2024 
// Design Name: 
// Module Name:    finalFulladder 
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
module finalFulladder(a , b ,cin , sel , s , cout);
	input [3:0] a;
	input [3:0] b;
	input cin;
	input sel;
	output [3:0] s;
	output cout;
	
	wire c1 , c2 ,c3;
	FulladderSelec f1 (a[0] , b[0] , cin , sel ,s[0] , c1);
	FulladderSelec f2 (a[1] , b[1] , c1 , sel ,s[1] , c2);
	FulladderSelec f3 (a[2] , b[2] , c2 , sel ,s[2] , c3);
	FulladderSelec f4 (a[3] , b[3] , c3 , sel ,s[3] , cout);


endmodule
