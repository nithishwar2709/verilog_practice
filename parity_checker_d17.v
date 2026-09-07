module parity_checker_d17(
    input [3:0]data,
    input parity,
    output error
    );
    
    assign error = data[3] ^ data[2] ^ data[1] ^ data[0] ^ parity;
endmodule
