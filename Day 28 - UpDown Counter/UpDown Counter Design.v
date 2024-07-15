//4-bit Up/Down-counter Design

module UpDown_Counter(
input [3:0]data, load, Up_Down, rst, clk,
output reg [3:0]out
    );
    always@(posedge clk) begin
    if(~rst)
    out<=4'b0;
    else if(data)
    out<=data;
    else if(Up_Down)
    out<=out+1;
    else
    out<=out-1;
    end
    
endmodule
