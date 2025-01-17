
//////////////////////////////////////////
/////////////// D.BOUNCER //////////////////
//////////////////////////////////////////


module D_B(
    input Sig,
    input RST,
    input CLK,
    output reg Deb_Sig
);
reg Q0, Q1, Q2;

    
//    D_FF  D1 (Sig, RST, CLK, Q0);
//    D_FF  D2 (Q0, RST, CLK, Q1);
//    D_FF  D3 (Q1, RST, CLK, Q2);
//
//    assign Deb_Sig = Q0 & Q1 & ~Q2;

	always @(posedge CLK or posedge RST)
		begin
		if (RST)
			begin
				Q0 <= 0;
				Q1 <= 0;
				Q2 <= 0;
				Deb_Sig <= 0;
			end else begin
				Q2 <= Q1;
				Q1 <= Q0;
				Q0 <= Sig;
				Deb_Sig <= Q0 && Q1 && ~Q2;
				end
		end
		
endmodule

