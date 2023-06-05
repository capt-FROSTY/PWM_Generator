`timescale 1ns / 1ps

module PWM_TB();
reg clk = 0;
wire [7:0] pwm;

PWM_GEN pwm0 (clk, pwm);
always #20 clk = ~clk;
endmodule
