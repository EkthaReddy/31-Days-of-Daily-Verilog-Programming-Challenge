// Three Types of modelling in XNOR Gate
=======================================

// Data Flow Modeling For XNOR Gate

module Xnor_Gate_DF(
input a,b,
output y
    );
    assign y=~(a^b);
endmodule

------------------------------------------------

//Behavioral Modeling For XNOR Gate

module Xnor_Gate_BM(
input a,b,
output reg y
    );
    always@(*)
    y<=~(a^b);
endmodule

--------------------------------------------------
//Structural Modeling For XNOR Gate

module Xnor_Gate_SM(
input a,b,
output y
    );
    xnor x(y,a,b);
endmodule
