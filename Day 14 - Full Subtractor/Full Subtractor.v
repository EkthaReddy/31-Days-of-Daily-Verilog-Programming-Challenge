//Testbench

module Full_Subtractor_tb;
reg a, b, cin;
wire difference, borrow;

Full_Subtractor dut(a, b, cin, difference, borrow);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

a<=1'b0;
b<=1'b0;
cin<=1'b0;

#10 $finish();
end

always #2 a<=~a;
always #3 b<=~b;
always #4 cin<=~cin;


endmodule
