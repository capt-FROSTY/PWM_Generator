`timescale 1ns / 1ps

module PWM_GEN (
  input wire clk,
  output reg [7:0] pwm // It will generate 8 Signals
);

reg [7:0] duty_cycle = 0;
always@(posedge clk)
  begin 
    if(duty_cycle < 100)
      duty_cycle = duty_cycle + 1;
    else
      duty_cycle = 0;

    pwm [0] = (duty_cycle <= 10) ? 1:0;  // Adjust value for duty cycles
    pwm [1] = (duty_cycle <= 20) ? 1:0; 
    pwm [2] = (duty_cycle <= 30) ? 1:0; 
    pwm [3] = (duty_cycle <= 40) ? 1:0; 
    pwm [4] = (duty_cycle <= 50) ? 1:0; 
    pwm [5] = (duty_cycle <= 60) ? 1:0; 
    pwm [6] = (duty_cycle <= 70) ? 1:0; 
    pwm [7] = (duty_cycle <= 80) ? 1:0; 

end
endmodule
