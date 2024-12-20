module priority_encoder #(parameter N = 4)(
  input  [N-1:0] A,       
  output reg [clog2(N)-1:0] Y, 
    output reg valid             
);

    // Function to calculate log2 of input N
    function integer clog2(input integer n);
        integer i;
        begin
            i = 0;
            while (2**i < n)
                i = i + 1;
            clog2 = i;
        end
    endfunction

    integer i;
    always @(*) begin
        valid = 0;
      Y = {clog2(N){1'b0}};
      for (i = N-1; i >= 0; i = i - 1) begin
            if (A[i]) begin
              Y = i[clog2(N)-1:0];
                valid = 1;
                break; // Stop at the highest-priority active input
            end
        end
    end
endmodule
