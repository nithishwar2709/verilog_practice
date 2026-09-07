module dlatch_d19_tb;
    reg d; reg en;
    wire q;
    
    dlatch_d19 dut(.d(d), .en(en), .q(q));
    
    initial begin
        d = 1'b0; en = 1'b0; #100;
        
        d = 1'b1; en = 1'b0; #100;
        
        d = 1'b1; en = 1'b1; #100;
        
        d = 1'b1; en = 1'b1; #100;
        
        d = 1'b0; en = 1'b1; #100;
        
        d = 1'b0; en = 1'b1; #100;
        
        d = 1'b1; en = 1'b0; #100;
        
        d = 1'b0; en = 1'b0; #100;
        
        d = 1'b1; en = 1'b1; #100;
        
        d = 1'b0; en = 1'b1; #100;
        
   end
endmodule
