module piso_shiftregister_d27(
    input clk, rst, load,
    input [3:0] din,
    output reg q
    );
    reg [3:0] shift_reg;
    
    always @(posedge clk) begin
        if (rst) begin
            shift_reg <= 4'b0000;
            q <= 1'b0;
        end
        else if (load) begin
            shift_reg <= din;
            q <= din[3];
        end
        else begin
            q <= shift_reg[3];
            shift_reg <= {shift_reg[2:0], 1'b0};
        end
    end
endmodule
