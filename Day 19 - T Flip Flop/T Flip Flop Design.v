//T flip flop design 

module T_Flip_Flop(
input t, clk, reset,
output reg q
    );
    always@(posedge clk) begin
    if(~reset)
        q<=1'b0;
    else
        if(t)
            q<=~q;
        else
            q<=q;
    end        
endmodule
