// Testbench

module x1_Multiplexer_tb;
reg i1, i2, i3, i4, sel1, sel2;
wire out;

Multiplexer_4x1_DF dut(i1, i2, i3, i4, sel1, sel2, out);

initial begin
$dumpfile("dump.vcd");
$dumpvars;

i1<=1'b0;
i2<=1'b0;
i3<=1'b0;
i4<=1'b0;
sel1<=1'b0;
sel2<=1'b0;
#10 $finish();
end

always #2.5 i1<=~i1;
always #1 i2<=~i2;
always #1.3 i3<=~i3;
always #2 i4<=~i4;
always #0.7 sel1<=~sel1;
always #3 sel2<=~sel2;

endmodule
