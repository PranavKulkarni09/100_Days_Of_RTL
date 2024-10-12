module counter(clk, clr, c);
  input clk, clr;
  output logic [3:0] c;
  reg [3:0] temp_c;
  always @ (posedge clk) begin
    if(clr) begin
      temp_c <= 4'b0000;
      c <= 4'b0;
    end
    else begin
      temp_c ++;
      if (temp_c == 4'b1111) begin
        temp_c <= 4'b0000;
      end
      c <= temp_c;
    end
  end
endmodule
