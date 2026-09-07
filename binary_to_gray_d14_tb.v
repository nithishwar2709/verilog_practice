module binary_to_gray_d14_tb;
    reg [3:0]binary;
    wire [3:0]gray;
    
    binary_to_gray_d14 dut(.binary(binary), .gray(gray));
    
    initial begin
    
        binary = 4'b0000;
        #100
        binary = 4'b0010;
        #100;
        binary = 4'b0100;
        #100;
        binary = 4'b0110;
        #100;
        binary = 4'b1000;
        #100;
        binary = 4'b1010;
        #100;
        binary = 4'b1100;
        #100;
        binary = 4'b1110;
        #100;
        binary = 4'b1111;
        #100;
        
     end   
endmodule
