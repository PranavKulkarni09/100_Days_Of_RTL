module traffic_light_tb();
  logic clk, rst;
  logic [2:0] light_a, light_b;
  
  traffic_light DUT (.*);
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    rst = 0;
    #10
    rst = 1;
    #1000;
    $finish();
  end
  
  initial begin
    $monitor($time, "| A: %b | B: %b", light_a, light_b);
  end
  
  initial begin
    $dumpfile("trafiic_light_tb.vcd");
    $dumpvars();
  end
endmodule
