module parity_generator_d16_tb;
    reg [3:0]data;
    wire parity;
    parity_generator_d16 dut(.data(data), .parity(parity));
    initial begin
        data = 4'b0000; #100;
        
        data = 4'b0010; #100;
        
        data = 4'b0100; #100;
        
        data = 4'b0110; #100;
        
        data = 4'b1000; #100;
        
        data = 4'b1010; #100;
        
        data = 4'b1100; #100;
        
        data = 4'b1110; #100;
        
        data = 4'b1111; #100;
        
        data = 4'b0011; #100;
        
        data = 4'b00101; #100;
        
        data = 4'b0111; #100;
    end
endmodule
