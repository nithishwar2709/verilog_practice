module single_port_ram_d36(
    input clk, rst, en,
    input [7:0] datain,
    input [9:0] address,
    output reg [7:0] dataout
    );
    reg [7:0] mem [1023:0];
    
    always @(posedge clk) begin
        if(rst) 
            dataout <= 8'b0;
        else if(en) 
            mem[address] <= datain;
        else 
            dataout <= mem[address];
     end
endmodule
