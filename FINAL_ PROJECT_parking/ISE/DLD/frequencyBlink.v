
//////////////////////////////////////////////
//////////////////////// FREQ /////////////////
//////////////////////////////////////////////


module frequencyBlink(
    input CLK,                    // Clock input
    input RST,                    // Reset signal
    input door_open_to_entry,     // Signal for door opening for entry
    input door_open_to_exit,      // Signal for door opening for exit
    input full_garage,            // Signal for full garage
    output reg light_door_open,   // Door light output
    output reg light_full_garage  // Garage light output
);

    // Parameters for timing (adjust for your clock frequency)
    parameter CLOCK_FREQ = 10000;  
    parameter CLOCK_FREQ_FULL = 20000;    
    parameter TOGGLE_INTERVAL = CLOCK_FREQ;
    parameter TOGGLE_INTERVAL_FULL = CLOCK_FREQ_FULL;

    // Registers for counters and states
    reg [31:0] counter_door = 0;
    reg [31:0] counter_garage = 0;
    reg [4:0] blink_count_door = 0;
    reg [1:0] blink_count_garage = 0;

    reg door_active = 0;
    reg garage_active = 0;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            // Reset all outputs and states
            light_door_open <= 0;
            light_full_garage <= 0;
            counter_door <= 0;
            counter_garage <= 0;
            blink_count_door <= 0;
            blink_count_garage <= 0;
            door_active <= 0;
            garage_active <= 0;
        end
        
        //  else if ((door_open_to_entry || door_open_to_exit || full_garage) == 0)begin
        //     light_door_open <= 0;
        //     light_full_garage <= 0;
        //     counter_door <= 0;
        //     counter_garage <= 0;
        //     blink_count_door <= 0;
        //     blink_count_garage <= 0;
        //     door_active <= 0;
        //     garage_active <= 0;
        // end 
        
        else begin
            // Activate door blinking if entry or exit is triggered
            if (door_open_to_entry || door_open_to_exit) begin
                door_active <= 1;
                light_door_open <= 1;

            end

            // Door light toggling logic
            if (door_active) begin
                if (counter_door == TOGGLE_INTERVAL - 1) begin
                    counter_door <= 0;
                    light_door_open <= ~light_door_open;  // Toggle light
                    if (light_door_open) begin
                        blink_count_door <= blink_count_door + 1;
                        if (blink_count_door == 19) begin
                            blink_count_door <= 0;
                            door_active <= 0;  // Stop after 10 blinks
                            light_door_open <= 0;
                        end
                    end
                end else begin
                    counter_door <= counter_door + 1;
                end
            end

            // Activate garage blinking if full_garage is triggered
            if (full_garage) begin
                garage_active <= 1;
                light_full_garage <= 1;
            end

            // Garage light toggling logic
            if (garage_active) begin
                if (counter_garage == CLOCK_FREQ_FULL - 1) begin
                    counter_garage <= 0;
                    light_full_garage <= ~light_full_garage;  // Toggle light
                    if (light_full_garage) begin
                        blink_count_garage <= blink_count_garage + 1;
                        if (blink_count_garage == 2) begin
                            blink_count_garage <= 0;
                            garage_active <= 0;  // Stop after 3 blinks
                            light_full_garage <= 0;
                        end
                    end
                end else begin
                    counter_garage <= counter_garage + 1;
                end
            end
        end
    end
endmodule