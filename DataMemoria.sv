module DataMemoria(
	input [9:0] A,
	input [31:0] WD,
	input WE,
	input rst,
	input clk,
	output [31:0] RD

);
    reg [31:0] registers [1023/4:0];
	 
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            integer i;
            for (i = 0; i < 1023/4; i = i + 1) begin
                registers[i] <= 32'b0;
            end
        end else if (WE != 1'b0) begin
            registers[A] <= WD;
        end
    end
	 assign  RD = registers[A];
	 
endmodule
