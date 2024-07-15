// JK Flip Flop Design

module JK_Flip_Flop(
input J, K, clk, 
output reg q
    );
    always @(posedge clk) begin
        case ({J,K}) 
            2'b00: q<=q;
            2'b01: q<=1'b0;
            2'b10: q<=1'b1;
            2'b11: q<=~q;
        endcase
    end
endmodule
