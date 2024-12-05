module comparator(a, b, x, y, z);
  input logic [3:0] a, b;
  output logic x, y, z;
  always @ (a, b) begin
    x = (a > b) ? 1'b1 : 1'b0;
    y = (a < b) ? 1'b1 : 1'b0;
    z = (a == b) ? 1'b1 : 1'b0;
  end
endmodule
