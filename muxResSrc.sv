module muxResSrc (
	input [1:0] w_ResultSrc,
	input [31:0] ResultadoULA,
	input [31:0] int1,
	input [31:0] int2,
	output [31:0] w_Wd3
);

	always @(*)begin
		case(w_ResultSrc)
			2'b00: w_Wd3 = ResultadoULA;
			2'b01: w_Wd3 = int1;
			2'b10: w_Wd3 = int2;
			default: w_Wd3 = 00;
		endcase
	end
	
endmodule
