module top(

input enable, clk, reset
//output reg com_out
);



reg[6:0] c1=0,c2=0,counter=0;
reg t1,t2;
reg com_out;
reg [6:0] address= 7'b0000000;

always @(posedge clk) begin
	t1 = int_clk1;
	t2 = int_clk2;
	
	if(t1) begin
		c1 = c1 +1;
	end
		if(t2) begin
		c2 = c2 +1;
	end
	
	if(c1>c2) begin
		com_out = 0;
	end else begin
		com_out =  1;
	end
	
	if(reset) begin
		counter=0; c1=0;c2=0;
	end else begin
		if(counter>127) begin
			counter = 0;
		end else begin
			counter = counter +1;
		end		
	end
end

wire [255:0] x1,x2;
assign x1[255:128] = 0;
assign x2[255:128] = 0;

wire int_clk1, int_clk2;

genvar gi;

	generate	
		for(gi=0; gi<128; gi= gi+1) begin :loop	
			ro u1 (.en(enable), .roout(x1[gi]));
			ro u2 (.en(enable), .roout(x2[gi]));
		end
		endgenerate

		
PUFMux256 um1(.i_D(x1), .i_Sel(counter), .o_Q(int_clk1)); 
PUFMux256 um2(.i_D(x2), .i_Sel(counter), .o_Q(int_clk2));

ram128 Ramout(
	.address(address),
	.clock(clk),
	.data(com_out),
	.wren(1'b1),
	.q());

	always @(posedge clk)
		begin
		address = address + 1;
		end
endmodule

