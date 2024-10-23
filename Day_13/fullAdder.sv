module halfAdder(a, b, sum, carry);
  input a, b;
  output sum, carry;
    and a1(carry,a,b);
    xor x1(sum,a,b);
endmodule

module fullAdder(a, b, c_in, sum, carry);
  input a, b, c_in;
  output sum, carry;
  wire w1,w2,w3;
  halfAdder HA1 (.a(a), .b(b), .sum(w1), .carry(w2));
  halfAdder HA2 (.a(w1), .b(c_in), .sum(sum), .carry(w3));
  or o1(carry, w2, w3);        
endmodule
