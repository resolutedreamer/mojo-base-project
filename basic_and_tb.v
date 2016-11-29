`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:00:49 11/28/2016
// Design Name:   basic_and
// Module Name:   T:/Git/mojo-base-project/basic_and_tb.v
// Project Name:  Mojo-Base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: basic_and
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module basic_and_tb();

	// Inputs
	reg [3:0] a, b;
   
	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	basic_and #(.WIDTH(4)) DUT (
    .a(a),
    .b(b),
    .out(out)
   );
  
	initial begin
    a = 4'b0000;
    b = 4'b0000;
    #20
    a = 4'b1111;
    b = 4'b0101;
    #20
    a = 4'b1100;
    b = 4'b1111;
    #20
    a = 4'b1100;
    b = 4'b0011;
    #20
    a = 4'b1100;
    b = 4'b1010;
    #20
    $finish;
  end
      
endmodule

