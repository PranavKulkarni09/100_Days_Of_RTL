module half_sub_tb();
  logic x, y, d, b;
  half_sub hsDUT (.*);
  
  initial begin
    x = 0; y = 0;
    #10;
    x = 1; y = 1;
    #10;
    x = 1; y = 0;
    #10;
    x = 0; y = 1;
    #50;
    $finish();
  end
  
  initial begin
    $dumpfile("half_sub.vcd");
    $dumpvars();
  end
endmodule
