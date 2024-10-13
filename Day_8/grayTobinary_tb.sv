module grayTobinary_tb();
  logic [3:0] gr, bin;
  grayTobinary DUT (.gr(gr), .bin(bin));
  initial begin
    $monitor("gr: %0b | bin: %0b", gr, bin);
  end
  initial begin
    gr = 0;
    #10;
    gr = 4'b1100;
    #20;
    gr = 4'b1111;
    #20;
    gr = 4'b0011;
    #100;
    $finish();
  end
  initial begin
    $dumpfile("grayTobinary.vcd");
    $dumpvars;
  end
endmodule
