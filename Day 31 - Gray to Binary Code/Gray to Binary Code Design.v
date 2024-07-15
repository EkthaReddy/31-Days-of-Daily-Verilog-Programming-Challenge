// Design for Gray To Binary Code

`timescale 1ns / 1ps

module Gray_To_Binary_Code(
input [3:0] G, 
output [3:0] bin 
    );

assign bin[3] = G[3];
assign bin[2] = G[3] ^ G[2];
assign bin[1] = G[3] ^ G[2] ^ G[1];
assign bin[0] = G[3] ^ G[2] ^ G[1] ^ G[0];

endmodule
