module rom_d37_tb;
    reg clk, rst;
    reg [9:0] address;
    wire [7:0] dataout;
    
    rom_d37 dut(.clk(clk), .rst(rst), .address(address), .dataout(dataout));
    
    initial begin
        clk = 1'b0;
        rst = 1'b1;
        #100;
        
        rst = 1'b0;
        address = 10'd100;
        #100;
        
        address = 10'd200;
        #100;
        
        address = 10'd300;
        #100;
        
        address = 10'd400;
        #100;
        
        address = 10'd500;
        #100;
        
        address = 10'd600;
        #100;
        
        address = 10'd700;
        #100;
        
        address = 10'd800;
        #100;
        
        address = 10'd900;
        #100;
        
   end
        always #10 clk = ~clk;
endmodule
