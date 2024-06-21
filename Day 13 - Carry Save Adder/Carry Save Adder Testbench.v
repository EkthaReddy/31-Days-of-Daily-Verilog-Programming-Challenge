//Testbench

module Carry_Save_Adder_tb;
reg [3:0]a, b, cin;
wire [3:0]sum;
wire carry;

Carry_Save_Adder dut(.a(a), .b(b), .cin_csa(cin), .din(cin), .sum(sum), .carry(carry));

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

a<=1'b0;
b<=1'b0;
cin<=1'b0;

#10 $finish();
end

always #5 a<=~a;
always #2 b<=~b;
always #7 cin<=~cin;

endmodule

