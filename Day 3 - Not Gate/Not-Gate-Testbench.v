//Testbench for Data flow modelling of NOT Gate

module Not_Gate_tb;
reg a;
wire y;

Not_Gate_DF dut(.a(a), .y(y));

initial begin
$dumpfile("dump.vcd");
$dumpvars;

a=1'b0;
#10 $finish();
end

always #2 a=~a;


always @(*) begin
        $display("time=%0t Input: a=%b, Output: y=%b", $time, a, y);
end 
endmodule



/* Note: Just change the module name of the main design in the testbench for the instantiation of Structural or Behavioral modeling */
