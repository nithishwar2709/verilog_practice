module uart_tx_d39(
    input clk, rst, tx_start,
    input [7:0] data_in,
    output reg tx, busy
    );
    reg [1:0] state;
    reg [2:0] bit_count;
    reg [7:0] data_reg;
    
    parameter IDLE = 2'b00,
              START = 2'b01,
              DATA = 2'b10,
              STOP = 2'b11;
    always @(posedge clk) begin
        if(rst) begin
            state <= IDLE;
            bit_count <= 3'b000;
            data_reg <= 8'b0;
            tx <= 1'b1;
            busy <= 1'b0;
        end
        else begin
            case(state)
                IDLE: begin
                    tx <= 1'b1;
                    busy <= 1'b0;
                    
                    if(tx_start) begin
                        data_reg <= data_in;
                        bit_count <= 3'b000;
                        busy <= 1'b1;
                        state <= START;
                    end
                end           
                START: begin
                    tx <= 1'b0;
                    state <= DATA;
                end               
                DATA: begin
                    tx <= data_reg[bit_count];
                
                    if(bit_count == 3'd7) begin
                        state <= STOP;
                    end
                    else begin
                        bit_count <= bit_count + 1'b1;
                    end
                end               
                STOP: begin
                    tx <= 1'b1;
                    busy <= 1'b0;
                    state <= IDLE;
                end   
                default: begin
                    state <= IDLE;
                    tx <= 1'b1;
                    busy <= 1'b0;
                end
          endcase
       end
    end               
endmodule
