module johnson_counter_d31_tb;
    reg clk, rst;
    wire [3:0]q;
    
    johnson_counter_d31 dut(.clk(clk), .rst(rst), .q(q));
    
    initial begin 
        clk = 0;
        rst = 1;
        #100;
        
        rst = 0;
        #800;
        
        end 
        
        always #50 clk = ~clk;
        
endmodule
