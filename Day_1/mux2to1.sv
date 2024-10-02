module mux2to1 (a, b, sel, y);
	input wire [0:7] a, b;
	input wire sel;
	output [0:7] y;
	always begin
		if(sel) y = b;
		else y = a;
	end
endmodule
