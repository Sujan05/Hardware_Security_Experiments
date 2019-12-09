module testbnch_fsm;

reg x, clk;
wire out;

fsm uut(.x(x),.clk(clk),.out(out));

    initial begin
        clk = 0;
    end

    always 
        #5 clk = !clk;

    initial begin
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;
        x = 1; #10;
        x = 0; #10;
        x=1;
    end
endmodule 