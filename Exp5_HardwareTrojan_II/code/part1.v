module adc(clk_in, rst);
	input rst;
	input clk_in;



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



	//assign leddata = response_data[7:0];
	//assign leddata = counter[7:0];

 	//assign leddata[7:1] = (temp>0)?temp:1;
	//assign leddata = mem_content[7:0];



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
