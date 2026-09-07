module universal_shiftregister_d29_tb;
    reg clk, rst, sin_left, sin_right; reg [1:0]sel; reg [3:0]din;
    wire [3:0] q;
    universal_shiftregister_d29 dut(.clk(clk), .rst(rst), .sel(sel), .din(din), .sin_left(sin_left), .sin_right(sin_right), .q(q));
    initial begin
        clk = 0; rst = 1;
        sel = 2'b00;
        din = 4'b0000;
        sin_left = 0;
        sin_right = 0;

        #50;
        rst = 0;
        din = 4'b1011;
        sel = 2'b11;
        #100;

        sin_right = 1;
        sel = 2'b01;
        #100;
        #100;

        sin_left = 0;
        sel = 2'b10;
        #100; #100;

        sel = 2'b00;
        #100;
    end
    always #50 clk = ~clk;
endmodule
