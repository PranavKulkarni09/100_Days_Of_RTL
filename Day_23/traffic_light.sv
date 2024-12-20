module traffic_light(clk, rst, light_a, light_b);
  input wire clk, rst;
  output reg [2:0] light_a, light_b; //3 bits: 1st bit= Red, 2nd bit = Yellow, 3rd bit = Green
  typedef enum logic [1:0] { A_Green_n_B_Red = 1'b00, A_Yellow_n_B_Red = 2'b01, A_Red_n_B_Green = 2'b10, A_Red_n_B_Yellow = 2'b11 } traffic_state;
  
  traffic_state c_state, n_state;
  logic [3:0] timer; //To hold the signal for a few clock cycles
  
  always_ff @(posedge clk or negedge rst) begin
    if(!rst) begin
      c_state <= A_Green_n_B_Red;
      timer <= 4'd0;
    end
    else if(timer == 4'd9) begin
      c_state <= n_state;
      timer <= 4'd0;
    end
    else begin
      timer <= timer + 4'd1;
    end
  end
  
  always_comb begin
    case(c_state)
      A_Green_n_B_Red :  n_state = A_Yellow_n_B_Red;
      A_Yellow_n_B_Red : n_state = A_Red_n_B_Green;
      A_Red_n_B_Green :  n_state = A_Red_n_B_Yellow;
      A_Red_n_B_Yellow : n_state = A_Green_n_B_Red;
      default :          n_state = A_Green_n_B_Red;
    endcase
  end
  
  always_comb begin
    light_a = 2'b0;
    light_b = 3'b0;
    case(c_state)
      A_Green_n_B_Red : begin
        light_a = 3'b001;
        light_b = 3'b100;
      end
      A_Yellow_n_B_Red : begin
        light_a = 3'b010;
        light_b = 3'b100;
      end
      A_Red_n_B_Green : begin
        light_a = 3'b100;
        light_b = 3'b001;
      end
      A_Red_n_B_Yellow : begin
        light_a = 3'b100;
        light_b = 3'b010;
      end
    endcase
  end
endmodule
