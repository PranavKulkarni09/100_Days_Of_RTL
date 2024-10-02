module mux2to1_tb();
	logic [0:7] a, b, y;
	logic sel;
	mux2to1 DUT (.a(a), .b(b), .sel(sel), .y(y));
	initial begin
		for(int i = 0; i<10; i++) begin
			a = $urandom_range(0, 8'hFF);
			b = $urandom_range(0, 8'hFF);
			sel = $random%2;
			#10;
			$display("a: %0d | b: %0d | sel: %0d | y: %0d",a, b, sel, y);
		end
	end
endmodule
