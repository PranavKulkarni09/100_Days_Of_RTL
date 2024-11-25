module full_sub(x, y, cin, d, b);
  input logic x, y, cin;
  output logic d, b; //d = difference | b = borrow
  assign d = x ^ y ^ cin;
  assign b = (~x&b) | (~(x ^ y) & cin);
endmodule
