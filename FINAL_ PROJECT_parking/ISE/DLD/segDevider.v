module segDevider(
    input CLK,
    input RST,
    input [2:0] capacity,
    input [1:0] nearest_park,
    output reg [7:0] seg_data,
    output reg [4:0] seg_select
);

wire [7:0] seg1;
wire [7:0] seg2;

sevenSeg f1(.data(capacity[2:0]), .seg(seg1)); // second digit
sevenSeg f2(.data({1'b0, nearest_park[1:0]}), .seg(seg2)); // third digit
 
always @(posedge CLK or posedge RST) begin
    if (RST) begin
        seg_select <= 5'b00001;
        seg_data <= 8'b00000000;
    end else begin
			 if(capacity == 3'b000) begin 
				if(seg_select == 5'b00001)begin 
						seg_select <= 5'b00100;
						seg_data <= seg1;
				end else if(seg_select == 5'b00100)begin 
						seg_select <= 5'b00001;
						seg_data <= 8'b01000000;
				end
        end else if (seg_select == 5'b00001) begin
            seg_select <= 5'b00100;
            seg_data <= seg1;
        end else if (seg_select == 5'b00100) begin
            seg_select <= 5'b00001;
            seg_data <= seg2;
		  end
    end
end

endmodule