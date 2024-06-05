//Testbench for Data flow modelling of OR Gate

module Xnor_Gate_tb;
reg a,b;
wire y;

Xnor_Gate_DF dut(a,b,y);

initial begin 
$dumpfile("dump.file");
$dumpvars(0);

a<=1'b0;
b<=1'b0;

#20 $finish();
end

always #2 a<=~a;
always #3 b<=~b;

endmodule
