module clock_divider_tb();
  logic in_clk, rst, out_clk;
  
  clock_divider DUT (.*);
  
  initial begin
    in_clk = 0;
    forever #5 in_clk = ~in_clk;
  end
  
  initial begin
    $dumpfile("clock_divider.vcd");
    $dumpvars();
  end
  
  initial begin
    rst = 1;
    #15;
    rst = 0;
    #200;
    $finish();
  end
endmodule
