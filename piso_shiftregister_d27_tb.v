module piso_shiftregister_d27_tb;
    reg clk,rst, load; reg [3:0] din;
    wire q;
    piso_shiftregister_d27 dut(.clk(clk), .rst(rst), .load(load), .din(din), .q(q));
    initial begin
        clk = 0; rst = 1; load = 0; din = 4'b0000;
        #50;
        
        rst = 0; din = 4'b1011; load = 1;
        #100;

        load = 0;
        #100;  #100;
        #100;  #100;

        din = 4'b1101; load = 1;
        #100;

        load = 0;
        #100;
        #100;
        #100;
        #100;

        $finish;
    end
    always #50 clk = ~clk;
endmodule
