module siso_shift_reg_tb();
  logic clk, rst, s_in, s_out;
  siso_shift_reg DUT (.*);
  always #10 clk = ~clk;
  initial begin
    clk = 0; rst = 1; s_in = 0;
    #10; rst = 0;
    repeat(10) begin
      void'($random(s_in));
      #10;
    end
    $finish();
  end
    initial begin
      $monitor("s_in: %b -> siso_shift_reg: %b -> s_out: %b", s_in, DUT.siso_shift_reg, s_out);
  end
endmodule
