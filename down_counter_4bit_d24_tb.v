module down_counter_4bit_d24_tb;
    reg clk,rst;
    wire [3:0]q;
    
    down_counter_4bit_d24 dut(.clk(clk), .rst(rst), .q(q));

    initial begin
        clk = 0;
        rst = 1;
        #50
        rst = 0;
        #600
        rst = 1;
        #100
        rst = 0;
    end
    always
       #20 clk = ~clk;
endmodule
