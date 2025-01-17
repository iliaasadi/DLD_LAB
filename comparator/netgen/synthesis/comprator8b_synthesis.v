////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: comprator8b_synthesis.v
// /___/   /\     Timestamp: Tue Oct 29 17:09:50 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim comprator8b.ngc comprator8b_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: comprator8b.ngc
// Output file	: D:\ilck\comparator\netgen\synthesis\comprator8b_synthesis.v
// # of Modules	: 1
// Design Name	: comprator8b
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module comprator8b (
  A_greater_B, A_equal_B, A_less_B, A, B
);
  output A_greater_B;
  output A_equal_B;
  output A_less_B;
  input [7 : 0] A;
  input [7 : 0] B;
  wire A_0_IBUF_8;
  wire A_1_IBUF_9;
  wire A_2_IBUF_10;
  wire A_3_IBUF_11;
  wire A_4_IBUF_12;
  wire A_5_IBUF_13;
  wire A_6_IBUF_14;
  wire A_7_IBUF_15;
  wire A_equal_B1;
  wire A_equal_B_OBUF_18;
  wire A_equal_B_mux0000_19;
  wire A_equal_B_or0000;
  wire A_greater_B1;
  wire A_greater_B2;
  wire A_greater_B3;
  wire A_greater_B_OBUF_25;
  wire A_greater_B_mux0000_26;
  wire A_less_B1;
  wire A_less_B_OBUF_29;
  wire A_less_B_mux0000;
  wire B_0_IBUF_39;
  wire B_1_IBUF_40;
  wire B_2_IBUF_41;
  wire B_3_IBUF_42;
  wire B_4_IBUF_43;
  wire B_5_IBUF_44;
  wire B_6_IBUF_45;
  wire B_7_IBUF_46;
  wire N24;
  wire N26;
  wire N28;
  wire N30;
  wire N34;
  wire N36;
  wire N38;
  wire N39;
  wire N41;
  wire N43;
  wire \comp2/A_equal_B_cmp_lt0000 ;
  wire \comp3/A_equal_B_cmp_lt0000 ;
  LDCP   A_less_B_1 (
    .CLR(A_greater_B1),
    .D(A_less_B_mux0000),
    .G(A_equal_B1),
    .PRE(A_less_B1),
    .Q(A_less_B_OBUF_29)
  );
  LDCP   A_greater_B_2 (
    .CLR(A_less_B1),
    .D(A_greater_B_mux0000_26),
    .G(A_equal_B1),
    .PRE(A_greater_B1),
    .Q(A_greater_B_OBUF_25)
  );
  LDC   A_equal_B_3 (
    .CLR(A_equal_B_or0000),
    .D(A_equal_B_mux0000_19),
    .G(A_equal_B1),
    .Q(A_equal_B_OBUF_18)
  );
  LUT4 #(
    .INIT ( 16'hCF4D ))
  \comp1/A_less_B_SW0  (
    .I0(B_5_IBUF_44),
    .I1(A_6_IBUF_14),
    .I2(B_6_IBUF_45),
    .I3(A_5_IBUF_13),
    .O(N24)
  );
  LUT3 #(
    .INIT ( 8'h2B ))
  \comp1/A_less_B  (
    .I0(B_7_IBUF_46),
    .I1(A_7_IBUF_15),
    .I2(N24),
    .O(A_less_B1)
  );
  LUT4 #(
    .INIT ( 16'h7510 ))
  A_greater_B11_SW0 (
    .I0(B_6_IBUF_45),
    .I1(B_5_IBUF_44),
    .I2(A_5_IBUF_13),
    .I3(A_6_IBUF_14),
    .O(N26)
  );
  LUT3 #(
    .INIT ( 8'hD4 ))
  A_greater_B11 (
    .I0(B_7_IBUF_46),
    .I1(A_7_IBUF_15),
    .I2(N26),
    .O(A_greater_B1)
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \comp1/A_equal_B_SW0  (
    .I0(A_5_IBUF_13),
    .I1(B_5_IBUF_44),
    .I2(A_6_IBUF_14),
    .I3(B_6_IBUF_45),
    .O(N28)
  );
  LUT3 #(
    .INIT ( 8'h09 ))
  \comp1/A_equal_B  (
    .I0(B_7_IBUF_46),
    .I1(A_7_IBUF_15),
    .I2(N28),
    .O(A_equal_B1)
  );
  LUT4 #(
    .INIT ( 16'h5510 ))
  A_less_B_mux00001 (
    .I0(A_greater_B2),
    .I1(A_greater_B3),
    .I2(A_less_B_OBUF_29),
    .I3(\comp2/A_equal_B_cmp_lt0000 ),
    .O(A_less_B_mux0000)
  );
  LUT4 #(
    .INIT ( 16'hCF4D ))
  \comp2/A_equal_B_cmp_lt00001_SW0  (
    .I0(B_2_IBUF_41),
    .I1(A_3_IBUF_11),
    .I2(B_3_IBUF_42),
    .I3(A_2_IBUF_10),
    .O(N30)
  );
  LUT3 #(
    .INIT ( 8'h2B ))
  \comp2/A_equal_B_cmp_lt00001  (
    .I0(B_4_IBUF_43),
    .I1(A_4_IBUF_12),
    .I2(N30),
    .O(\comp2/A_equal_B_cmp_lt0000 )
  );
  LUT4 #(
    .INIT ( 16'h7510 ))
  A_greater_B31_SW0 (
    .I0(B_1_IBUF_40),
    .I1(B_0_IBUF_39),
    .I2(A_0_IBUF_8),
    .I3(A_1_IBUF_9),
    .O(N34)
  );
  LUT3 #(
    .INIT ( 8'hD4 ))
  A_greater_B31 (
    .I0(B_2_IBUF_41),
    .I1(A_2_IBUF_10),
    .I2(N34),
    .O(A_greater_B3)
  );
  LUT4 #(
    .INIT ( 16'h7510 ))
  A_greater_B21_SW0 (
    .I0(B_3_IBUF_42),
    .I1(B_2_IBUF_41),
    .I2(A_2_IBUF_10),
    .I3(A_3_IBUF_11),
    .O(N36)
  );
  LUT3 #(
    .INIT ( 8'hD4 ))
  A_greater_B21 (
    .I0(B_4_IBUF_43),
    .I1(A_4_IBUF_12),
    .I2(N36),
    .O(A_greater_B2)
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  A_greater_B_mux0000_SW0 (
    .I0(\comp2/A_equal_B_cmp_lt0000 ),
    .I1(A_greater_B3),
    .I2(A_greater_B2),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  A_greater_B_mux0000 (
    .I0(N38),
    .I1(\comp3/A_equal_B_cmp_lt0000 ),
    .I2(A_less_B_OBUF_29),
    .I3(N39),
    .O(A_greater_B_mux0000_26)
  );
  LUT4 #(
    .INIT ( 16'hCF4D ))
  \comp3/A_equal_B_cmp_lt00001_SW0  (
    .I0(B_0_IBUF_39),
    .I1(A_1_IBUF_9),
    .I2(B_1_IBUF_40),
    .I3(A_0_IBUF_8),
    .O(N41)
  );
  LUT3 #(
    .INIT ( 8'h2B ))
  \comp3/A_equal_B_cmp_lt00001  (
    .I0(B_2_IBUF_41),
    .I1(A_2_IBUF_10),
    .I2(N41),
    .O(\comp3/A_equal_B_cmp_lt0000 )
  );
  IBUF   A_7_IBUF (
    .I(A[7]),
    .O(A_7_IBUF_15)
  );
  IBUF   A_6_IBUF (
    .I(A[6]),
    .O(A_6_IBUF_14)
  );
  IBUF   A_5_IBUF (
    .I(A[5]),
    .O(A_5_IBUF_13)
  );
  IBUF   A_4_IBUF (
    .I(A[4]),
    .O(A_4_IBUF_12)
  );
  IBUF   A_3_IBUF (
    .I(A[3]),
    .O(A_3_IBUF_11)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_10)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_9)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_8)
  );
  IBUF   B_7_IBUF (
    .I(B[7]),
    .O(B_7_IBUF_46)
  );
  IBUF   B_6_IBUF (
    .I(B[6]),
    .O(B_6_IBUF_45)
  );
  IBUF   B_5_IBUF (
    .I(B[5]),
    .O(B_5_IBUF_44)
  );
  IBUF   B_4_IBUF (
    .I(B[4]),
    .O(B_4_IBUF_43)
  );
  IBUF   B_3_IBUF (
    .I(B[3]),
    .O(B_3_IBUF_42)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_41)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_40)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_39)
  );
  OBUF   A_greater_B_OBUF (
    .I(A_greater_B_OBUF_25),
    .O(A_greater_B)
  );
  OBUF   A_equal_B_OBUF (
    .I(A_equal_B_OBUF_18),
    .O(A_equal_B)
  );
  OBUF   A_less_B_OBUF (
    .I(A_less_B_OBUF_29),
    .O(A_less_B)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  A_equal_B_mux0000_SW0_SW0 (
    .I0(\comp2/A_equal_B_cmp_lt0000 ),
    .I1(A_greater_B3),
    .I2(A_greater_B2),
    .O(N43)
  );
  LUT4 #(
    .INIT ( 16'h0405 ))
  A_equal_B_mux0000 (
    .I0(A_less_B_OBUF_29),
    .I1(A_equal_B_OBUF_18),
    .I2(N43),
    .I3(\comp3/A_equal_B_cmp_lt0000 ),
    .O(A_equal_B_mux0000_19)
  );
  LUT3 #(
    .INIT ( 8'hBE ))
  A_equal_B_or00001 (
    .I0(N28),
    .I1(B_7_IBUF_46),
    .I2(A_7_IBUF_15),
    .O(A_equal_B_or0000)
  );
  LUT4_L #(
    .INIT ( 16'hF3F2 ))
  A_greater_B_mux0000_SW1 (
    .I0(A_greater_B3),
    .I1(\comp2/A_equal_B_cmp_lt0000 ),
    .I2(A_greater_B2),
    .I3(A_greater_B_OBUF_25),
    .LO(N39)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

