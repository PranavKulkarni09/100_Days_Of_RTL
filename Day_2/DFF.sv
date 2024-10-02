module dff(clk, d, q, q_bar);
  input d, clk;
  output reg q, q_bar;
  
  always @ (posedge clk) begin
    q <= d;
  end
  assign q_bar = ~q;
endmodule
