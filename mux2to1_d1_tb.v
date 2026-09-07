module mux2to1_d1_tb;
    reg a_t, b_t, s_t;
    wire y_t;
    mux2to1_d1 dut(.a(a_t), .b(b_t), .s(s_t), .y(y_t));
    initial begin
    a_t = 0; b_t = 0; s_t = 0;
    #200;
    
    a_t = 0; b_t = 1; s_t = 0;
    #200;

    a_t = 1; b_t = 0; s_t = 0;
    #200;
    
    a_t = 1; b_t = 1; s_t = 0;
    #200;  
    
    a_t = 0; b_t = 0; s_t = 1;
    #200;
    
    a_t = 0; b_t = 1; s_t = 1;
    #200;

    a_t = 1; b_t = 0; s_t = 1;
    #200;
    
    a_t = 1; b_t = 1; s_t = 1;
    #200; 
    
end
endmodule  