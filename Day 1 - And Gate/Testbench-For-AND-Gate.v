// Testbench for AND Gate in Data Flow modeling 

module And_Gate_tb;
    reg a, b;
    wire y;
    
    And_Gate dut(a, b, y);
    
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
