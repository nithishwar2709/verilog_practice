module dff_d20_tb;
    reg d; reg clk; reg rst;
    wire q;
    dff_d20 dut(.d(d), .clk(clk), .rst(rst), .q(q));
    initial begin
        clk = 1'b0;
        rst = 1'b1;
     #100
        rst = 1'b0;
        d   = 1'b0;
     #100
        d = 1'b1;
     #100
        d = 1'b0;
     #100
        d = 1'b1;
     #100
        d = 1'b0;
     #100
        d = 1'b0;
     #100
        d = 1'b1;
     #100
        d = 1'b0;
     #100
        d = 1'b1;
     end   
     always 
        #50 clk = ~clk;       
endmodule
