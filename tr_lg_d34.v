module tr_lg_d34(
    input clk, rst,
    output reg [2:0] light
    );
    parameter [1:0] RED = 2'b00,
                    GREEN = 2'b01,
                    YELLOW = 2'b10;
    reg [1:0] state, next_state;
    reg [3:0] count;
    
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            state <= RED;
            count <= 0;
        end
        else begin 
            state <= next_state;
            if(state != next_state)
                count <= 0;
            else
                count <= count + 1;
         end
       end 
    always @(*) begin
        next_state = state;
        case(state)
            RED:
                if(count == 3)
                    next_state = GREEN;
            GREEN:
                if(count == 5)
                    next_state = YELLOW;
            YELLOW:
                if(count == 1)
                    next_state = RED;
            default:
                next_state = RED;
       endcase
    end
    always @(*)begin
        case(state)
            RED:
                light = 3'b100;
            GREEN:
                light = 3'b001;
            YELLOW:
                light = 3'b010;
            default:
                light = 3'b000;
        endcase
   end       
endmodule


