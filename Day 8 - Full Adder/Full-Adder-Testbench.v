//testbench for full adder

module Full_Adder_tb;

reg a, b, c;
wire sum, carry;

Full_Adder dut(a,b,c,sum,carry);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

a=1'b0;
b=1'b0;
c=1'b0;

#10 $finish();
end

always #2 a<=~a;
always #3 b<=~b;
always #4 c<=~c;

endmodule
