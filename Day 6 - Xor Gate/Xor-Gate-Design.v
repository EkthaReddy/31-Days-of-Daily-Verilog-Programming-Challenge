// Three Types of modelling in XOR Gate
=======================================

// Data Flow Modeling For XOR Gate

module XOR_Gate_DF(
input a,b, 
output y
    );
    assign y=a^b;
endmodule

------------------------------------------------

//Behavioral Modeling For OR Gate

module XOR_Gate_BM(
input a,b,
output reg y 
   );
   always@(*)
   y<=a^b;
endmodule


--------------------------------------------------

//Structural Modeling For OR Gate

module XOR_Gate_SM(
input a,b,
output y
    );
    xor x(y,a,b);
endmodule
