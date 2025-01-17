module sevenSeg(
    input [2:0] data,
    output reg [7:0] seg
);

always @(data)
begin
    case(data)
    3'b000 : seg <= 8'b00111111;
    3'b001 : seg <= 8'b00000110;
    3'b010 : seg <= 8'b01011011;
    3'b011 : seg <= 8'b01001111;
    3'b100 : seg <= 8'b01100110; 
    3'b101 : seg <= 8'b01101101;
    3'b110 : seg <= 8'b01111101;
    3'b111 : seg <= 8'b00000111;
    endcase
end
endmodule