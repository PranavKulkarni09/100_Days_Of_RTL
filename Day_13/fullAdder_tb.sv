module fullAdder_tb();
  logic a, b, c_in, sum, carry;
  fullAdder DUT (.a(a), .b(b), .c_in(c_in), .sum(sum), .carry(carry));
  initial begin
    $monitor("Time: %0t | a: %0d | b: %0d | c_in: %0d | sum: %0d | carry: %0d\n", $time, a, b, c_in, sum, carry);
  end
  initial begin
    a = 0; b = 0; c_in = 0;
    #10 a = 0; b = 0; c_in = 1;
    #10 a = 0; b = 1; c_in = 0;
    #10 a = 0; b = 1; c_in = 1;
    #10 a = 1; b = 0; c_in = 0;
    #10 a = 1; b = 0; c_in = 1;
    #10 a = 1; b = 1; c_in = 0;
    #10 a = 1; b = 1; c_in = 1;
  end
endmodule
