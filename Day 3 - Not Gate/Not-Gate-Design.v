
module Not_Gate_DF(
input a,
output y);
    assign y=~a;
endmodule


module Or_Gate_BM(
input a, 
output y
    );
    not n(y,a);
endmodule


module Or_Gate_SM(
input a,
output reg y
    );
    always@(*)
    y=~a;
endmodule
