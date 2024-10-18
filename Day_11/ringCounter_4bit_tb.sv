module ringCounter_4bit_tb();
  logic clk, rst;
  logic [3:0] y;
  ringCounter_4bit DUT (.clk(clk), .rst(rst), .y(y));
  initial begin
    clk = 0;
    rst = 0;
    $monitor("clk: %0b | rst: %0b | y: %b", clk, rst, y);
    #10;
    rst = 1;
    #200;
    $finish();
  end
  initial begin
    $dumpfile("ringCOunter_4bit.vcd");
    $dumpvars;
  end
  always #10 clk = ~clk;
endmodule
