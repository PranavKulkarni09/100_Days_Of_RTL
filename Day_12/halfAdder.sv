module halfAdder(a, b, sum, carry);
  input a, b;
  output sum, carry;
    and a1(carry,a,b);
    xor x1(sum,a,b);
endmodule
