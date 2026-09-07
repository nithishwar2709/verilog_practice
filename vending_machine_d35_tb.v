module vending_machine_d35_tb;
    reg clk, rst;   reg [1:0] coin;
    wire dispense;
    vending_machine_d35 dut(.clk(clk), .rst(rst), .coin(coin), .dispense(dispense));
     always #50 clk = ~clk;
    initial begin
        clk = 1'b0; rst = 1'b1; coin = 2'b00;
        #100;
    
        rst = 1'b0; coin = 2'b01;
        #100;

        coin = 2'b10;
        #100;

        coin = 2'b10;
        #100;

        coin = 2'b01;
        #100;

        coin = 2'b01;
        #100;

        coin = 2'b10;
        #100;

        coin = 2'b00;
        #100;
end
endmodule