module counter4bit_d23_tb;
    reg clk,rst;
    wire [3:0]q;
    
    counter4bit_d23 dut(.clk(clk), .rst(rst), .q(q));

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
