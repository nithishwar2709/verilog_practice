module cla_adder_d13_tb;
    reg [3:0]a; reg [3:0]b; reg cin;
    wire [3:0]sum; wire cout;
    
    cla_adder_d13 dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    
    initial begin
        a = 4'b0000; b = 4'b0001; cin = 1'b0;
        #100;
        a = 4'b0010; b = 4'b0011; cin = 1'b1;
        #100;
        a = 4'b0100; b = 4'b0101; cin = 1'b0;
        #100;
        a = 4'b0110; b = 4'b0111; cin = 1'b1;
        #100;
        a = 4'b1000; b = 4'b1001; cin = 1'b0;
        #100;
        a = 4'b1010; b = 4'b1011; cin = 1'b1;
        #100;
        a = 4'b1100; b = 4'b1101; cin = 1'b0;
        #100;
        a = 4'b1110; b = 4'b1111; cin = 1'b1;
        #100;
     end
endmodule
