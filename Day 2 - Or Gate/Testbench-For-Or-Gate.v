//Testbench for Data flow modelling of OR Gate

module Or_Gate_tb;
    reg a, b;
    wire y;
    
    Or_Gate_DF dut(.a(a), .b(b), .y(y));
    
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
        
        a = 1'b0; 
        b = 1'b0;
        
        #10 $finish();
    end
    
    always #2 a <= ~a;
    always #3 b <= ~b;

    always @(*) begin
        $display("time=%0t Input: a=%b, b=%b, Output: y=%b", $time, a, b, y);
    end 
endmodule



/* Note: Just change the module name of the main design in the testbench for the instantiation of Structural or Behavioral modeling */
