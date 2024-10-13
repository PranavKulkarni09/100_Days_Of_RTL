module grayTobinary(gr, bin);
  input [3:0] gr;
  output logic [3:0] bin;
  assign bin[3] = gr[3];
  assign bin[2] = bin[3] ^ gr[2];
  assign bin[1] = bin[2] ^ gr[1];
  assign bin[0] = bin[1] ^ gr[0];
endmodule
