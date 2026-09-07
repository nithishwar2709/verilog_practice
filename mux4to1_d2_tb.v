module mux4to1_d2_tb;
    reg [0:3]I;
    reg [1:0]S;
    wire Y;
   mux4to1_d2 dut(.I(I), .S(S), .Y(Y));
    initial begin
            I = 4'b0000; S = 2'b00;
            #100;
            
            I = 4'b0010; S = 2'b01;
            #100;
            
            I = 4'b0100; S = 2'b10;
            #100;
            
            I = 4'b0110; S = 2'b11;
            #100;
            
            I = 4'b1000; S = 2'b00;
            #100;
            
            I = 4'b1010; S = 2'b01;
            #100;
            
            I = 4'b1100; S = 2'b10;
            #100;
            
            I = 4'b1111; S = 2'b11;
            #100;  
        end    
endmodule
