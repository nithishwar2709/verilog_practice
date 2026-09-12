module single_port_ram_d36_tb;
    reg clk, rst, en;
    reg [7:0] datain;
    reg [9:0] address;
    wire [7:0]dataout;
    
    single_port_ram_d36 dut(.clk(clk), .rst(rst), .en(en), .datain(datain), .address(address), .dataout(dataout));
    
    initial begin 
        clk = 1'b0;
        rst = 1'b1;
        en = 1'b1;
        address = 10'b0;
        datain = 8'b0;
        #100;
        
        rst = 1'b0;
        en = 1'b1;
        address = 10'd500;
        datain = 8'd30;
        #100;
        
        address = 10'd600;
        datain = 8'd40;
        #100;
        
        address = 10'd700;
        datain = 8'd50;
        #100;
        
        address = 10'd800;
        datain = 8'd60;
        #100;
        
        address = 10'd900;
        datain = 8'd70;
        #100;
        
        en = 1'b0;
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
        always #5 clk = ~clk;
endmodule


