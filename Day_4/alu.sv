module alu(in_a, in_b, sel, out);
  parameter width = 8;
  input logic [width-1:0] in_a, in_b;
  input logic [2:0] sel;
  output logic [width-1:0] out;
  
  typedef enum logic [2:0] {
    ADD = 3'b000, //Addition
    SUB = 3'b001, //Subtraction
    AND = 3'b010, //Bitwise Logical AND
    OR  = 3'b011, //Bitwise Logical OR
    XOR = 3'b100, //Bitwise Logical XOR
    MUL = 3'b101, //Multiplication
    SR  = 3'b110, //Shift right by 1
    SL  = 3'b111  //Shift left by 1
  } alu_op;
  
  always_comb begin
    case(sel)
      ADD: out = in_a + in_b;
      SUB: out = in_a - in_b;
      AND: out = in_a & in_b;
      OR : out = in_a | in_b;
      XOR: out = in_a ^ in_b;
      MUL: out = in_a * in_b;
      SR : out = in_a >> 1;
      SL : out = in_a << 1;
      default: out = '0;
    endcase
  end
endmodule
