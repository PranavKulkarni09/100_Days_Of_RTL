module tff_tb();
  reg clk, rst, t;
  wire q, qbar;
  tff DUT (clk, rst, t, q, qbar);
  initial begin
    clk = 0;
    rst = 0;
    $monitor("simtime = %g, rst = %b, t = %b, q = %b, qbar = %b", $time, rst, t, q, qbar);
  end
  always #10 clk = ~clk;
  initial begin
    $dumpfile("tff_tb.vcd");
    $dumpvars;
  end
  initial begin
    t = 0;
    #10;
    t = 1;
    #10;
    t = 1;
    #10;
    rst = 1;
    t = 1;
    #10;
    t = 1;
    #10;
    t = 0;
    #10;
    t = 0;
    #10;
    t = 1;
    #10;
    t = 0;
    #10;
    t = 1;
    #50;
    $finish();
  end
endmodule
