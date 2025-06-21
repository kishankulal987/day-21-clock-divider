`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2025 20:20:19
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(input clk,reset,output reg clk_out);
reg [25:0]counter=0;
initial clk_out=0;
always @(posedge clk)
begin
if(reset)
begin
clk_out<=0;
counter<=0;
end
else begin
if(counter==25'd25_000_000)
begin
clk_out<=~clk_out;
counter<=0;
end
else counter<=counter+1;
end
end
endmodule



