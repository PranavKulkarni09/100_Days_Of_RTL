module half_sub(x, y, d, b);
  input logic x, y;
  output logic d, b; //d = dofference | b = borrow
  assign d = x ^ y;
  assign b = (~x) & y;
endmodule
