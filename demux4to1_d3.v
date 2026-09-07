module demux4to1_d3(
    input I,
    input [1:0]S,
    output Y0,Y1,Y2,Y3
    );
    
    assign Y0 = ( ~S[1] & ~S[0]) ? I : 1'b0;
    assign Y1 = ( ~S[1] & S[0]) ? I : 1'b0;
    assign Y2 = ( S[1] & ~S[0]) ? I : 1'b0;
    assign Y3 = ( S[1] & S[0]) ? I : 1'b0;
endmodule
