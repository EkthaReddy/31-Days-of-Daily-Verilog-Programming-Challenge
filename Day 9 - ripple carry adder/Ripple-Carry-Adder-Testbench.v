//testbench for Ripple Carry Adder

module ripple_carry_adder_tb;

reg a, b, cin;
wire sum, carry;

ripple_carry_adder_ dut(a,b,cin,sum,carry);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

a=1'b0;
b=1'b0;
cin=1'b0;

#10 $finish();
end

always #2 a<=~a;
always #3 b<=~b;
always #4 cin<=~cin;

endmodule
