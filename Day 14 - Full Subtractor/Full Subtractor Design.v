//Full Subtractor Design

module Full_Subtractor(
input a, b, cin,
output difference, borrow
    );
    assign difference = a^b^cin;
    assign borrow = (~a&b)|(cin&(~a&b));
endmodule
