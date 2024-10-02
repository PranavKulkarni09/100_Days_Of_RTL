module sync_counter_4bit(clk, rst, count);
  input logic clk, rst;
  output logic [0:3] count;
  always@(posedge clk or negedge rst) begin
    if(!rst)
      count <= 4'b0000;
    else
      count <= count + 1;
  end
endmodule
