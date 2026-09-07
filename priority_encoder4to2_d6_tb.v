module priority_encoder4to2_d6_tb;
    reg [3:0]a;
    wire [1:0]y;
    
    priority_encoder4to2_d6 dut( .a(a), .y(y));
    
    initial begin
        a = 4'b0000; #100;
        
        a = 4'b0010; #100;
        
        a = 4'b0100; #100;
        
        a = 4'b0110; #100;
        
        a = 4'b1000; #100;
        
        a = 4'b1010; #100;
        
        a = 4'b1100; #100;
        
        a = 4'b1111; #100;
        
        end
endmodule
