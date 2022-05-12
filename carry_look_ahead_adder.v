`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2021 03:56:01 PM
// Design Name: 
// Module Name: carry_lookahead
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


module carry_lookahead(sum,cout,a,b,cin);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire p0,p1,p2,p3,g0,g1,g2,g3;
wire c4,c3,c2,c1;
assign p0=a[0]^b[0],
       p1=a[1]^b[1],
       p2=a[2]^b[2],
       p3=a[3]^b[3];
       
assign g0=a[0]&b[0],      
       g1=a[1]&b[1],
       g2=a[2]&b[2],
       g3=a[3]&b[3];
       
assign c1=g0|(p0&cin),
       c2=g1|(p1&g0)|(p1&p0&cin),
       c3=g2|(p2&g1)|(p2&p1&g0)|(p2&p1&p0&cin),
       c4=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&cin);
       
 assign sum[0]=p0^cin,
        sum[1]=p1^c1,
        sum[2]=p2^c2,
        sum[3]=p3^c3;
 assign cout=c4;       
       
endmodule
