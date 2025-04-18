module ANDbranch(
	input Tipo_B,
	input B,
	input Zero,
	input J,
	output PCSrc
);

	always @(*)begin
		case(Tipo_B)
			1'b0: PCSrc = J | (B & !Zero);
			1'b1: PCSrc = J | (B & Zero);
			default: PCSrc =0;
			endcase
	end
	
endmodule
