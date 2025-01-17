module comparator3bit(
    input [2:0] A,
    input [2:0] B,
    output reg A_gt_B,
    output reg A_eq_B,
    output reg A_lt_B
);

always @(A or B) begin
    if (A > B) begin
        A_gt_B = 1;
        A_eq_B = 0;
        A_lt_B = 0;
    end else if (A == B) begin
        A_gt_B = 0;
        A_eq_B = 1;
        A_lt_B = 0;
    end else begin
        A_gt_B = 0;
        A_eq_B = 0;
        A_lt_B = 1;
    end
end

endmodule

module comparator8bit(
    input [7:0] A,
    input [7:0] B,
    output A_gt_B,
    output A_eq_B,
    output A_lt_B
);

wire A_gt_B1, A_eq_B1, A_lt_B1;
wire A_gt_B2, A_eq_B2, A_lt_B2;
wire A_gt_B3, A_eq_B3, A_lt_B3;

// Most significant 3 bits
comparator3bit comp1 (
    .A(A[7:5]),
    .B(B[7:5]),
    .A_gt_B(A_gt_B1),
    .A_eq_B(A_eq_B1),
    .A_lt_B(A_lt_B1)
);

// Middle 3 bits
comparator3bit comp2 (
    .A(A[4:2]),
    .B(B[4:2]),
    .A_gt_B(A_gt_B2),
    .A_eq_B(A_eq_B2),
    .A_lt_B(A_lt_B2)
);

// Least significant 2 bits + 1 bit
comparator3bit comp3 (
    .A(A[2:0]),
    .B(B[2:0]),
    .A_gt_B(A_gt_B3),
    .A_eq_B(A_eq_B3),
    .A_lt_B(A_lt_B3)
);

assign A_gt_B = A_gt_B1 | (A_eq_B1 & A_gt_B2) | (A_eq_B1 & A_eq_B2 & A_gt_B3);
assign A_eq_B = A_eq_B1 & A_eq_B2 & A_eq_B3;
assign A_lt_B = A_lt_B1 | (A_eq_B1 & A_lt_B2) | (A_eq_B1 & A_eq_B2 & A_lt_B3);

endmodule

module test_bench;
    reg [7:0] A;
    reg [7:0] B;
    wire A_gt_B;
    wire A_eq_B;
    wire A_lt_B;

    comparator8bit uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
        $dumpfile("test_bench.vcd");
    $dumpvars(0 , test_bench);
        // Test case 1: A > B
        A = 8'b10101010; // 170
        B = 8'b01100100; // 100
        #10;

        // Test case 2: A < B
        A = 8'b00101010; // 42
        B = 8'b01100100; // 100
        #10;

        end
endmodule