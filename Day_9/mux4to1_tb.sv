module mux4to1_tb();
  logic [1:0] sel;
  logic a, b, c, d, y;
  mux4to1 DUT (.sel(sel), .a(a), .b(b), .c(c), .d(d), .y(y));
  initial begin
    $monitor("sel: %0b | a: %0d | b: %0d | c: %0d | d: %0d | y: %0d", sel, a, b, c, d, y);
  end
  initial begin
    sel = 2'b00; a = 0; b = 1; c = 0; d = 1;
    #10;
    sel = 2'b01; a = 1; b = 1; c = 1; d = 0;
    #10;
    sel = 2'b11; a = 0; b = 0; c = 1; d = 1;
    #10;
    sel = 2'b10; a = 1; b = 1; c = 1; d = 0;
  end
  initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars;
  end
endmodule
