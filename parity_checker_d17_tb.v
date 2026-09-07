module parity_checker_d17_tb;
    reg [3:0]data;
    reg parity;
    wire error;
    parity_checker_d17 dut(.data(data), .parity(parity), .error(error));
    initial begin
        data = 4'b0000; parity = 1'b0; #100;
        
        data = 4'b0010; parity = 1'b1; #100;
        
        data = 4'b0100; parity = 1'b0; #100;
        
        data = 4'b0110; parity = 1'b1; #100;
        
        data = 4'b1000; parity = 1'b0; #100;
        
        data = 4'b1010; parity = 1'b1; #100;
        
        data = 4'b1100; parity = 1'b0; #100;
      
        data = 4'b1110; parity = 1'b1; #100;
        
        data = 4'b1111; parity = 1'b0; #100;
        
        data = 4'b0011; parity = 1'b1; #100;
        
        data = 4'b00101; parity = 1'b0; #100;
        
        data = 4'b0111; parity = 1'b1; #100;
    end
endmodule
