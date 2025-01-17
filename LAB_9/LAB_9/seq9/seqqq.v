`timescale 1ns / 1ps
module seqqq( input clk , input ud , output q0, output q1, output q2
    );
	
	wire nud  ,nq0  , nq1 , r , r1 ,s ,s1 ,nq2 , jk1 , jk2 ;
	
	JKFF ff0(.j(1'b1) , .k(1'b1) , .clk(clk) , .q(q0) , .nq(nq0));
	 
	 
	  and #10 (s , q0 , ud);
	  not #10 (nud ,ud);
	  and #10 (s1 , nq0 , nud);
	  or #10 (jk1 , s1 , s);
	 JKFF ff1(.j(jk1) , .k(jk1) , .clk(clk) , .q(q1) , .nq(nq1));
	 
	 
	  and #10 (r , q1 , s);
	  and #10 (r1 , nq1 , s1);
	  or #10 (jk2 , r1 , r);
	 JKFF ff2(.j(jk2) , .k(jk2) , .clk(clk) , .q(q2) , .nq(nq2));
	 
	 
endmodule