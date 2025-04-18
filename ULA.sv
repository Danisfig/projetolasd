module ULA (
  input logic [31:0] SrcA ,
  input logic [31:0] SrcB ,
  output logic [31:0] ULAResult,
  input logic [3:0] ULAControl,
	output logic Z
);

	always @(*)begin
		case(ULAControl)
			4'b0000: ULAResult = SrcA + SrcB ;
			4'b0001: ULAResult = SrcA - SrcB ;
			4'b0010: ULAResult = SrcA & SrcB ;
			4'b0011: ULAResult = SrcA | SrcB ;
			4'b0101: ULAResult = (SrcA < SrcB) ? 1'b1 : 1'b0 ;
			4'b0111: ULAResult = SrcA ^ SrcB ;
			4'b1000: ULAResult = SrcA >> SrcB ;
			default: ULAResult = 32'b0;
		endcase
		
		Z = (ULAResult == 0) ? 1'b1 : 1'b0;
	end
endmodule
