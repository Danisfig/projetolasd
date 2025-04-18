module Register(
    input clk,               
    input rst,          
    input we3,                
    input [4:0] wa3,                        
    input [31:0] wd3, 
	output [31:0] out [31:0]
);

    reg [31:0] registers [31:0];


    initial begin
        registers[0] = 32'b0;
    end
	 
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            integer i;
            for (i = 1; i < 32; i = i + 1) begin
                registers[i] <= 32'b0;
            end
        end else if (we3 && wa3 != 5'b0) begin
            registers[wa3] <= wd3;
        end
    end
	 
	 assign out = registers ;
	 
endmodule


