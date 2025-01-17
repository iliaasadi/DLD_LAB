////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: decoder4X16_synthesis.v
// /___/   /\     Timestamp: Tue Oct 29 15:46:24 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim decoder4X16.ngc decoder4X16_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: decoder4X16.ngc
// Output file	: D:\ilck\decoder2x4\netgen\synthesis\decoder4X16_synthesis.v
// # of Modules	: 1
// Design Name	: decoder4X16
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

module decoder4X16 (
  D0, d1, D2, D3, D4, D5, D6, D7, D8, D9, en, D10, D11, D12, D13, D14, c, D15, d, D1, c1
);
  output D0;
  input d1;
  output D2;
  output D3;
  output D4;
  output D5;
  output D6;
  output D7;
  output D8;
  output D9;
  input en;
  output D10;
  output D11;
  output D12;
  output D13;
  output D14;
  input c;
  output D15;
  input d;
  output D1;
  input c1;
  wire D0_OBUF_1;
  wire D10_OBUF_3;
  wire D11_OBUF_5;
  wire D12_OBUF_7;
  wire D13_OBUF_9;
  wire D14_OBUF_11;
  wire D15_OBUF_13;
  wire D1_rnm0_OBUF_15;
  wire D2_OBUF_17;
  wire D3_OBUF_19;
  wire D4_OBUF_21;
  wire D5_OBUF_23;
  wire D6_OBUF_25;
  wire D7_OBUF_27;
  wire D8_OBUF_29;
  wire D9_OBUF_31;
  wire N01;
  wire N11;
  wire N2;
  wire N3;
  wire c1_IBUF_38;
  wire c_IBUF_39;
  wire d1_IBUF_42;
  wire d_IBUF_43;
  wire en_IBUF_45;
  LUT2 #(
    .INIT ( 4'h8 ))
  \g1/I311  (
    .I0(c_IBUF_39),
    .I1(d_IBUF_43),
    .O(N01)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \g1/I211  (
    .I0(c_IBUF_39),
    .I1(d_IBUF_43),
    .O(N11)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \g1/I111  (
    .I0(d_IBUF_43),
    .I1(c_IBUF_39),
    .O(N2)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \g1/I011  (
    .I0(c_IBUF_39),
    .I1(d_IBUF_43),
    .O(N3)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \g4/I31  (
    .I0(d1_IBUF_42),
    .I1(N01),
    .I2(en_IBUF_45),
    .I3(c1_IBUF_38),
    .O(D15_OBUF_13)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \g4/I21  (
    .I0(d1_IBUF_42),
    .I1(N11),
    .I2(en_IBUF_45),
    .I3(c1_IBUF_38),
    .O(D14_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \g4/I11  (
    .I0(d1_IBUF_42),
    .I1(N2),
    .I2(en_IBUF_45),
    .I3(c1_IBUF_38),
    .O(D13_OBUF_9)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \g4/I01  (
    .I0(d1_IBUF_42),
    .I1(N3),
    .I2(en_IBUF_45),
    .I3(c1_IBUF_38),
    .O(D12_OBUF_7)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \g3/I31  (
    .I0(d1_IBUF_42),
    .I1(N01),
    .I2(en_IBUF_45),
    .I3(c1_IBUF_38),
    .O(D11_OBUF_5)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \g3/I21  (
    .I0(d1_IBUF_42),
    .I1(N11),
    .I2(en_IBUF_45),
    .I3(c1_IBUF_38),
    .O(D10_OBUF_3)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \g3/I11  (
    .I0(d1_IBUF_42),
    .I1(N2),
    .I2(c1_IBUF_38),
    .I3(en_IBUF_45),
    .O(D9_OBUF_31)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \g3/I01  (
    .I0(d1_IBUF_42),
    .I1(N3),
    .I2(c1_IBUF_38),
    .I3(en_IBUF_45),
    .O(D8_OBUF_29)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \g2/I31  (
    .I0(c1_IBUF_38),
    .I1(d1_IBUF_42),
    .I2(N01),
    .I3(en_IBUF_45),
    .O(D7_OBUF_27)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \g2/I21  (
    .I0(c1_IBUF_38),
    .I1(d1_IBUF_42),
    .I2(N11),
    .I3(en_IBUF_45),
    .O(D6_OBUF_25)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \g2/I11  (
    .I0(c1_IBUF_38),
    .I1(d1_IBUF_42),
    .I2(N2),
    .I3(en_IBUF_45),
    .O(D5_OBUF_23)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \g2/I01  (
    .I0(c1_IBUF_38),
    .I1(d1_IBUF_42),
    .I2(N3),
    .I3(en_IBUF_45),
    .O(D4_OBUF_21)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \g1/I31  (
    .I0(N01),
    .I1(d1_IBUF_42),
    .I2(c1_IBUF_38),
    .I3(en_IBUF_45),
    .O(D3_OBUF_19)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \g1/I21  (
    .I0(N11),
    .I1(d1_IBUF_42),
    .I2(c1_IBUF_38),
    .I3(en_IBUF_45),
    .O(D2_OBUF_17)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \g1/I11  (
    .I0(N2),
    .I1(d1_IBUF_42),
    .I2(c1_IBUF_38),
    .I3(en_IBUF_45),
    .O(D1_rnm0_OBUF_15)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \g1/I01  (
    .I0(N3),
    .I1(d1_IBUF_42),
    .I2(c1_IBUF_38),
    .I3(en_IBUF_45),
    .O(D0_OBUF_1)
  );
  IBUF   d1_IBUF (
    .I(d1),
    .O(d1_IBUF_42)
  );
  IBUF   en_IBUF (
    .I(en),
    .O(en_IBUF_45)
  );
  IBUF   c_IBUF (
    .I(c),
    .O(c_IBUF_39)
  );
  IBUF   d_IBUF (
    .I(d),
    .O(d_IBUF_43)
  );
  IBUF   c1_IBUF (
    .I(c1),
    .O(c1_IBUF_38)
  );
  OBUF   D0_OBUF (
    .I(D0_OBUF_1),
    .O(D0)
  );
  OBUF   D2_OBUF (
    .I(D2_OBUF_17),
    .O(D2)
  );
  OBUF   D3_OBUF (
    .I(D3_OBUF_19),
    .O(D3)
  );
  OBUF   D4_OBUF (
    .I(D4_OBUF_21),
    .O(D4)
  );
  OBUF   D5_OBUF (
    .I(D5_OBUF_23),
    .O(D5)
  );
  OBUF   D6_OBUF (
    .I(D6_OBUF_25),
    .O(D6)
  );
  OBUF   D7_OBUF (
    .I(D7_OBUF_27),
    .O(D7)
  );
  OBUF   D8_OBUF (
    .I(D8_OBUF_29),
    .O(D8)
  );
  OBUF   D9_OBUF (
    .I(D9_OBUF_31),
    .O(D9)
  );
  OBUF   D10_OBUF (
    .I(D10_OBUF_3),
    .O(D10)
  );
  OBUF   D11_OBUF (
    .I(D11_OBUF_5),
    .O(D11)
  );
  OBUF   D12_OBUF (
    .I(D12_OBUF_7),
    .O(D12)
  );
  OBUF   D13_OBUF (
    .I(D13_OBUF_9),
    .O(D13)
  );
  OBUF   D14_OBUF (
    .I(D14_OBUF_11),
    .O(D14)
  );
  OBUF   D15_OBUF (
    .I(D15_OBUF_13),
    .O(D15)
  );
  OBUF   D1_rnm0_OBUF (
    .I(D1_rnm0_OBUF_15),
    .O(D1)
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

