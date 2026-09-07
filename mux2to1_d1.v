module mux2to1_d1(
    input a,b,s,
    output y
    );
   assign y = ( a & (~s)) | (b & s);
endmodule
