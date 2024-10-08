module jkff_tb();
  reg clk, j, k;
  wire q, qbar;
  jkff DUT(.clk(clk), .j(j), .k(k), .q(q), .qbar(qbar)); 
  initial
    $monitor("simtime = %g, clk = %b, j = %b, k = %b, q = %b, qbar = %b", $time, clk, j, k, q, qbar);
  initial 
    begin
      clk=0;
      forever #10 clk = ~clk;  
    end 
  initial
    begin 
      j= 1;
      k= 0;
      #100; j= 0; k= 1; 
      #100; j= 0; k= 0; 
      #100; j= 1; k=1; 
      #100;
      $finish();
    end
  initial begin
    $dumpfile("jkff.vcd");
    $dumpvars;
  end
endmodule
