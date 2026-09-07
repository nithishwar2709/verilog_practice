module tr_lg_d34_tb;
    reg clk, rst;
    wire [2:0] light;
    
    tr_lg_d34 dut (.clk(clk), .rst(rst), .light(light));
    
    initial begin
        clk = 1'b1;
        rst = 1'b1;
        #100;
        
        rst = 1'b0;
        #1000;
     end
        always #20 clk = ~clk;
endmodule
