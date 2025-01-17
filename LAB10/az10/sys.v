`timescale 1ns / 1ps
module sys (
    input clk,
    input Request,
    input reset,
    input Confirm,
    input [3:0] password,
    input [3:0] data_in,
    output reg [2:0] current_state,
    output [3:0] reg_odd,
    output [3:0] reg_even
);
    parameter IDLE = 3'b000,
	ACTIVE = 3'b001, 
	SAVE = 3'b110, 
	TRAP = 3'b111, 
	REQUEST = 3'b101;
    parameter CORRECT_PASSWORD = 4'b0101;

    reg [2:0] next_state;
    reg odd_en, even_en;

    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= IDLE;
        else
            current_state <= next_state;
    end

    always @(*) begin
        next_state = current_state;
        odd_en = 0;
        even_en = 0;

        case (current_state)
            IDLE: begin
                if (Request)
                    next_state = ACTIVE;
            end
            ACTIVE: begin
                if (!Request)
                    next_state = IDLE;
                else if (Confirm) begin
                    if (password == CORRECT_PASSWORD)
                        next_state = REQUEST;
                    else
                        next_state = TRAP;
                end
            end
            REQUEST: begin
                if (!Request)
                    next_state = IDLE;
                else if (Confirm)
                    next_state = SAVE;
            end
            TRAP: begin
                if (!Request)
                    next_state = IDLE;
            end
            SAVE: begin
                if (!Request)
                    next_state = IDLE;
                else if (Confirm) begin
                    if (data_in % 2 == 0)
                        even_en = 1;
                    else
                        odd_en = 1;
                end
            end
        endcase
    end

    reg4bit odd_register (
        .clk(clk),
        .reset(reset),
        .en(odd_en),
        .Din(data_in),
        .Dout(reg_odd)
    );

    reg4bit even_register (
        .clk(clk),
        .reset(reset),
        .en(even_en),
        .Din(data_in),
        .Dout(reg_even)
    );
endmodule
