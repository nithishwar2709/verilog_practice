module alu4bit_d18_tb;
    reg [3:0]a; reg [3:0]b; 
    reg [1:0]sel;
    wire [3:0]y;
    
    alu4bit_d18 dut (.a(a), .b(b), .sel(sel), .y(y));
    
    initial begin
        a = 4'b0000; b = 4'b0001; sel = 2'b00; #100;
        
        a = 4'b0011; b = 4'b0010; sel = 2'b01; #100;
        
        a = 4'b0100; b = 4'b0101; sel = 2'b10; #100;
        
        a = 4'b0110; b = 4'b0111; sel = 2'b11; #100;
        
        a = 4'b1000; b = 4'b1001; sel = 2'b00; #100;
        
        a = 4'b1011; b = 4'b1010; sel = 2'b01; #100;
        
        a = 4'b1100; b = 4'b1101; sel = 2'b10; #100;
        
        a = 4'b1110; b = 4'b1111; sel = 2'b11; #100;
        
        a = 4'b0010; b = 4'b0110; sel = 2'b00; #100;
        
        a = 4'b1100; b = 4'b1000; sel = 2'b01; #100;
        
        a = 4'b1000; b = 4'b1101; sel = 2'b10; #100;
    end
endmodule
