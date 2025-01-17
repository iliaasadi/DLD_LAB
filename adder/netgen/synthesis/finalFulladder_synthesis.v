////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: finalFulladder_synthesis.v
// /___/   /\     Timestamp: Tue Nov 05 15:35:25 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim finalFulladder.ngc finalFulladder_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: finalFulladder.ngc
// Output file	: D:\ummm\adder\netgen\synthesis\finalFulladder_synthesis.v
// # of Modules	: 1
// Design Name	: finalFulladder
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

module finalFulladder (
  cout, cin, s, a, b
);
  output cout;
  input cin;
  output [3 : 0] s;
  input [3 : 0] a;
  input [3 : 0] b;
  wire N0;
  wire a_0_IBUF_5;
  wire a_1_IBUF_6;
  wire a_2_IBUF_7;
  wire a_3_IBUF_8;
  wire b_0_IBUF_13;
  wire b_1_IBUF_14;
  wire b_2_IBUF_15;
  wire b_3_IBUF_16;
  wire cin_IBUF_18;
  wire cout_OBUF_20;
  wire \f4/Mxor_sum_xo<0>12_21 ;
  wire s_0_OBUF_26;
  GND   XST_GND (
    .G(s_0_OBUF_26)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \f4/Mxor_sum_xo<0>12  (
    .I0(b_1_IBUF_14),
    .I1(a_1_IBUF_6),
    .I2(b_2_IBUF_15),
    .I3(a_2_IBUF_7),
    .O(\f4/Mxor_sum_xo<0>12_21 )
  );
  IBUF   cin_IBUF (
    .I(cin),
    .O(cin_IBUF_18)
  );
  IBUF   a_3_IBUF (
    .I(a[3]),
    .O(a_3_IBUF_8)
  );
  IBUF   a_2_IBUF (
    .I(a[2]),
    .O(a_2_IBUF_7)
  );
  IBUF   a_1_IBUF (
    .I(a[1]),
    .O(a_1_IBUF_6)
  );
  IBUF   a_0_IBUF (
    .I(a[0]),
    .O(a_0_IBUF_5)
  );
  IBUF   b_3_IBUF (
    .I(b[3]),
    .O(b_3_IBUF_16)
  );
  IBUF   b_2_IBUF (
    .I(b[2]),
    .O(b_2_IBUF_15)
  );
  IBUF   b_1_IBUF (
    .I(b[1]),
    .O(b_1_IBUF_14)
  );
  IBUF   b_0_IBUF (
    .I(b[0]),
    .O(b_0_IBUF_13)
  );
  OBUF   cout_OBUF (
    .I(cout_OBUF_20),
    .O(cout)
  );
  OBUF   s_3_OBUF (
    .I(s_0_OBUF_26),
    .O(s[3])
  );
  OBUF   s_2_OBUF (
    .I(s_0_OBUF_26),
    .O(s[2])
  );
  OBUF   s_1_OBUF (
    .I(s_0_OBUF_26),
    .O(s[1])
  );
  OBUF   s_0_OBUF (
    .I(s_0_OBUF_26),
    .O(s[0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \f4/Mxor_sum_xo<0>14_SW0  (
    .I0(a_0_IBUF_5),
    .I1(b_0_IBUF_13),
    .I2(\f4/Mxor_sum_xo<0>12_21 ),
    .O(N0)
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \f4/Mxor_sum_xo<0>14  (
    .I0(a_3_IBUF_8),
    .I1(b_3_IBUF_16),
    .I2(cin_IBUF_18),
    .I3(N0),
    .O(cout_OBUF_20)
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

