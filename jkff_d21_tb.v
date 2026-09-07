module jkff_d21_tb;
    reg j,k,clk,rst;
    wire q;
    jkff_d21 dut(.j(j), .k(k), .clk(clk), .rst(rst), .q(q));
    initial begin
        clk = 1'b0;
        rst = 1'b1;
     #100
        rst = 1'b0;
        j = 1'b0; k = 1'b0;
     #100
        j = 1'b0; k = 1'b1;
     #100
        j = 1'b1; k = 1'b0;
     #100
        j = 1'b1; k = 1'b1;
     #100
        j = 1'b1; k = 1'b1;
     #100
        j = 1'b0; k = 1'b1;
     #100
        j = 1'b1; k = 1'b0;
     #100
        j = 1'b1; k = 1'b1;
     #100
        j = 1'b1; k = 1'b1;
     end   
     always 
        #50 clk = ~clk;
endmodule
