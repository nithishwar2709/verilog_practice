module mux2to1(
    input A,B,S,
    output Y
    );
    assign Y = (S) ? B : A;
endmodule

module mux4to1_d2(
    input [3:0]I,
    input [1:0]S,
    output Y
    );
    wire y1,y2;
    
    mux2to1 m1(.A(I[0]), .B(I[1]), .S(S[0]), .Y(y1));
    mux2to1 m2(.A(I[2]), .B(I[3]), .S(S[0]), .Y(y2));
    
    mux2to1 m3(.A(y1), .B(y2), .S(S[1]), .Y(Y));
    
endmodule
