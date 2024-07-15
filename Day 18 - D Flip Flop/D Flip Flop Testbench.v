// Testbench

module D_flip_flop_tb;

reg d, clk, reset;
wire q;

D_flip_flop dut(d, clk, reset, q);

initial begin
$dumpfile("dump.vcd");
$dumpvars;

d<=1'b0;
clk<=1'b0;
reset<=1'b0;
#30 $finish();
end

always #2 d<=~d;
always #3 clk<=~clk;
always #1.2 reset<=~reset;

endmodule
