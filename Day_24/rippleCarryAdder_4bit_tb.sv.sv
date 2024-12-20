module rippleCarryAdder_4bit_tb();
  logic [3:0] a, b;
  logic [3:0] sum;
  logic cin;
  logic cout;
  
  rippleCarryAdder_4bit DUT (.*);
  
  initial begin
    $dumpfile("rippleCarryAdder_4bit.vcd");
    $dumpvars();
  end
  
  initial begin
    $monitor($time, "| a: %b | b: %b | cin: %b | sum: %b | cout: %b", a, b, cin, sum, cout);
    for(int i = 0; i<10; i++) begin
      a = $random % 16;
      b = $random %16;
      cin = $random %2;
      #10;
    end
    #100;
    $finish();
  end
  
  
endmodule
