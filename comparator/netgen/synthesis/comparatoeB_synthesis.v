////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: comparatoeB_synthesis.v
// /___/   /\     Timestamp: Tue Oct 29 16:19:33 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim comparatoeB.ngc comparatoeB_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: comparatoeB.ngc
// Output file	: D:\ilck\comparator\netgen\synthesis\comparatoeB_synthesis.v
// # of Modules	: 1
// Design Name	: comparatoeB
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

module comparatoeB (
  A_greater_B, A_equal_B, A_less_B, A, B
);
  output A_greater_B;
  output A_equal_B;
  output A_less_B;
  input [2 : 0] A;
  input [2 : 0] B;
  wire A_0_IBUF_3;
  wire A_1_IBUF_4;
  wire A_2_IBUF_5;
  wire A_equal_B_OBUF_7;
  wire A_greater_B_OBUF_9;
  wire A_less_B_OBUF_11;
  wire B_0_IBUF_15;
  wire B_1_IBUF_16;
  wire B_2_IBUF_17;
  wire N4;
  wire N6;
  LUT4 #(
    .INIT ( 16'h7510 ))
  A_greater_B1_SW0 (
    .I0(B_1_IBUF_16),
    .I1(B_0_IBUF_15),
    .I2(A_0_IBUF_3),
    .I3(A_1_IBUF_4),
    .O(N4)
  );
  LUT3 #(
    .INIT ( 8'hD4 ))
  A_greater_B1 (
    .I0(B_2_IBUF_17),
    .I1(A_2_IBUF_5),
    .I2(N4),
    .O(A_greater_B_OBUF_9)
  );
  LUT4 #(
    .INIT ( 16'hCF4D ))
  A_less_B_SW0 (
    .I0(B_0_IBUF_15),
    .I1(A_1_IBUF_4),
    .I2(B_1_IBUF_16),
    .I3(A_0_IBUF_3),
    .O(N6)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_5)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_4)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_3)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_17)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_16)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_15)
  );
  OBUF   A_greater_B_OBUF (
    .I(A_greater_B_OBUF_9),
    .O(A_greater_B)
  );
  OBUF   A_equal_B_OBUF (
    .I(A_equal_B_OBUF_7),
    .O(A_equal_B)
  );
  OBUF   A_less_B_OBUF (
    .I(A_less_B_OBUF_11),
    .O(A_less_B)
  );
  LUT4 #(
    .INIT ( 16'h02AB ))
  A_less_B_13 (
    .I0(B_2_IBUF_17),
    .I1(N6),
    .I2(N4),
    .I3(A_2_IBUF_5),
    .O(A_less_B_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'h0900 ))
  A_equal_B_14 (
    .I0(B_2_IBUF_17),
    .I1(A_2_IBUF_5),
    .I2(N4),
    .I3(N6),
    .O(A_equal_B_OBUF_7)
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

