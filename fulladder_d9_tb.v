module fulladder_d9_tb;
    reg a, b, cin;
    wire sum, carry;
    fulladder_d9 dut(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
    initial begin
        a = 0; b = 0; cin = 0;
        #100;
        
        a = 0; b = 0; cin = 1;
        #100;
        
        a = 0; b = 1; cin = 0;
        #100;
        
        a = 0; b = 1; cin = 1;
        #100;
        
        a = 1; b = 0; cin = 0;
        #100;
        
        a = 1; b = 0; cin = 1;
        #100;
        
        a = 1; b = 1; cin = 0;
        #100;
        
        a = 1; b = 1; cin = 1;
        #100;
    end        
endmodule
