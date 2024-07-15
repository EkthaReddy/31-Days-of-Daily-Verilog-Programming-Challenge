//4:1 Multiplexer is designed using data flow modelling

module x1_Multiplexer_DF(
input i1, i2, i3, i4, sel1, sel2,
output out
    );
    assign out=sel2?(sel1? i4 : i3):(sel1 ? i2 : i1);
endmodule
