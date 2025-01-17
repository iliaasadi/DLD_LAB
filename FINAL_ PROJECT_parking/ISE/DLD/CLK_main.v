//////////////////////////////////////////
///////////// CLK //////////////////
//////////////////////////////////////////


module CLK_main(
    input clk_in,
    input RST,
    output reg clk_out
);
    reg [25:0] counter = 0;

    always @ (posedge clk_in or posedge RST) begin
        if (RST) begin
            counter <= 0;
            clk_out <= 0; // Reset clk_out
        end else begin
            if (counter == 500 - 1) begin
                counter <= 0;
                clk_out <= ~clk_out; // Toggle clk_out
            end else begin
                counter <= counter + 1;
            end
        end
    end
endmodule
