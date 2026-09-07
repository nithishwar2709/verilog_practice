module pipo_register_d28(
    input clk, rst,
    input [3:0] din,
    output reg [3:0]q
    );
    
    always @(posedge clk)begin
        if (rst)
            q <= 4'b0000;
        else
            q <= din;
    end
endmodule
