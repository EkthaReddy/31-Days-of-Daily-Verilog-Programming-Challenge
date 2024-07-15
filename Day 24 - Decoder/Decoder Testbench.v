// Testbench

module Decoder_tb;

reg in1, in2, en;
wire [3:0] y;

Decoder dut(in1, in2, en, y);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);

    in1 = 1'b0; 
    in2 = 1'b0;
    en = 1'b0;

    #10 $finish();
end

always #2 in1 = ~in1;
always #3 in2 = ~in2;
always #1 en = ~en;

endmodule
