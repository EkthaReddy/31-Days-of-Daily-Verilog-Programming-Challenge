//Testbench

module Carry_Increment_Adder_tb;

reg [7:0] a;
reg [7:0] b;
reg cin;
wire [7:0] sum;
wire carry;

Carry_Increment_Adder dut(.a(a), .b(b), .sum(sum), .carry(carry), .cin(cin));

initial begin
   
a <= 1'b0; 
b <= 1'b0; 
cin = 1'b0;


#10    $finish;
end

always #2 a<=~a;
always #3 b<=~b;
always #3 cin<=~cin;

endmodule

