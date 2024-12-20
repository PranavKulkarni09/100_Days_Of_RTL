module johnsonCounter4bit_tb();
  
  logic clk, rst;
  logic [3:0] q;
  
  johnsonCounter4bit DUT (.*);
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    $monitor($time, "| rst: %b | q: %b", rst, q);
    rst = 1;
    #10;
    rst = 0;
    #100;
    rst = 1;
    #10;
    rst = 0;
    #30;
    $finish();
  end
endmodule
