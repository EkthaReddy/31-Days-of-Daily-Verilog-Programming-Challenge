//4-bit Down-counter Design

module Down_Counter(
input [3:0]data, rst, clk,
output reg [3:0]out
    );
    always@(posedge clk) begin
    if(~rst)
    out<=4'b0;
    else
    out<=out-1;
    end
    
endmodule
