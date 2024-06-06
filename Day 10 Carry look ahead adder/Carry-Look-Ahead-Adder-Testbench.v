//Testbench for carry lookahead adder

module CLA_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;

CLA dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin 
$dumpfile("dump.vcd");
$dumpvars;

a=1'b0;
b=1'b0;
cin=1'b0;

#10 $finish();
end

always #5 a<=~a;
always #3 b<=~b;
always #4 cin<=~cin; 

endmodule
