module johnsonCounter4bit(clk, rst, q);
  input wire clk, rst;
  output reg [3:0] q;
  
  always @(posedge clk or posedge rst) begin
    if(rst)
      q <= 4'b0;
    else
      q <= {~q[0], q[3:1]};
  end
endmodule
