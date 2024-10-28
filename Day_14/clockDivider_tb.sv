module clockDivier_tb();
  logic clk, rst, en, divBy2, divBy4, divBy8, divBy16;
  clockDivider DUT (.clk(clk), .rst(rst), .en(en), .divBy2(divBy2), .divBy4(divBy4), .divBy8(divBy8), .divBy16(divBy16));
  initial begin
    clk = 0;
  end
  always #5 clk = ~clk;
  initial begin
    en = 0;
	rst = 1;
	#10;
	en = 1;
	rst = 0;
	#400;
	rst = 0;
	en = 0;
	#100;
	$finish();
  end
  initial begin
    $dumpfile("clockDivier.vcd");
    $dumpvars;
  end
endmodule
