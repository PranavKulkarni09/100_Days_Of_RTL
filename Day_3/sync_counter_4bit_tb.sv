module sync_counter_4bit_tb();
  logic clk, rst;
  logic [0:3] count;
  sync_counter_4bit DUT (.clk(clk), .rst(rst), .count(count));
  
  initial begin
    clk = 0;
  end
  always #5 clk = ~clk;
  
  initial begin
    #10 rst = 0;
    #30 rst = 1;
    #30 rst = 1;
    #10 rst = 0;
    #30 rst = 1;
    #60 rst = 1;
    #20;
    $finish();
  end
  
  initial begin
    $monitor("rst: %0d | count: %0d", rst, count);
  end
  
  initial begin
    $dumpfile("sync_counter_4bit.vcd");
    $dumpvars;
  end
endmodule
