module binary_to_gray_tb();
  logic [3:0] b_in, g_out;
  binary_to_gray DUT (.*);
  initial begin
    $monitor("b_in: %d | %b -> g_out: %d | %b", b_in, b_in, g_out, g_out);
  end
  initial begin
    repeat(10) begin
      b_in = $random % 16;
      #10;
    end
  end
endmodule
