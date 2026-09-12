module uart_rx_d40(
    input clk, rst, rx,
    output reg [7:0] data_out,
    output reg data_valid
    );
    reg [1:0] state;
    reg [2:0] bit_count;
    
    parameter IDLE = 2'b00,
              START = 2'b01,
              DATA = 2'b10,
              STOP = 2'b11;
    
    always @(posedge clk) begin
        if(rst) begin
            state <= IDLE;
            bit_count <= 3'b000;
            data_out <= 8'b0;
            data_valid <= 1'b0;
        end
        else begin
            data_valid <= 1'b0;
            
            case(state)
                IDLE: begin
                    if(rx == 1'b0) begin
                        bit_count <= 3'b000;
                        state <= START;
                    end
                end
                
                START: begin
                    state <= DATA;
                end
                
                DATA: begin
                    data_out[bit_count] <= rx;
                    
                    if(bit_count == 3'd7)
                        state <= STOP;
                    else
                        bit_count <= bit_count + 1'b1;
                end
                
                STOP: begin
                    data_valid <= 1'b1;
                    state <= IDLE;
                end
                
                default: begin
                    state <= IDLE;
                end
           endcase
       end                
    end        
endmodule

