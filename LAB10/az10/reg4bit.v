`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module reg4bit (
    input clk,
    input en,
    input reset,
    input [3:0] Din,
    output reg [3:0] Dout
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Dout <= 4'b0000;
        end else if (en) begin
            Dout <= Din;
        end
    end
endmodule

