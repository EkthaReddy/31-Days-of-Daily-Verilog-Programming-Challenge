//1:4 demultiplexer constructed using behavioural modelling

module Demultiplexer_1x4_BM(
input i, sel1, sel2,
output reg [3:0]out
    );
    always @(*) begin
    case({sel1 , sel2}) 
    2'b00 : begin 
    out[0]=i;
    out[1]=0;
    out[2]=0;
    out[3]=0;
    end
    2'b01 : begin 
    out[0]=0;
    out[1]=i;
    out[2]=0;
    out[3]=0;
    end
    2'b10 : begin 
    out[0]=0;
    out[1]=0;
    out[2]=i;
    out[3]=0;
    end
    2'b11 : begin 
    out[0]=0;
    out[1]=0;
    out[2]=0;
    out[3]=i;
    end
    default: begin out=0;
    end
    endcase
    end
endmodule
