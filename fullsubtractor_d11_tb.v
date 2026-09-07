module fullsubtractor_d11_tb;
    reg a, b, cin;
    wire diff, borrow;
    fullsubtractor_d11 dut (.a(a), .b(b), .cin(cin), .diff(diff), .borrow(borrow));
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
