
	// out should be connected to LED
	// D should be connected to 7 segment display
	// CLK_inter and in are coming from uC
	// clk should be connected to external clock, i.e. pin88
	// ram1 needs to be 8 BL and 2^7=128 WL
module exp7(in, CLK_inter, clk);
	input [7:0] in;
	input CLK_inter, clk;
	
	reg [5:0] address= 0;
	reg [7:0] sig; 
	
	
	ram64 u1 (
	.address(address[5:0]),
	.clock(clk),
	.data(sig),
	.wren(1'b1),
	.q());
	

	always @(negedge CLK_inter)
		begin
			sig = in;		
			address = address + 1;
		end

		
endmodule
		