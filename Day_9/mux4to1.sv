module mux4to1(sel, a, b, c, d, y);
  input logic [1:0] sel;
  input logic a, b, c, d;
  output logic y;
  always@(*) begin
    case(sel)
      2'b00 : y = a;
      2'b01 : y = b;
      2'b10 : y = c;
      2'b11 : y = d;
      default : y = 0;
    endcase
  end
endmodule
