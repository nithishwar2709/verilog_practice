module universal_shiftregister_d29(
    input clk, rst,
    input [1:0]sel,
    input [3:0] din,
    input sin_left, sin_right,
    output reg [3:0] q
    );
    always @(posedge clk)begin
        if (rst)
            q <= 4'b0000;
        else begin
            case(sel)
                2'b00: q <= q;
                2'b01: q <= {q[2:0], sin_right};
                2'b10: q <= {sin_left, q[3:1]};
                2'b11: q <= din;
                default: q <= 4'b0000;
            endcase
       end
     end
endmodule
