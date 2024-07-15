// Design

module BinaryToGrayCode(
input [3:0] bin,
output [3:0] G
    );

assign G[3] = bin[3];
assign G[2] = bin[3] ^ bin[2];
assign G[1] = bin[2] ^ bin[1];
assign G[0] = bin[1] ^ bin[0];

endmodule
