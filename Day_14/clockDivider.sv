module clockDivider(clk, rst, en, divBy2, divBy4, divBy8, divBy16);
	input clk, rst, en;
	output logic divBy2, divBy4, divBy8, divBy16;
	logic [3:0] c;
	always@(posedge clk or posedge rst) begin
		if(rst) begin
			c <= 4'b0000;
		end
		else if(en) begin
			c++;
			divBy2 <= c[0];
			divBy4 <= c[1];
			divBy8 <= c[2];
			divBy16 <= c[3];
		end
	end
endmodule
