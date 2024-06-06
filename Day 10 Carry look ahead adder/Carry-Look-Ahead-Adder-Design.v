// Carry look ahead adder(CLA) design by using full adder
// To construct CLA design we need to instantiate the full adder submodule into the main module of CLA

//Full adder design
module full_adder(
input a, b, cin,
output sum, cout
    );
    assign sum=a^b^cin;
    assign cout= (a&b)|(cin&(a^b));
endmodule

// Carry look ahead adder design 
module CLA(
input [3:0]a, [3:0]b,
input cin,
output [3:0]sum, 
output cout
    );
    wire [3:0]carry;
    assign carry[0]=cin;
    assign carry[1]=(a[0]&b[0])|((a[0]^b[0])&cin);
    assign carry[2]=(a[1]&b[1])|((a[1]^b[1])&((a[0]&b[0])|((a[0]^b[0])&cin)));
    assign carry[3]=(a[2]&b[2])|((a[2]^b[2])&((a[1]&b[1])|((a[1]^b[1])&((a[0]&b[0])|((a[0]^b[0])&cin)))));
    assign cout=(a[3]&b[3])|((a[3]^b[3])&((a[2]&b[2])|((a[2]^b[2])&((a[1]&b[1])|((a[1]^b[1])&((a[0]&b[0])|((a[0]^b[0])&cin)))))));
    
    assign sum=a^b^cin;
endmodule
