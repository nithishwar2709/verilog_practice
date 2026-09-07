module shiftregister_d25_tb;
    reg clk,rst,din;
    wire [3:0]q;
    
    shiftregister_d25 dut(.clk(clk), .rst(rst), .din(din), .q(q));
    
    initial begin
        
        clk = 0;
        forever #50 clk = ~clk;
       end
        initial begin
            rst = 1;
            din = 0;
            #100
            rst = 0;
            din = 1;
            #100
            din = 0;
            #100
            din = 1;
            #100
            din = 1;
            #100
            din = 1;
            #100
            din = 1;      
      end                  
endmodule
