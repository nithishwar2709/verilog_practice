module decoder2to4_d4_tb;
    reg [1:0]A;
    wire [3:0]Y;
    
    decoder2to4_d4 dut(.a(A), .y(Y));
    
    initial
        begin
            A = 2'b00;
            #100;
            
            A = 2'b01;
            #100;
            
            A = 2'b10;
            #100;
            
            A = 2'b11;
            #100;
        end
endmodule
