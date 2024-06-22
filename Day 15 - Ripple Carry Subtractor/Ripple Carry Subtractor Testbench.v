//Testbench

module Ripple_Carry_Subtractor_tb;
reg [3:0]a, b;
reg cin;
wire [3:0]sum;
wire carry;

Ripple_Carry_Subtractor dut(a, b, cin, sum, carry);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

a<=1'b0;
b<=1'b1;
cin<=1'b0;
#10 $finish();
end

always #5 a<=~a;
always #2 b<=~b;
always #7 cin<=~cin;

endmodule
