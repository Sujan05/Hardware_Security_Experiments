module exp8(key_in, clk, led); //the clk is the system clock with 50 mhz connected to Pin88
	input [7:0] key_in;
	input clk;
	output reg [3:0] led;

	reg [5:0] address= 0;
	reg [7:0] sig;
	//reg [7:0] real_key = 8'b00111101;
	reg [7:0] real_key = 8'b00000000;


	ram64 u1 (
	.address(address[5:0]),
	.clock(clk),
	.data(sig),
	.wren(1'b1),
	.q());


	always @(posedge clk) begin

			sig = key_in;
			address = address + 1;
			if(key_in==real_key) begin
				led <=15;					// the value 15 sets for leds in haha board
			end else begin
				led <= 0;					// the value 0 resets for leds in haha board
			end
		end

endmodule
