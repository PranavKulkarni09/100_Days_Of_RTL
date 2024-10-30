module dec3to8_tb();
  logic [2:0] in;
  logic [7:0] out;
  dec3to8 DUT (.in(in), .out(out));
  initial begin
    $monitor("in: %b | out: %b", in, out);
  end
  initial begin
    in = 3'b011;
    #10;
    in = 3'b111;
    #10;
    in = 3'b000;
    #10;
    in = 3'b100;
    #50;
    $finish();
  end
  initial begin
    $dumpfile("dec3to8.vcd");
    $dumpvars;
  end
endmodule
