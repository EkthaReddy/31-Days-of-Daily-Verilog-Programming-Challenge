//Testbench

module T_Flip_Flop_tb;
reg t, clk, reset;
wire q;

T_Flip_Flop dut(t, clk, reset, q);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

t<=1'b0;
clk<=1'b0;
reset<=1'b0;
#25 $finish();
end

always #2 t<=~t;
always #3 clk<=~clk;
always #4 reset<=~reset;

endmodule
