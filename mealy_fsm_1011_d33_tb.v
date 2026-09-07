module mealy_fsm_1011_d33_tb;
    reg clk, rst, xin;
    wire zout;
  mealy_fsm_1011_d33 dut(.clk(clk), .rst(rst), .xin(xin), .zout(zout));  
    initial begin
        clk = 1; rst = 1; xin = 0;
        #100;
        
        rst = 0; #25; xin = 1;
        #100;
        
        xin = 0;
        #100;
        
        xin = 1;
        #100;
        
        xin = 1;
        #100;
        
        xin = 0;
        #100;
        
        xin = 1;
        #100;
        
        xin = 1; #100;
        
     end 
        always #50 clk = ~clk;
endmodule
