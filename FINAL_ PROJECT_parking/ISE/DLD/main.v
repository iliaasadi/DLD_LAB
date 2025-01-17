
////////////////////////////////////////////
////////////// MAIN ////////////////////////
///////////////////////////////////////////


module main (
input car_in,
input car_out,
input [1:0] Ex,
input clk_in,
input RST,

//output  entry1,
//output  exit1,
//output  [2:0] capacity,
//output  [1:0] nearest_park,

output  [3:0] parking_lights,

output  light_door_open,
output  light_full_garage,
output [7:0] seg_data,
output [4:0] seg_select

);
wire [2:0] capacity;
wire [1:0] nearest_park;

wire CLK , entry , exit;
CLK_main clkmain(clk_in , ~RST , CLK);
D_B db1(~car_in , ~RST , CLK , entry);
D_B db2(~car_out , ~RST , CLK , exit);
//and (entry1 , entry , 1);
//and (exit1, exit , 1);
changeState changestate( 
    .entry(entry), 
    .exit(exit), 
    .Ex(Ex[1:0]), 
    .CLK(CLK), 
    .RST(~RST), 
    .capacity(capacity[2:0]), 
    .nearest_park(nearest_park[1:0]), 
    .light_door_open(light_door_open), 
    .light_full_garage(light_full_garage), 
    .parking_lights(parking_lights[3:0])
);
segDevider segDevider (
	.CLK(CLK),
	.RST(~RST),
	.capacity(capacity[2:0]),
	.nearest_park(nearest_park[1:0]),
	.seg_data(seg_data[7:0]),
	.seg_select(seg_select[4:0])
);
endmodule