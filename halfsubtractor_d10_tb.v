module halfsubtractor_d10_tb;
    reg a, b;
    wire diff, borrow;
    
    halfsubtractor_d10 dut(.a(a), .b(b), .diff(diff), .borrow(borrow));
    
    initial begin
        a = 0; b = 0;
        #100;
        
        a = 0; b = 1;
        #100;
        
        a = 1; b = 0;
        #100;
        
        a = 1; b = 1;
        #100;
     end 
endmodule
