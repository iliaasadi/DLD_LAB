
module tb_main;

// Inputs
reg car_in;
reg car_out;
reg [1:0] Ex;
reg clk_in;
reg RST;

// Outputs
wire [2:0] capacity;
wire [1:0] nearest_park;
wire light_door_open;
wire light_full_garage;
wire [3:0] parking_lights;
wire exit1;
wire entry1;

// Instantiate the Unit Under Test (UUT)
main uut (
    .car_in(car_in),
    .car_out(car_out),
    .Ex(Ex),
    .clk_in(clk_in),
    .RST(RST),
	 .entry1(entry1),
    .exit1(exit1),
    .capacity(capacity),
    .nearest_park(nearest_park),
    .light_door_open(light_door_open),
    .light_full_garage(light_full_garage),
    .parking_lights(parking_lights)
);

// Clock generation
always #1.25 clk_in = ~clk_in; // 100 MHz clock

initial begin
    // Initialize Inputs
    car_in = 0;
    car_out = 0;
    Ex = 2'b00;
    clk_in = 0;
    RST = 1;
    
    // Wait 20 ns for global reset
    #200000 RST = 0;

    // Test Case 1: A car enters (normal operation)
    #1000000 car_in = 1; car_out = 0; Ex = 2'b01;
    #250 car_in = 0;

    // Test Case 2: A car exits
    #1000000 car_out = 1; Ex = 2'b10; 
    #250 car_out = 0;
 
    // Test Case 3: Multiple cars enter and exit
    #1000000 car_in = 1; car_out = 0; Ex = 2'b01;
    #250 car_in = 0; 
    #1000000 car_in = 1; car_out = 0; Ex = 2'b01;
    #250 car_in = 0; 
    #1000000 car_in = 1; car_out = 0; Ex = 2'b01;
    #250 car_in = 0; 
    #1000000 car_in = 1; car_out = 0; Ex = 2'b01;
    #250 car_in = 0; 
    #1000000 car_in = 1; car_out = 0; Ex = 2'b01;
    #250 car_in = 0; 
    #1000000 car_in = 0;car_out =1; Ex = 2'b01; // Another car enters
    #250 car_in = 0; 
    #1000000 car_out = 1; Ex = 2'b10; // A car exits
    #250 car_out = 0;
 
    // Test Case 4: Garage  full scenario
    #1000000 Ex = 2'b11; // Simulate near-full parking
    #250 car_in = 1; // A car tries to enter
    #250 car_in = 0;

     

    // Test Case 6: Light indications
    #1000000 car_in = 1; car_out = 0; Ex = 2'b00; // Test light_door_open
    #250 car_in = 0; 
    #1000000 Ex = 2'b11; // Test light_full_garage
   
    // End simulation
    #10000000 $finish;
end


endmodule
