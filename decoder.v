module decoder (
					input             clk,
					input       [9:0] sw,
					output    	[3:0] rez
				);
reg [3:0] decoder_output;


always @(posedge clk)
begin
	if (sw[9] == 0 && sw[8]==0)
	case (sw[3:0])
	4'b0000: decoder_output <=0;
	4'b0001: decoder_output <=1;
	4'b0010: decoder_output <=2;
	4'b0011: decoder_output <=3;
	4'b0100: decoder_output <=4;
	4'b0101: decoder_output <=5;
	4'b0110: decoder_output <=6;
	4'b0111: decoder_output <=7;
	
	4'b1000: decoder_output <=8;
	4'b1001: decoder_output <=9;
	4'b1010: decoder_output <=10;
	4'b1011: decoder_output <=11;
	4'b1100: decoder_output <=12;
	4'b1101: decoder_output <=13;
	4'b1110: decoder_output <=14;
	4'b1111: decoder_output <=15;
	
	endcase 
	else if (sw[9] == 0 && sw[8] == 1)
	case (sw[7:4])
	4'b0000: decoder_output <=0;
	4'b0001: decoder_output <=16;
	4'b0010: decoder_output <=32;
	4'b0011: decoder_output <=48;
	4'b0100: decoder_output <=64;
	4'b0101: decoder_output <=80;
	4'b0110: decoder_output <=96;
	4'b0111: decoder_output <=112;
	endcase 
	

end
assign rez = decoder_output;			

endmodule