module comprator3bit(output GT , output EQ , output LT , input [2:0] A, input [2:0] B);
        assign GT = (A > B);
        assign EQ = (A == B);
        assign LT = (A < B);
endmodule

module test_bench();

    reg [2:0] A;
    reg [2:0] B;
    wire GT , EQ , LT;

    comprator3bit DUT(GT , EQ , LT , A , B);

    initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars(0 , test_bench);
      for(integer i = 0 ; i < 7 ; i = i + 1) begin
        {A[2] , A[1] , A[0]} = i;

        for(integer j = 0 ; j < 7 ; j = j + 1) begin
            {B[2] , B[1] , B[0]} = j;
            #20;
        end
        
      end
      
    $finish;
    end
    
endmodule