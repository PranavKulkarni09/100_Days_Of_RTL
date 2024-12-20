module priority_encoder_tb;
    parameter N = 4;
    reg [N-1:0] A;
    wire [clog2(N)-1:0] Y;
    wire valid;

  priority_encoder #(N) uut (.A(A), .Y(Y), .valid(valid));

    function integer clog2(input integer n);
        integer i;
        begin
            i = 0;
            while (2**i < n)
                i = i + 1;
            clog2 = i;
        end
    endfunction

    initial begin
        $monitor("Time=%0t | A=%b | Y=%b | valid=%b", $time, A, Y, valid);
        A = 4'b0000; #10;
        A = 4'b0001; #10;
        A = 4'b0010; #10;
        A = 4'b0100; #10;
        A = 4'b1000; #10;
        A = 4'b1100; #10;
        $finish;
    end
endmodule
