////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: JKFF_synthesis.v
// /___/   /\     Timestamp: Sun Nov  3 19:17:02 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim seqqq.ngc JKFF_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: seqqq.ngc
// Output file	: /home/ise/seq9/netgen/synthesis/JKFF_synthesis.v
// # of Modules	: 1
// Design Name	: seqqq
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
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

module seqqq (
  clk, q2, ud
);
  input clk;
  output q2;
  input ud;
  wire N1;
  wire clk_BUFGP_2;
  wire \ff0/q_3 ;
  wire \ff1/q_4 ;
  wire \ff1/q_mux0000 ;
  wire \ff2/q_6 ;
  wire \ff2/q_mux0000 ;
  wire ud_IBUF_10;
  VCC   XST_VCC (
    .P(N1)
  );
  FD   \ff2/q  (
    .C(clk_BUFGP_2),
    .D(\ff2/q_mux0000 ),
    .Q(\ff2/q_6 )
  );
  FD   \ff1/q  (
    .C(clk_BUFGP_2),
    .D(\ff1/q_mux0000 ),
    .Q(\ff1/q_4 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \ff1/Mmux_q_mux000011  (
    .I0(ud_IBUF_10),
    .I1(\ff1/q_4 ),
    .I2(\ff0/q_3 ),
    .O(\ff1/q_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h78E1 ))
  \ff2/Mmux_q_mux000011  (
    .I0(ud_IBUF_10),
    .I1(\ff1/q_4 ),
    .I2(\ff2/q_6 ),
    .I3(\ff0/q_3 ),
    .O(\ff2/q_mux0000 )
  );
  IBUF   ud_IBUF (
    .I(ud),
    .O(ud_IBUF_10)
  );
  OBUF   q2_OBUF (
    .I(\ff2/q_6 ),
    .O(q2)
  );
  FDR   \ff0/q  (
    .C(clk_BUFGP_2),
    .D(N1),
    .R(\ff0/q_3 ),
    .Q(\ff0/q_3 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_2)
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

