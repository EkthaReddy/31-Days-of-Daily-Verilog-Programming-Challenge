//Testbench

module JK_Flip_Flop_tb;

reg J, K, clk;
wire q;

JK_Flip_Flop dut(J, K, clk, q);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

J<=1'b0;
K<=1'b0;
clk<=1'b0;
#20 $finish();
end

always #1.5 clk<=~clk;
always #2 J<=~J;
always #4 K<=~K;

endmodule
