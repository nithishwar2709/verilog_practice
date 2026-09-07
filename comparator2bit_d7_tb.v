module comparator2bit_d7_tb;
    reg [1:0]a;
    reg [1:0]b;
    wire a_gt_b;
    wire a_eq_b;
    wire a_lt_b;
    
    comparator2bit_d7 dut (.a(a), .b(b), .a_gt_b(a_gt_b), .a_eq_b(a_eq_b), .a_lt_b(a_lt_b));
    
    initial begin
    a = 2'b00; b = 2'b00;
    #100;
    
    a = 2'b01; b = 2'b01;
    #100;
    
    a = 2'b10; b = 2'b10;
    #100;
    
    a = 2'b11; b = 2'b11;
    #100;
    
    a = 2'b01; b = 2'b10;
    #100;
    
    a = 2'b00; b = 2'b11;
    #100;
   end
endmodule
