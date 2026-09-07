module halfadder_d8_tb;
    reg a,b;
    wire sum,carry;
    
    halfadder_d8 dut(.a(a), .b(b), .sum(sum), .carry(carry));
    
    initial begin
        a = 0; b = 0;
        #100;
        
        a = 0; b = 1;
        #100;
        
        a = 1; b = 0;
        #100;
        
        a = 1; b = 1;
        #100;
        
        a = 1; b = 0;
        #100;
        
        a = 0; b = 1;
        #100;
     end
endmodule
