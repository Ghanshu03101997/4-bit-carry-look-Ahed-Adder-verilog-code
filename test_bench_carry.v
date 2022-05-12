`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2021 04:13:53 PM
// Design Name: 
// Module Name: Test_bench
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


module Test_bench();
    reg [3:0]a,b;
    reg cin;
    wire [3:0]sum;
    wire cout;
    carry_lookahead F1(sum,cout,a,b,cin);
    initial
    begin
    a=4'b0000; b=4'b0001; cin=0;
   
    
    #6 $finish;
    end
endmodule
