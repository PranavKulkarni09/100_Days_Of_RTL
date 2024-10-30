module sr_ff(clk, S, R, Q, QB);
  input clk, S, R;
  output logic Q, QB;
  always @ (posedge clk) begin
    case({S, R})
      2'b00: Q = Q;
      2'b01: Q = 0;
      2'b10: Q = 1;
      2'b11: Q = 1'bx;
    endcase
  end
  assign QBAR = ~Q;
endmodule
