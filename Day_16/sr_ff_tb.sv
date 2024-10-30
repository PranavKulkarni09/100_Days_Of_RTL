module sr_ff_tb();
  logic S, R, clk, Q, QB;
  sr_ff DUT (.S(S), .R(R), .clk(clk), .Q(Q), .QB(QB));
  initial begin
    clk = 0;
  end
  always #10 clk = ~clk;
  initial begin
    $monitor("Time: %t | S: %d | R: %d | Q: %d | QB: %b",$time, S, R, Q, QB);
  end
  initial begin
    S = 1;
    R = 0;
    #20;
    S = 0;
    R = 0;
    #20;
    S = 1;
    R = 1;
    #20;
    S = 0;
    R = 1;
    #50;
    $finish();
  end
endmodule
