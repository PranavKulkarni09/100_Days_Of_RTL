module halfAdder_tb();
  logic a, b, sum, carry;
  halfAdder DUT (.a(a), .b(b), .sum(sum), .carry(carry));
  initial begin
    $monitor("a: %0d | b: %0d | sum: %0d | carry: %0d\n", a, b, sum, carry);
  end
  initial begin
    a=0; b=0;
    #20 a = 0; b = 1;
    #20 a = 1; b = 0;
    #20 a = 1; b = 1;
  end
endmodule
