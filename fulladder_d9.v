module fulladder_d9(
    input a,b,cin,
    output sum,carry
    );
    
    assign sum = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);
endmodule
