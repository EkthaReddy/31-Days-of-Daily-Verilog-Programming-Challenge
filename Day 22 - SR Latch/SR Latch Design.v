// SR Latch Design

module SR_Latch(
input S, R,
output Q, Qbar
    );
    assign Q = ~(S|Qbar);
    assign Qbar = ~(R|Q);
endmodule
