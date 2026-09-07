module ripplecarry_adder_d12(
    input [3:0]a,
    input [3:0]b,
    input cin,
    output [3:0]sum,
    output cout
    );
    
    wire c1, c2, c3;
    
    fulladder_d9 fa0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .carry(c1));
    
    fulladder_d9 fa1 (.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .carry(c2));
    
    fulladder_d9 fa2 (.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .carry(c3));
    
    fulladder_d9 fa3 (.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]), .carry(cout));
    
endmodule
