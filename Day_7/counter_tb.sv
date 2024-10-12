module counter_tb();
  reg clk, clr;
  wire [3:0] c;
  counter DUT (.clk(clk), .clr(clr), .c(c));
  initial begin
    $monitor("clr: %0d | c: %0d", clr, c);
    clk = 0;
    clr = 1;
    #20;
    clr = 0;
    #230;
    clr = 1;
    #30;
    clr = 0;
    #100;
    $finish();
  end
  initial begin
    $dumpfile("synchCounter.vcd");
    $dumpvars;
  end
  always #10 clk = ~clk;
endmodule
