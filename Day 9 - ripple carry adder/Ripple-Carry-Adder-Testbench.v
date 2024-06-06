//testbench for Ripple Carry Adder

module rca_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire c4;

rca dut(a,b,cin,sum,c4);

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
