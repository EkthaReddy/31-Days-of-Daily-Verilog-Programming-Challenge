//Testbench for Data flow modelling of OR Gate

module XOR_Gate_tb;
reg a,b;
wire y;

XOR_Gate_DF dut(a,b,y);

initial begin 
$dumpfile("dump.file");
$dumpvars;

a<=1'b0;
b<=1'b0;

#10 $finish();
end

always #2 a<=~a;
always #3 b<=~b;

endmodule


/* Note: Just change the module name of the main design in the testbench for the instantiation of Structural or Behavioral modeling */
