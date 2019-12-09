module adc(clk_in, rst,leddata, seven_seg);
	input rst;
	input clk_in;
	output [7:0] leddata;
	output reg [6:0]seven_seg;


	wire clk;
	wire locked;
	wire response_valid;
	wire [4:0] response_channel;
	wire [11:0] response_data;
	wire [31:0] sequencer_csr_writedata;
	assign sequencer_csr_writedata = 3;  //bit 0 is set to 1 for keep running the process
														// bit 1 is set to 1 for single cycle adc conversion
														//rest of the bits are assigned to zero
	wire [11:0] mem_content;


	assign leddata = mem_content[7:0];




	always @(posedge clk_in) begin


		if(mem_content[11:8] == 0) begin
			seven_seg <= 7'b1000000;
		end else if(mem_content[11:8] == 1) begin
			seven_seg <= 7'b1111001;
		end else if(mem_content[11:8] == 2) begin
			seven_seg <= 7'b0100100;
		end else if(mem_content[11:8] == 3) begin
			seven_seg <= 7'b0110000;
		end else if(mem_content[11:8] == 4) begin
			seven_seg <= 7'b0011001;
		end else if(mem_content[11:8] == 5) begin
			seven_seg <= 7'b0010010;
		end else if(mem_content[11:8] == 6) begin
			seven_seg <= 7'b0000010;
		end else if(mem_content[11:8] == 7) begin
			seven_seg <= 7'b1111000;
		end else if(mem_content[11:8] == 8) begin
			seven_seg <= 7'b0000000;
		end else if(mem_content[11:8] == 9) begin
			seven_seg <= 7'b0010000;
		end else if(mem_content[11:8] == 10) begin
			seven_seg <= 7'b0001000;
		end else if(mem_content[11:8] == 11) begin
			seven_seg <= 7'b0000011;
		end else if(mem_content[11:8] == 12) begin
			seven_seg <= 7'b0000110;
		end else if(mem_content[11:8] == 13) begin
			seven_seg <= 7'b0100001;
		end else if(mem_content[11:8] == 14) begin
			seven_seg <= 7'b0000110;
		end else begin
			seven_seg <= 7'b0001110;
		end
	end









	pll10 U0(.inclk0(clk_in), .areset(rst), .c0(clk), .locked(locked));



	adc12 u1 (
				.adc_pll_clock_clk(clk),       //  adc_pll_clock.clk
				.adc_pll_locked_export(locked),   // adc_pll_locked.export
				.clock_clk(clk_in),               //          clock.clk
				.reset_sink_reset_n(1'b1),      //     reset_sink.reset_n
				.response_valid(response_valid),          //       response.valid
				.response_channel(response_channel),        //               .channel
				.response_data(response_data),           //               .data
				.response_startofpacket(),  //               .startofpacket
				.response_endofpacket(),    //               .endofpacket
				.sequencer_csr_address(0),   //  sequencer_csr.address
				.sequencer_csr_read(1'b0),      //               .read
				.sequencer_csr_write(1'b1),     //               .write
				.sequencer_csr_writedata(sequencer_csr_writedata), //               .writedata
				.sequencer_csr_readdata()   //               .readdata
				);


	ram10 U2(
				.address(0),
				.clock(clk_in),
				.data(response_data),
				.wren(response_valid),
				.q(mem_content));

endmodule
