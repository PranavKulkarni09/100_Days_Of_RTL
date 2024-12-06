module siso_shift(clk, rst, s_in, s_out);
  input logic clk, rst, s_in;
  output logic s_out;
  logic [3:0] siso_shift_reg;
  
  always@(posedge clk) begin
    if(rst)
      siso_shift_reg <= 4'b0;
    else
      siso_shift_reg <= {siso_shift_reg[2:0], s_in};
  end
  
  assign s_out = siso_shift_reg[3];
endmodule
