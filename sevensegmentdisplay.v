`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:57 11/30/2016 
// Design Name: 
// Module Name:    sevensegmentdisplay 
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
module sevensegmentdisplay(
    input [3:0] num_in,
    output [7:0] sevenseg_out
    );

	sevenseg_out[0] = num_in[0] & num_in[1] & num_in[2] & num_in[3];
	sevenseg_out[1] = num_in[0] & num_in[1] & num_in[2] & num_in[3];
	sevenseg_out[2] = num_in[0] & num_in[1] & num_in[2] & num_in[3];
	sevenseg_out[3] = num_in[0] & num_in[1] & num_in[2] & num_in[3];
	sevenseg_out[4] = num_in[0] & num_in[1] & num_in[2] & num_in[3];
	sevenseg_out[5] = num_in[0] & num_in[1] & num_in[2] & num_in[3];
	sevenseg_out[6] = num_in[0] & num_in[1] & num_in[2] & num_in[3];
	sevenseg_out[7] = num_in[0] & num_in[1] & num_in[2] & num_in[3];
	
endmodule
