//Testbench

module D_Latch_tb;

reg D, en;
wire q, qbar;

D_Latch dut(D, en, q, qbar);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

D<=1'b0;
en<=1'b0;
#20 $finish();
end

always #2 D<=~D;
always #1 en<=~en;
endmodule
