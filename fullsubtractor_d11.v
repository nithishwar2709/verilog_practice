module fullsubtractor_d11(
    input a, b, cin,
    output diff, borrow
    );
    
    assign diff = a ^ b ^ cin;
    assign borrow = (~a & b) | (~a & cin) | (b & cin);
endmodule
