module ring_counter_d30(
    input clk, rst,
    output reg [3:0]q
    );
    
    always @(posedge clk)begin
        if(rst)
            q <= 4'b1000;
        else
            q <= {q[2:0], q[3]};
    end
endmodule
