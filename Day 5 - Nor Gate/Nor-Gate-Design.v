// Three Types of modelling in NOR Gate
=======================================

// Data Flow Modeling For NOR Gate

module Nor_Gate_DF(
input a, b,
output y
    );
    assign y=~(a|b);
endmodule

------------------------------------------------------

//Behavioral Modeling For NOR Gate

module Nor_Gate_BM(
input a, b, 
output reg y
    );
    always@(*)
    y <= ~(a|b);
endmodule

-------------------------------------------------------

//Structural Modeling For NOR Gate

module Nor_Gate_SM(
input a,b,
output y
    );
    nor n(y,a,b);
endmodule
