module changeState (
    input entry,
    input exit,
    input [1:0] Ex, // Location of exited car
    input CLK,
    input RST,
    output reg [2:0] capacity,
    output reg [1:0] nearest_park,
    output  light_door_open,
    output  light_full_garage,
    output reg [3:0] parking_lights
);
    reg [3:0] state;
    reg door_open_to_entry;
    reg door_open_to_exit;
    reg full_garage;

    parameter 
        S0 = 4'b0000, 
        S1 = 4'b0001,
        S2 = 4'b0010,
        S3 = 4'b0011,     
        S4 = 4'b0100,     
        S5 = 4'b0101,     
        S6 = 4'b0110,     
        S7 = 4'b0111,     
        S8 = 4'b1000,     
        S9 = 4'b1001,     
        S10 = 4'b1010,    
        S11 = 4'b1011,    
        S12 = 4'b1100,    
        S13 = 4'b1101,    
        S14 = 4'b1110,    
        S15 = 4'b1111;    


        frequencyBlink freq(CLK , RST , door_open_to_entry , door_open_to_exit , full_garage , light_door_open , light_full_garage);

    always @(posedge CLK or posedge RST) begin

		  if (RST) begin
            capacity <= 3'b100;
            nearest_park <= 2'b00;
            full_garage <= 1'b0;
            door_open_to_entry <= 1'b0;
            door_open_to_exit <= 1'b0;
            parking_lights <= S0;
            state <= S0;
        end else begin
            case (state)
                // State S0
                S0: begin
                    capacity <= 3'b100;
                    nearest_park <= 2'b00;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    full_garage <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b011;
                        nearest_park <= 2'b01;
                        parking_lights <= S1;
                        state <= S1;
                    end
                end

                // State S1
                S1: begin
                    capacity <= 3'b011;
                    nearest_park <= 2'b01;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b010;
                        nearest_park <= 2'b10;
                        parking_lights <= S3;
                        state <= S3;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b00) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b100;
                            nearest_park <= 2'b00;
                            parking_lights <= S0;
                            state <= S0;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S1;
                            state <= S1;
                        end
                    end
                end

                // State S2
                S2: begin
                    capacity <= 3'b011;
                    nearest_park <= 2'b00;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b010;
                        nearest_park <= 2'b10;
                        parking_lights <= S3;
                        state <= S3;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b01) begin
                        door_open_to_exit <= 1'b1;
                        capacity <= 3'b100;
                        nearest_park <= 2'b00;
                        parking_lights <= S0; 
                        state <= S0; 
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S2;
                            state <= S2;
                        end
                    end
                end

                // State S3
                S3: begin
                    capacity <= 3'b010;
                    nearest_park <= 2'b10;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b001;
                        nearest_park <= 2'b11;
                        parking_lights <= S7;
                        state <= S7;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b00) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b00;
                            parking_lights <= S2;
                            state <= S2;
                        end
                        else if (Ex == 2'b01) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b01;
                            parking_lights <= S1;
                            state <= S1;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S3;
                            state <= S3;
                        end
                    end
                end

                // State S4
                S4: begin
                    capacity <= 3'b011;
                    nearest_park <= 2'b00;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b010;
                        nearest_park <= 2'b01;
                        parking_lights <= S5;
                        state <= S5;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b10) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b100;
                            nearest_park <= 2'b00;
                            parking_lights <= S0;
                            state <= S0;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S4;
                            state <= S4;
                        end
                    end
                end

                // State S5
                S5: begin
                    capacity <= 3'b010;
                    nearest_park <= 2'b01;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b001;
                        nearest_park <= 2'b11;
                        parking_lights <= S7;
                        state <= S7;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b00) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b00;
                            parking_lights <= S4;
                            state <= S4;
                        end
                        else if (Ex == 2'b10) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b01;
                            parking_lights <= S1;
                            state <= S1;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S5;
                            state <= S5;
                        end
                    end
                end

                // State S6
                S6: begin
                    capacity <= 3'b010;
                    nearest_park <= 2'b00;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b001;
                        nearest_park <= 2'b11;
                        parking_lights <= S7;
                        state <= S7;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b01) begin 
                            door_open_to_exit <= 1'b1;
                             capacity <= 3'b011;
                             nearest_park <= 2'b00;
                             parking_lights <= S4;
                             state <= S4;
                        end
                        else if (Ex == 2'b10) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b00;
                            parking_lights <= S2;
                            state <= S2;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S6;
                            state <= S6;
                        end
                    end
                end

                // State S7
                S7: begin
                    capacity <= 3'b001;
                    nearest_park <= 2'b11;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    full_garage <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b000;
                        nearest_park <= 2'b11;          
                        full_garage <= 1'b0;
                        parking_lights <= S15;
                        state <= S15;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b00) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b010;
                            nearest_park <= 2'b00; 
                            parking_lights <= S6;
                            state <= S6;
                        end
                        else if (Ex == 2'b01) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b010;
                            nearest_park <= 2'b01;
                            parking_lights <= S5;
                            state <= S5;
                        end
                        else if (Ex == 2'b10) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b010;
                            nearest_park <= 2'b10;
                            parking_lights <= S3;
                            state <= S3;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S7;
                            state <= S7;
                        end
                    end
                end

                // State S8
                S8: begin
                    capacity <= 3'b011;
                    nearest_park <= 2'b00;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b010;
                        nearest_park <= 2'b01;
                        parking_lights <= S9;
                        state <= S9;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b11) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b100;
                            nearest_park <= 2'b00;
                            parking_lights <= S0;
                            state <= S0;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S8;
                            state <= S8;
                        end
                    end
                end

                // State S9
                S9: begin
                    capacity <= 3'b010;
                    nearest_park <= 2'b01;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b001;
                        nearest_park <= 2'b10;
                        parking_lights <= S11;
                        state <= S11;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b00) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b00;
                            parking_lights <= S8;
                            state <= S8;
                        end
                        else if (Ex == 2'b11) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b01;
                            parking_lights <= S1;
                            state <= S1;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S9;
                            state <= S9;
                        end
                    end
                end

                // State S10
                S10: begin
                    capacity <= 3'b010;
                    nearest_park <= 2'b00;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b001;
                        nearest_park <= 2'b10;
                        parking_lights <= S11;
                        state <= S11;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b01) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b00; 
                            parking_lights <= S8;
                            state <= S8;
                        end
                        if (Ex == 2'b11) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b00;
                            parking_lights <= S2;
                            state <= S2;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S1;
                            state <= S1;
                        end
                    end
                end

                // State S11
                S11: begin
                    capacity <= 3'b001;
                    nearest_park <= 2'b10;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    full_garage <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b000;
                        nearest_park <= 2'b11;          
                        full_garage <= 1'b0;
                        parking_lights <= S15;
                        state <= S15;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b00) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b010;
                            nearest_park <= 2'b00;
                            parking_lights <= S10;
                            state <= S10;
                        end
                        else if (Ex == 2'b01) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b010;
                            nearest_park <= 2'b01;
                             parking_lights <= S9;
                             state <= S9;
                        end
                        else if (Ex == 2'b11) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b010;
                            nearest_park <= 2'b10;
                            parking_lights <= S3;
                            state <= S3;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S11;
                            state <= S11;
                        end
                    end
                end

                // State S12
                S12: begin
                    capacity <= 3'b010;
                    nearest_park <= 2'b00;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b001;
                        nearest_park <= 2'b01;
                        parking_lights <= S13;
                        state <= S13;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b10) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b00;
                            parking_lights <= S8;
                            state <= S8;
                        end
                        else if (Ex == 2'b11) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b011;
                            nearest_park <= 2'b00;
                            parking_lights <=S4;
                            state <=S4;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S12;
                            state <= S12;
                        end
                    end
                end

                // State S13
                S13: begin
                    capacity <= 3'b001;
                    nearest_park <= 2'b01;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    full_garage <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b000;
                        nearest_park <= 2'b11;          
                        full_garage <= 1'b0;
                        parking_lights <= S15;
                        state <= S15;
                    end else if (exit) begin
                        full_garage <= 1'b0;
                        if (Ex == 2'b00) begin
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b010;
                            nearest_park <= 2'b00;
                            parking_lights <= S12;
                            state <= S12;
                        end
                        else if (Ex == 2'b10) begin
                            door_open_to_exit <= 1'b1;
                             capacity <= 3'b010;
                             nearest_park <= 2'b01;
                             parking_lights <= S9;
                             state <= S9;
                        end
                        else if (Ex == 2'b11) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b010;
                            nearest_park <= 2'b01;
                            parking_lights <= S5;
                            state <= S5;
                        end
                        else begin //wrong Ex location  then return to current state
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S13;
                            state <= S13;
                        end
                    end
                end

                // State S14
                S14: begin
                    capacity <= 3'b001;
                    nearest_park <= 2'b00;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    full_garage <= 1'b0;
                    if (entry) begin
                        door_open_to_entry <= 1'b1;
                        door_open_to_exit <= 1'b0;
                        capacity <= 3'b000;
                        nearest_park <= 2'b11;          
                        full_garage <= 1'b0;
                        parking_lights <= S15;
                        state <= S15;
                    end else if (exit) begin
                        if (Ex == 2'b01) begin 
                            door_open_to_exit <= 1'b1;
                            full_garage <= 1'b0;
                            capacity <= 3'b010;
                            nearest_park <= 2'b00;
                            parking_lights <= S12;
                            state <= S12;
                        end
                        else if (Ex == 2'b10) begin 
                            door_open_to_exit <= 1'b1;
                            full_garage <= 1'b0;
                            capacity <= 3'b010;
                            nearest_park <= 2'b00;
                            parking_lights <= S10;
                            state <= S10;
                        end
                        else if (Ex == 2'b11) begin
                            door_open_to_exit <= 1'b1;
                            full_garage <= 1'b0;
                            capacity <= 3'b010;
                            nearest_park <= 2'b00;
                            parking_lights <= S6;
                            state <= S6;
                        end
                        else begin //wrong Ex location  then return to current state
                            full_garage <= 1'b0;
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S14;
                            state <= S14;
                        end
                    end
                end

                // State S15
                S15: begin
                    capacity <= 3'b000;
                    nearest_park <= 2'b11;          
                    full_garage <= 1'b0;
                    door_open_to_entry <= 1'b0;
                    door_open_to_exit <= 1'b0;
                    if (exit) begin
                        full_garage <= 1'b0;

                        if (Ex == 2'b00) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b001;
                            nearest_park <= 2'b00;
                            parking_lights <= S14;
                            state <= S14;
                        end
                        else if (Ex == 2'b01) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b001;
                            nearest_park <= 2'b01;
                            parking_lights <= S13;
                            state <= S13;
                        end
                        else if (Ex == 2'b10) begin 
                            door_open_to_exit <= 1'b1;
                            capacity <= 3'b001;
                            nearest_park <= 2'b10;
                            parking_lights <= S11;
                            state <= S11;
                        end
                        else if (Ex == 2'b11) begin
                            door_open_to_exit <= 1'b1;
                             capacity <= 3'b001;
                             nearest_park <= 2'b11;
                             parking_lights <= S7;
                             state <= S7;
                        end
                        else begin //wrong Ex location  then return to current state
                            full_garage <= 1'b1;
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S15;
                            state <= S15;
                        end
                    end else if(entry) begin
                            full_garage <= 1'b1;
                            door_open_to_entry <= 1'b0;
                            door_open_to_exit <= 1'b0;
                            parking_lights <= S15;
                            state <= S15;
                    end
                end

                default: begin
                    parking_lights <= S0;
                    state <= S0;
                end
            endcase
        end
    end

endmodule
