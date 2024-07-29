`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 28.07.2024 21:02:49
// Design Name:
// Module Name: top
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module top(
    input [3:0]a,
    input [3:0]b,
    input [1:0]sel,
    output  reg [3:0]res,
    output reg overflow
    );
    always @(*)begin
    overflow<=0;
    case(sel)
        2'b00: {overflow,res}=a+b;
        2'b01: res=a-b;
        2'b10: res=a*b;
        2'b11: res=a/b;
        default: $display("invalid");
    endcase
   
   end    
endmodule