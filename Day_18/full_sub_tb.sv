module full_sub_tb();
  logic x, y, cin, d, b;
  full_sub fsDUT (.*);
  
  initial begin
    x = 0; y = 0; cin = 0;
    #5;
    x = 0; y = 0; cin = 1;
    #5;
    x = 0; y = 1; cin = 0;
    #5;
    x = 0; y = 1; cin = 1;
    #5;
    x = 1; y = 0; cin = 0;
    #5;
    x = 1; y = 0; cin = 1;
    #5;
    x = 1; y = 1; cin = 0;
    #5;
    x = 1; y = 1; cin = 1;
    #20;
    $finish();
  end
  
  initial begin
    $dumpfile("full_sub_tb.vcd");
    $dumpvars();
  end
endmodule
