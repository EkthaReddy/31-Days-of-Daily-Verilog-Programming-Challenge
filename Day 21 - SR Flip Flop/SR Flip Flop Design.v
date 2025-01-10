// SR Flip Flop Design

module SR_Flip_Flop(
    input S, R, clk, 
    output reg q
);
    always @(posedge clk) begin
        case ({S, R})
            2'b00: q <= q;       // Hold state
            2'b01: q <= 1'b0;    // Reset state
            2'b10: q <= 1'b1;    // Set state
            2'b11: q <= 1'bx;    // Invalid state
        endcase
    end
endmodule
