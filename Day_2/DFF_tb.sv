module dff_tb();
  logic clk=0, q, q_bar;
  logic d;
  dff DUT (.clk(clk), .d(d), .q(q), .q_bar(q_bar));
  always #5 clk = ~clk;
  initial begin
    #10 d = 1;
    $display("clk:%0d | d: %0d | q: %0d | q_bar: %0d", clk, d, q, q_bar);
    #10 d = 0;
    $display("clk:%0d | d: %0d | q: %0d | q_bar: %0d", clk, d, q, q_bar);
    #10 d = 0;
    $display("clk:%0d | d: %0d | q: %0d | q_bar: %0d", clk, d, q, q_bar);
    #10 d = 1;
    $display("clk:%0d | d: %0d | q: %0d | q_bar: %0d", clk, d, q, q_bar);
    #10 d = 1;
    $display("clk:%0d | d: %0d | q: %0d | q_bar: %0d", clk, d, q, q_bar);
    #20;
    $finish();
  end
  initial begin
    $dumpfile("dff.vcd");
    $dumpvars;
  end
endmodule
