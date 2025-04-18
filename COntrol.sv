module COntrol(
	input [6:0] w_OP,
	input [2:0] w_Funct3,
	input [5:0] w_Funct7,
	output [3:0] w_ULAControl,
	output w_ULASrc,
	output w_RegWrite,
	output [1:0] ImmSrc,
	output w_MemWrite,
	output [1:0] ResultSrc,
	output Branch,
	output Jump,
	output Tipo_B
);

  always @(*)begin
		case(w_OP)
			7'b0110011: case(w_Funct3)
						   3'b000: case(w_Funct7)
                             7'b0000000:begin w_RegWrite=1; ImmSrc= 2'bxx; w_ULASrc = 0; w_ULAControl = 4'b0000; w_MemWrite = 0; ResultSrc = 2'b00;Branch = 0;Jump = 0;Tipo_B = 0;end
                             7'b0100000:begin w_RegWrite=1; ImmSrc= 2'bxx; w_ULASrc = 0; w_ULAControl = 4'b0001; w_MemWrite = 0; ResultSrc = 2'b00;Branch = 0;Jump = 0;Tipo_B = 0;end
                             default:begin w_RegWrite=0; ImmSrc= 2'bxx;  w_ULASrc = 0; w_ULAControl = 4'b0000; w_MemWrite = 0; ResultSrc = 2'b00;Branch = 0;Jump = 0;Tipo_B = 0;end
									  endcase
						   3'b101:begin w_RegWrite=1; ImmSrc= 2'bxx; w_ULASrc = 0; w_ULAControl = 4'b1000; w_MemWrite = 0; ResultSrc = 2'b00;Branch = 0;Jump = 0;Tipo_B = 0;end//SRL
							//100100100.101.00100.0110011
							3'b111:begin w_RegWrite=1; ImmSrc= 2'bxx; w_ULASrc = 0; w_ULAControl = 4'b0010; w_MemWrite = 0; ResultSrc = 2'b00;Branch = 0;Jump = 0;Tipo_B = 0;end //AND
							//101000001.111.00011.0110011
						   3'b110:begin w_RegWrite=1; ImmSrc= 2'bxx; w_ULASrc = 0; w_ULAControl = 4'b0011; w_MemWrite = 0; ResultSrc = 2'b00;Branch = 0;Jump = 0;Tipo_B = 0;end
						   3'b010:begin w_RegWrite=1; ImmSrc= 2'bxx; w_ULASrc = 0; w_ULAControl = 4'b0101; w_MemWrite = 0; ResultSrc = 2'b00;Branch = 0;Jump = 0;Tipo_B = 0;end //SLT
						   default:begin w_RegWrite=0; ImmSrc= 2'bxx; w_ULASrc = 0; w_ULAControl = 4'b0000; w_MemWrite = 0; ResultSrc = 2'b00;Branch = 0;Jump = 0;Tipo_B = 0;end
							endcase
							
      	7'b0010011: case(w_Funct3)
							3'b000: begin w_RegWrite =1; ImmSrc= 2'b00; w_ULASrc = 1; w_ULAControl = 4'b0000; w_MemWrite = 0; ResultSrc = 2'b00; Branch = 0;Jump = 0;Tipo_B = 0;end //ADDI
							3'b110:begin w_RegWrite =1; ImmSrc= 2'b00; w_ULASrc = 1; w_ULAControl = 4'b0011; w_MemWrite = 0; ResultSrc = 2'b00; Branch = 0;Jump = 0;Tipo_B = 0;end //ORI
							3'b100:begin w_RegWrite =1; ImmSrc= 2'b00; w_ULASrc = 1; w_ULAControl = 4'b0111; w_MemWrite = 0; ResultSrc = 2'b00; Branch = 0;Jump = 0;Tipo_B = 0;end //XORI
							3'b111:begin w_RegWrite =1; ImmSrc= 2'b00; w_ULASrc = 1; w_ULAControl = 4'b0010; w_MemWrite = 0; ResultSrc = 2'b00; Branch = 0;Jump = 0;Tipo_B = 0;end //ANDI
							default: begin w_RegWrite=0; ImmSrc= 2'b00; w_ULASrc = 0; w_ULAControl = 4'b0000; w_MemWrite = 0; ResultSrc = 2'b00;Branch = 0;Jump = 0;Tipo_B = 0;end
							endcase
							
			7'b0000011:begin w_RegWrite =1; ImmSrc= 2'b00; w_ULASrc = 1; w_ULAControl = 4'b0000; w_MemWrite = 0; ResultSrc = 2'b01; Branch = 0;Jump = 0;Tipo_B = 0;end // LW
			7'b0100011:begin w_RegWrite =0; ImmSrc= 2'b01; w_ULASrc = 1; w_ULAControl = 4'b0000; w_MemWrite = 1; ResultSrc = 2'bx; Branch = 0;Jump = 0;Tipo_B = 0;end // SW
			
			7'b1100011: case(w_Funct3)
							3'b000:begin w_RegWrite =0; ImmSrc= 2'b10; w_ULASrc = 0; w_ULAControl = 4'b0001; w_MemWrite = 0; ResultSrc = 2'bx; Branch = 1;Jump = 0;Tipo_B = 1;end // BEQ
							3'b001:begin w_RegWrite =0; ImmSrc= 2'b10; w_ULASrc = 0; w_ULAControl = 4'b0001; w_MemWrite = 0; ResultSrc = 2'bx; Branch = 1;Jump = 0;Tipo_B = 0; end // BNE
							default: begin w_RegWrite=0; ImmSrc= 2'bxx; w_ULASrc = 0; w_ULAControl = 4'b0000; w_MemWrite = 0; ResultSrc = 2'b00;Branch = 0;Jump = 0; Tipo_B = 0;end
							endcase
							
			7'b1101111:begin w_RegWrite=1; ImmSrc= 2'b11; w_ULASrc = 1'bx; w_ULAControl = 4'bxxxx; w_MemWrite = 0; ResultSrc = 2'b10; Branch = 0; Jump = 1;Tipo_B = 0;end // J
			default:begin w_RegWrite=0; ImmSrc= 2'b00; w_ULASrc = 0; w_ULAControl = 4'b0000; w_MemWrite = 0; ResultSrc = 2'b00; Branch = 0; Jump = 1; Tipo_B = 0;end
		endcase
  end
endmodule

