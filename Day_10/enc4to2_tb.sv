module enc4to2_tb();
  logic [3:0] a;
  logic [1:0]y;
  enc4to2 DUT(.a(a), .y(y));
  initial begin
    $monitor("a: %0b | y: %0b", a, y);
  end
  initial begin
    a = 4'b0000;
    #10;
    a = 4'b1111;
    #10;
    a = 4'b0100;
    #10;
    a = 4'b1000;
    #10;
    $finish();
  end
endmodule
