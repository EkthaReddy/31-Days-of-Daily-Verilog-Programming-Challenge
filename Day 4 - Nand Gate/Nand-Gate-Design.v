// Three Types of modelling in NAND Gate
=======================================

// Data Flow Modeling For NAND Gate

module Nand_Gate_DF(
input a, b,
output y
    );
    assign y=~(a&b);
endmodule

  -------------------------------------
// Behavioural Modeling For NAND Gate

  module Nand_Gate_BM(
input a,b,
output reg y
    );
    always@(*)
    assign y=~(a&b);
endmodule


  -----------------------------------------
// Structural Modeling For NAND Gate

  module Nand_Gate_SM(
input a,b,
output y
    );
    nand n(y,a,b);
endmodule
