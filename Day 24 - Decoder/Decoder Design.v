//2:4 Decoder

module Decoder(
    input in1, in2, en,
    output reg [3:0] y
);

always @* begin
    case(en)
        2'b00: y = 4'b0001;
        2'b01: y = 4'b0010;
        2'b10: y = 4'b0100;
        2'b11: y = 4'b1000;
    endcase
end

endmodule
