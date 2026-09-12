module synchronous_fifo_d38_tb;
    reg clk, rst, w_en, r_en;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire full, empty;
    
    synchronous_fifo_d38 dut (.clk(clk),.rst(rst),.w_en(w_en),.r_en(r_en),.data_in(data_in),.data_out(data_out),
        .full(full),.empty(empty));
        
    always #20 clk = ~clk;
    
    initial begin
        clk = 1'b0;
        rst = 1'b0;
        w_en = 1'b0;
        r_en = 1'b0;
        data_in = 8'd0;
        #40;
        
        rst = 1'b1;
        #40;
        
        w_en = 1'b1;
        data_in = 8'd10;
        #40;
        
        data_in = 8'd20;    #40;
        data_in = 8'd30;    #40;
        data_in = 8'd40;    #40;
        data_in = 8'd50;    #40;      
        data_in = 8'd60;    #40;        
        data_in = 8'd70;    #40;        
        data_in = 8'd80;    #40;        
        
        w_en = 1'b0;    #40;      
        r_en = 1'b1;    #600;
     
     end       
endmodule
