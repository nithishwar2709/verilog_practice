module tff_d22_tb;
    reg t,clk,rst;
    wire q;
    tff_d22 dut(.t(t), .clk(clk), .rst(rst), .q(q));
    
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        #100
        rst = 1'b0;
        t = 1'b0;
        #100
        t = 1'b1;
        #100
        t = 1'b0;
        #100
        t = 1'b1;
        #100
        t = 1'b0;
        #100
        t = 1'b1;
        #100
        t = 1'b0;
        #100
        t = 1'b1;
     end
     always 
        #50 clk = ~clk;
endmodule
