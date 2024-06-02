// Three Types of modelling in OR Gate
=======================================

// Data Flow Modeling For OR Gate
module Or_Gate_DF(
input a,
input b,
output y 
);
    assign y=a|b;
endmodule

-------------------------------------------------------------------
//Behavioral Modeling For OR Gate
module Or_Gate_BM(a,b,y);
    input a,b;
    output reg y;
    always@(*)
        y=a|b;
endmodule

-------------------------------------------------------------------
//Structural Modeling For OR Gate
module Or_Gate_SM(
input a,b,
output y
    );
    or o(y,a,b);
endmodule
