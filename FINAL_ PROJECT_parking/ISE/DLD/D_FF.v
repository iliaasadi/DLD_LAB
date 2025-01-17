
//////////////////////////////////////////
///////////// FLIP FLOP //////////////////
//////////////////////////////////////////




module D_FF(
    input D,
    input RST,
    input CLK,
    output reg Q
);
    always @ (CLK) begin
        if (RST)
            Q <= 1'b0; // Reset Q to 0
        else if (CLK)
            Q <= D; // Update Q with D on rising edge of CLK
    end
endmodule