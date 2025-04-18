module mux32x1 (
  input [4:0] ra1,
  input [31:0] registrador [31:0],
  output [31:0] out 
);
  
  always @(*)begin
		case(ra1)
			 5'h0: out = registrador[0];
			 5'h1: out = registrador[1];
			 5'h2: out = registrador[2];
			 5'h3: out = registrador[3];
			 5'h4: out = registrador[4];
			 5'h5: out = registrador[5];
			 5'h6: out = registrador[6];
			 5'h7: out = registrador[7];
			 5'h8: out = registrador[8];
			 5'h9: out = registrador[9];
			 5'hA: out = registrador[10];
			 5'hB: out = registrador[11];
			 5'hC: out = registrador[12];
			 5'hD: out = registrador[13];
			 5'hE: out = registrador[14];
			 5'hF: out = registrador[15];
			 5'hA1: out = registrador[16];
			 5'hA2: out = registrador[17];
			 5'hA3: out = registrador[18];
			 5'hA4: out = registrador[19];
			 5'hA5: out = registrador[20];
			 5'hA6: out = registrador[21];
			 5'hA7: out = registrador[22];
			 5'hA8: out = registrador[23];
			 5'hA9: out = registrador[24];
			 5'hAA: out = registrador[25];
			 5'hAB: out = registrador[26];
			 5'hAC: out = registrador[27];
			 5'hAD: out = registrador[28];
			 5'hAE: out = registrador[29];
			 5'hAE: out = registrador[30];
			 5'hAF: out = registrador[31];
			 default: out = 5'h0;
		endcase
	end
	
endmodule
