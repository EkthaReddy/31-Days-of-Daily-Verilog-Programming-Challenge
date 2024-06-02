// Three Types of modelling in NOT Gate
=======================================

// Data Flow Modeling For NOT Gate
module Not_Gate_DF(
input a,
output y);
    assign y=~a;
endmodule

------------------------------------------------------
//Behavioral Modeling For NOT Gate
module Or_Gate_BM(
input a, 
output y
    );
    not n(y,a);
endmodule

------------------------------------------------------
//Structural Modeling For NOT Gate
module Or_Gate_SM(
input a,
output reg y
    );
    always@(*)
    y=~a;
endmodule
