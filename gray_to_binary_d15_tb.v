module gray_to_binary_d15_tb;
    reg [3:0]gray;
    wire [3:0]binary;
    
    gray_to_binary_d15 dut(.gray(gray), .binary(binary));
    
    initial begin
    
        gray = 4'b0000;
        #100
        gray = 4'b0010;
        #100;
        gray = 4'b0100;
        #100;
        gray = 4'b0110;
        #100;
        gray = 4'b1000;
        #100;
        gray = 4'b1010;
        #100;
        gray = 4'b1100;
        #100;
        gray = 4'b1110;
        #100;
        gray = 4'b1111;
        #100;
        
     end
endmodule
