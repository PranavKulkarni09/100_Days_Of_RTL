module alu_tb();
  parameter width = 8;
  logic [width-1:0] in_a, in_b, out;
  logic [2:0] sel;
  alu DUT (.in_a(in_a), .in_b(in_b), .sel(sel), .out(out));
  initial begin
    in_a = 8'b0; in_b = 8'b0; sel = 8'b0;
  end
  task alu_test;
    for(int i = 0; i<10; i++) begin
      in_a = $urandom_range(0,255);
      in_b = $urandom_range(0,255);
      sel  = $urandom_range(0,8);
      #10;
      $display("in_a: %0d | in_b: %0d | sel: %0d | out: %0d\n", in_a, in_b, sel, out);
      #10;
    end
  endtask
  
  initial begin
    alu_test();
  end
  
  initial begin
    $dumpfile("alu.vcd");
    $dumpvars;
  end
endmodule
