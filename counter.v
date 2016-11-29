`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:53 11/28/2016 
// Design Name: 
// Module Name:    counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter (
    input clk,
    input rst,
    output reg [7:0] value
  );
   
  reg[24:0] ctr_d, ctr_q;
   
  always @(ctr_q) begin
    ctr_d = ctr_q + 1'b1;
     
    if (ctr_q[24])
		// if the msb is 1, invert the remaining bits for fade-out
      value = ~ctr_q[23:16];
    else
		// else the msb is 0, we are counting up so fade-in
      value = ctr_q[23:16];
     
  end
   
  always @(posedge clk) begin
    if (rst) begin
      ctr_q <= 1'b0;
    end else begin
      ctr_q <= ctr_d;
    end
  end
   
endmodule