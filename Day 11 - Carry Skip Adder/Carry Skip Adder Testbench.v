//Testbench

module carry_skip_adder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;

carry_skip_adder dut(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

initial begin 
$dumpfile("dump.vcd");
$dumpvars;

a<=1'b0;
b<=1'b0;
cin<=1'b0;
#10 $finish();
end

always #2 a<=~a;
always #3 b<=~b;
always #4 cin<=~cin;

endmodule
