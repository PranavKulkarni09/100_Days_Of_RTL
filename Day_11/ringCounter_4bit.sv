module ringCounter_4bit(clk, rst, y);
  input logic clk, rst;
  output logic [3:0] y;
  always@(posedge clk or negedge rst) begin
    if(!rst)
      y <= 4'b1000;
    else
      y <= {y[2:0], y[3]};
  end
endmodule
