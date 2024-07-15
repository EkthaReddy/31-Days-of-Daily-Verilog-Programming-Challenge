//Testbench

module SR_Flip_Flop_tb;

reg S, R, clk;
wire q;

SR_Flip_Flop dut(S, R , clk, q);

initial begin
$dumpfile("dump.vcd");
$dumpvars;

S<=1'b1;
R<=1'b1;
clk<=1'b0;
#15 $finish();
end

always #2 S<=~S;
always #3 R<=~R;
always #4 clk<=~clk;

endmodule
