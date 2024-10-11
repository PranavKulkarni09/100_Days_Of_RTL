module tff(clk, rst, t, q, qbar);
  input clk, rst, t;
  logic j, k;
  output logic q, qbar;
  always@(posedge clk) begin
    if(!rst)
      q <= 0;
    else begin
      if(t)
        q <= ~q;
      else
        q <= q;
    end
  end
  assign qbar = ~q;
endmodule
