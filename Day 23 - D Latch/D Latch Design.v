//D Latch Design

module D_Latch(
input D, en, 
output q, qbar
    );
    wire d0;
    not (d0, D);
    and a1(s, d0, en);
    and a2(r, D, en);
    nor n1(q, s, qbar);
    nor n2(qbar, r, q);

endmodule
