`timescale 1ns / 1ps

module sys_tb;
    reg reset;
    reg clk;
    reg Request;
    reg Confirm;
    reg [3:0] password;
    reg [3:0] data_in;
    wire [2:0] current_state;
    wire [3:0] reg_odd;
    wire [3:0] reg_even;

    sys uut (
        .clk(clk),
        .reset(reset),
        .Request(Request),
        .Confirm(Confirm),
        .password(password),
        .data_in(data_in),
        .current_state(current_state),
        .reg_odd(reg_odd),
        .reg_even(reg_even)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        reset = 1;
        Request = 0;
        Confirm = 0;
        password = 4'b1111;
        data_in = 4'b1100;

        #20;
        reset = 0;
        Request = 1;
        #10;
        Request = 0;
        #10;

        password = 4'b0101;
        Request = 1;
        #10;
        Confirm = 1;
        #20;
        data_in = 4'b0101;
        #20;
        data_in = 4'b0110;

        #20;
        Request = 0;
		#20;
        Request = 1;
        #10;
		password = 4'b1101;
		#20
	    Confirm = 1;
		Request = 0;
		#20;
		 Request = 1;
        #10;
		
        password = 4'b0101;
        Request = 1;
        #10;
        Confirm = 1;
        #20;
        data_in = 4'b1111;
        #20;
        data_in = 4'b0100;
		#20;

		Request = 0;
		#20;


        #50;
        $finish;
    end
endmodule
