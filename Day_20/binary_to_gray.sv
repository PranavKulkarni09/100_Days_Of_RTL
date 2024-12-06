module binary_to_gray(b_in, g_out);
  input logic [3:0] b_in;
  output logic [3:0] g_out;
  always_comb begin
    g_out[0] = b_in[1] ^ b_in[0];
    g_out[1] = b_in[1] ^ b_in[2];
    g_out[2] = b_in[2] ^ b_in[3];
    g_out[3] = b_in[3];
  end
endmodule
