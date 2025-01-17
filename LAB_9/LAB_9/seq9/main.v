`timescale 1ns / 1ps
module main(input ud ,input clkin  ,output  [4:0] SEG_SEL , output  [7:0]SEG_DATA
    );
	 wire clk;
	 wire q0 ,q1 , q2 ;
	clkcounter clk1(clkin , clk);
	seqqq seqqq1(clk , ud , q0 , q1 , q2);
	BCDcounter BCDcounter1(q0 , q1 , q2 ,SEG_SEL , SEG_DATA);
endmodule