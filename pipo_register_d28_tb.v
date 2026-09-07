module pipo_register_d28_tb;
    reg clk, rst; reg [3:0] din;
    wire [3:0] q;
    
    pipo_register_d28 dut(.clk(clk), .rst(rst), .din(din), .q(q));
    
    initial begin
        clk = 0;
        rst = 1;
        din = 4'b0000;
        #50;
        
        rst = 0; din = 4'b1010; #100;
        
        din = 4'b1100; #100;
        
        din = 4'b0110; #100;
        
        din = 4'b1111; #100;
        
        din = 4'b0111; #100;
        
        din = 4'b1101; #100;
        
        din = 4'b1011; #100;
        
        din = 4'b1001; #100;
    end
    always #50 clk = ~clk;
endmodule
