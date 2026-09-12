module uart_tx_d39_tb;
    reg clk, rst, tx_start;
    reg [7:0] data_in;
    wire tx, busy;

    uart_tx_d39 dut(.clk(clk), .rst(rst), .tx_start(tx_start), .data_in(data_in), .tx(tx), .busy(busy));
    
    always #20 clk = ~clk;
    
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        tx_start = 1'b0;
        data_in = 8'b0;
        #60;
        
        rst = 1'b0;
        #40;
        
        data_in = 8'b10101010;
        tx_start = 1'b1;
        #40;
        
        tx_start = 1'b0;
        #500;
   end
endmodule
