module Memoria(
	input [31:0] PC,
	output [31:0] w_Inst
);

	always @(*)begin
		case(PC)
		32'h00: w_Inst = 32'h0ff02083;
		32'h04: w_Inst = 32'h00f0f193;
		32'h08: w_Inst = 32'h0f00f213;
		32'h0C: w_Inst = 32'h00400493;
		32'h10: w_Inst = 32'h00925233;
		32'h14: w_Inst = 32'h00000293;
		32'h18: w_Inst = 32'h00000313;
		32'h1C: w_Inst = 32'h00100393;
		32'h20: w_Inst = 32'h00419463;
		32'h24: w_Inst = 32'h00100113;
		32'h28: w_Inst = 32'h00432433;
		32'h2C: w_Inst = 32'h00040863;
		32'h30: w_Inst = 32'h003282b3;
		32'h34: w_Inst = 32'h00130313;
		32'h38: w_Inst = 32'hff1ff06f;
		32'h3C: w_Inst = 32'h0e502fa3;
		default: w_Inst = 32'h0;
		endcase
	end
endmodule

/*0ff02083
00f0f193
0f00f213
00400493-
00925233-
00000293-
00000313-
00100393-
00419463-
00100113-
00432433-
00040863-
003282b3-
00130313-
ff1ff06f-
0e502fa3-*/

