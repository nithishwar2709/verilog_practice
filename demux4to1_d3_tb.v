module demux4to1_d3_tb;
    reg I;
    reg [1:0]S;
    wire Y0, Y1, Y2, Y3;
    
    demux4to1_d3 dut(.I(I), .S(S), .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3));
    
    initial 
        begin
            I = 1; S = 2'b00; 
            #100;
            I = 1; S = 2'b01; 
            #100;
            I = 1; S = 2'b10; 
            #100;
            I = 1; S = 2'b11; 
            #100;

            I = 0; S = 2'b00; 
            #100;
            I = 0; S = 2'b01; 
            #100;
            I = 0; S = 2'b10; 
            #100;
            I = 0; S = 2'b11; 
            #100;
   end
endmodule
