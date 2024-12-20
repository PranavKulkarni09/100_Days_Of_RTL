module clock_divider(in_clk, rst, out_clk);
  input wire in_clk, rst;
  output reg out_clk;
  
  logic [1:0] count;
  
  always@(posedge in_clk or posedge rst) begin
    if(rst) begin
      count <= 2'b0;
      out_clk <= 1'b0;
    end
    else if (count == 2'b11) begin
      count <= 2'b00;
      out_clk <= ~out_clk;//This toggles the output clock every 4 input clock cycles.
    end
    else begin
      count <= count + 1'b1;
    end
  end
endmodule
