//Testbench

module SR_Latch_tb;

reg S, R;
wire Q, Qbar;

SR_Latch dut(S, R, Q, Qbar);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

S<=1'b0;
R<=1'b0;
#15 $finish();
end

always #1 S<=~S;
always #2 R<=~R;
endmodule
