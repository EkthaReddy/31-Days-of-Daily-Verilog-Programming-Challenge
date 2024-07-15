//Testbench

module Demultiplexer_1x4_tb;
reg i, sel1, sel2;
wire [3:0]out;

Demultiplexer_1x4_BM dut(i,sel1, sel2, out);

initial begin
$dumpfile("dump.vcd");
$dumpvars;

i=1;
sel1<=1'b0; 
sel2<=1'b0;
#20 $finish();
end

always #2 i<=1'b1;
always #3 sel1<=~sel1;
always #4 sel2<=~sel2;
endmodule
