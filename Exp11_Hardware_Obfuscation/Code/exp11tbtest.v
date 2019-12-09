module exp11tbtest;

	reg N1,N5,N9,N13,N17,N21,N25,N29,N33,N37, N41,N45,N49,N53,N57,N61,N65,N69,N73,N77,N81,N85,N89,N93,N97,N101,N105,N109,
	N113,N117,N121,N125,N129,N130,N131,N132,N133,N134,N135,N136,N137;

	wire N724,N725,N726,N727,N728,N729,N730,N731,N732,N733, N734,N735,N736,N737,N738,N739,N740,N741,N742,N743,N744,N745,
	N746,N747,N748,N749,N750,N751,N752,N753,N754,N755;


	wire N724_OFS,N725_OFS,N726_OFS,N727_OFS,N728_OFS,N729_OFS,N730_OFS,N731_OFS,N732_OFS,N733_OFS,
	N734_OFS,N735_OFS,N736_OFS,N737_OFS,N738_OFS,N739_OFS,N740_OFS,N741_OFS,N742_OFS,N743_OFS,
	N744_OFS,N745_OFS,N746_OFS,N747_OFS,N748_OFS,N749_OFS,N750_OFS,N751_OFS,N752_OFS,N753_OFS,
	N754_OFS,N755_OFS;

	reg  keyinput1,keyinput2,keyinput3,keyinput4,keyinput5,keyinput6,keyinput7,keyinput8,keyinput9,keyinput10,keyinput11,keyinput12,keyinput13,keyinput14,keyinput15,keyinput16;

	reg [31:0] obfuscate_check;

	exp11_origin U1 (.N1(N1),.N5(N5),.N9(N9),.N13(N13),.N17(N17),.N21(N21),.N25(N25),.N29(N29),.N33(N33),.N37(N37),.N41(N41),.N45(N45),
	   .N49(N49),.N53(N53),.N57(N57),.N61(N61),.N65(N65),.N69(N69),.N73(N73),.N77(N77), .N81(N81),.N85(N85),.N89(N89),.N93(N93),.N97(N97),
	   .N101(N101),.N105(N105),.N109(N109),.N113(N113),.N117(N117), .N121(N121),.N125(N125),.N129(N129),.N130(N130),.N131(N131),.N132(N132),
	   .N133(N133),.N134(N134),.N135(N135),.N136(N136), .N137(N137), .N724(N724),.N725(N725),.N726(N726),.N727(N727),.N728(N728),.N729(N729),
	   .N730(N730),.N731(N731),.N732(N732),.N733(N733), .N734(N734),.N735(N735),.N736(N736),.N737(N737),.N738(N738),.N739(N739),.N740(N740),
	   .N741(N741),.N742(N742),.N743(N743), .N744(N744),.N745(N745),.N746(N746),.N747(N747),.N748(N748),.N749(N749),.N750(N750),.N751(N751),
	   .N752(N752),.N753(N753),.N754(N754),.N755(N755));

	exp11tb U2(.N1(N1),.N5(N5),.N9(N9),.N13(N13),.N17(N17),.N21(N21),.N25(N25),.N29(N29),.N33(N33),.N37(N37),.N41(N41),.N45(N45),
          .N49(N49),.N53(N53),.N57(N57),.N61(N61),.N65(N65),.N69(N69),.N73(N73),.N77(N77), .N81(N81),.N85(N85),.N89(N89),.N93(N93),
          .N97(N97),.N101(N101),.N105(N105),.N109(N109),.N113(N113),.N117(N117), .N121(N121),.N125(N125),.N129(N129),.N130(N130),
          .N131(N131),.N132(N132),.N133(N133),.N134(N134),.N135(N135),.N136(N136),.N137(N137),.N724(N724_OFS),.N725(N725_OFS),.N726(N726_OFS),
          .N727(N727_OFS),.N728(N728_OFS),.N729(N729_OFS),.N730(N730_OFS),.N731(N731_OFS),.N732(N732_OFS),.N733(N733_OFS), .N734(N734_OFS),
          .N735(N735_OFS),.N736(N736_OFS),.N737(N737_OFS),.N738(N738_OFS),.N739(N739_OFS),.N740(N740_OFS),.N741(N741_OFS),.N742(N742_OFS),.N743(N743_OFS),
          .N744(N744_OFS),.N745(N745_OFS),.N746(N746_OFS),.N747(N747_OFS),.N748(N748_OFS),.N749(N749_OFS),.N750(N750_OFS),.N751(N751_OFS),.N752(N752_OFS),       
          .N753(N753_OFS), .N754(N754_OFS),.N755(N755_OFS),.keyinput1(keyinput1),.keyinput2(keyinput2),.keyinput3(keyinput3),.keyinput4(keyinput4),
          .keyinput5(keyinput5),.keyinput6(keyinput6),.keyinput7(keyinput7),.keyinput8(keyinput8),.keyinput9(keyinput9),.keyinput10(keyinput10),
          .keyinput11(keyinput11),.keyinput12(keyinput12),.keyinput13(keyinput13),.keyinput14(keyinput14),.keyinput15(keyinput15),.keyinput16(keyinput16));

	always@(*) begin
		obfuscate_check[0] = N724_OFS ^ N724; obfuscate_check[1] = N725_OFS ^ N725;
        obfuscate_check[2] = N726_OFS ^ N726; obfuscate_check[3] = N727_OFS ^ N727;
        obfuscate_check[4] = N728_OFS ^ N728; obfuscate_check[5] = N729_OFS ^ N729;
        obfuscate_check[6] = N730_OFS ^ N730; obfuscate_check[7] = N731_OFS ^ N731;
        obfuscate_check[8] = N732_OFS ^ N732; obfuscate_check[9] = N733_OFS ^ N733;
        obfuscate_check[10] = N734_OFS ^ N734; obfuscate_check[11] = N735_OFS ^ N735;
        obfuscate_check[12] = N736_OFS ^ N736; obfuscate_check[13] = N737_OFS ^ N737;
        obfuscate_check[14] = N738_OFS ^ N738; obfuscate_check[15] = N739_OFS ^ N739;
        obfuscate_check[16] = N740_OFS ^ N740; obfuscate_check[17] = N741_OFS ^ N741;
        obfuscate_check[18] = N742_OFS ^ N742; obfuscate_check[19] = N743_OFS ^ N743;
        obfuscate_check[20] = N744_OFS ^ N744; obfuscate_check[21] = N745_OFS ^ N745;
        obfuscate_check[22] = N746_OFS ^ N746; obfuscate_check[23] = N747_OFS ^ N747;
        obfuscate_check[24] = N748_OFS ^ N748; obfuscate_check[25] = N749_OFS ^ N749;
        obfuscate_check[26] = N750_OFS ^ N750; obfuscate_check[27] = N751_OFS ^ N751;
        obfuscate_check[28] = N752_OFS ^ N752; obfuscate_check[29] = N753_OFS ^ N753;
        obfuscate_check[30] = N754_OFS ^ N754; obfuscate_check[31] = N755_OFS ^ N755;

	end

	initial begin
		keyinput1=0; keyinput2=0; keyinput3=1; keyinput4=0;
		keyinput5=0; keyinput6=1; keyinput7=0; keyinput8=1;
		keyinput9=0; keyinput10=1; keyinput11=1; keyinput12=1;
		keyinput13=1; keyinput14=1; keyinput15=0;keyinput16=1;

		repeat (10) begin
			N1=$random; N5=$random; N9=$random; N13=$random; N17=$random;
			N21=$random; N25=$random;N29=$random;N33=$random;N37=$random;
			N41=$random;N45=$random;N49=$random;N53=$random;N57=$random;
			N61=$random;N65=$random;N69=$random;N73=$random;N77=$random;
			N81=$random;N85=$random;N89=$random;N93=$random;N97=$random;
			N101=$random;N105=$random;N109=$random;N113=$random;N117=$random;
			N121=$random;N125=$random;N129=$random;N130=$random;N131=$random;
			N132=$random;N133=$random;N134=$random;N135=$random;N136=$random;N137=$random;
			#10;

			$display("%b",obfuscate_check);
		end



		repeat (10) begin
			keyinput1=$random; keyinput2=$random; keyinput3=$random; keyinput4=$random;
			keyinput5=$random; keyinput6=$random;keyinput7=$random; keyinput8=$random;
			keyinput9=$random; keyinput10=$random; keyinput11=$random; keyinput12=$random;
			keyinput13=$random; keyinput14=$random; keyinput15=$random;keyinput16=$random;

			repeat (10) begin
				N1=$random; N5=$random; N9=$random; N13=$random;
				N17=$random; N21=$random; N25=$random; N29=$random;
				N33=$random; N37=$random; N41=$random; N45=$random;
				N49=$random; N53=$random; N57=$random; N61=$random;
				N65=$random; N69=$random; N73=$random; N77=$random;
				N81=$random; N85=$random; N89=$random; N93=$random;
				N97=$random; N101=$random; N105=$random; N109=$random;
				N113=$random; N117=$random; N121=$random; N125=$random;
				N129=$random; N130=$random; N131=$random;N132=$random;
				N133=$random; N134=$random;  N135=$random; N136=$random;
				N137=$random;#10;

				$display("%b",obfuscate_check);
			end


		end
	end
endmodule
