module comparator_tb();
  logic [3:0] a, b;
  logic x, y, z;
  comparator DUT (.*);
  initial begin
    $dumpfile("comparator_tb.vcd");
    $dumpvars;
  end
  initial begin
    repeat(10) begin
      a = $random %16;
      b = $random %16;
      #10;
    end
  end
  initial begin
    $monitor("a: %d | b: %d , x: %b -> y: %b -> z: %b", a, b, x, y, z);
  end
endmodule
