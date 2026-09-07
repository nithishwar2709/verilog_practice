module encoder4to2_tb_d5;
    reg [3:0] a;
    wire [1:0] y;
    
    encoder4to2_d5 dut (.a(a), .y(y));

    initial begin

    a = 4'b0000;
    #100;
    a = 4'b0010;
    #100;
    a = 4'b0100;
    #100;
    a = 4'b0110;
    #100;
    a = 4'b1000;
    #100;
    a = 4'b1010;
    #100;
    a = 4'b1100;
    #100;
    a = 4'b1111;
    #100;
end
endmodule