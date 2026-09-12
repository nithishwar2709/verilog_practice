module uart_rx_d40_tb;
    reg clk, rst, rx;
    wire [7:0] data_out;
    wire data_valid;
    
    uart_rx_d40 dut(.clk(clk), .rst(rst), .rx(rx), .data_out(data_out), .data_valid(data_valid));
    
    always #10 clk = ~clk;
    
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        rx = 1'b1;
        
        #40;
        rst = 1'b0;
        
        #20;
        rx = 1'b0;
        
        #40;
        rx = 1'b0;
        
        #20;
        rx = 1'b1;
        
        #20;
        rx = 1'b0;
        
        #20;
        rx = 1'b1;
        
        #20;
        rx = 1'b0;
        
        #20;
        rx = 1'b1;
        
        #20;
        rx = 1'b0;
        
        #20;
        rx = 1'b1;
        
        #20;
        rx = 1'b1;
        
        #40;
     end
endmodule
