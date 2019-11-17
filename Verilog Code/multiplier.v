`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:32 03/22/2019 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(a,b,p,op);
parameter m=8, n=8;
input [m-1:0]a;
input [n-1:0]b;
input p;
wire [m-1:0]c[n-1:0];
output [m+n-1:0]op;
wire [m-2:0]d;
wire [n-2:0]g;
genvar i,j;
generate
	for (i=0; i<n-1;i=i+1)
		begin:loop1
			for(j=0;j<m-1;j=j+1)
			begin:loop2
				and a(c[i][j],a[j],b[i]);
			end
		end
	for (i=0;i<n-1;i=i+1)
		begin:loop7
			and a1(g[i],a[m-1],b[i]);
			xor x1(c[i][m-1],g[i],p);
		end
	for (j=0;j<m-1;j=j+1)
		begin:loop8
			and a2(d[j],a[j],b[n-1]);
			xor x2(c[n-1][j],d[j],p);
		end
	and a3(c[n-1][m-1],a[m-1],b[n-1]);
endgenerate
assign op[0]=c[0][0];
wire [m-2:0]s[n-2:0];
wire [m-2:0]c_o[n-1:0];
generate
for (i=0;i<m-2;i=i+1)
	begin:loop3
		ha h(c[0][i+1],c[1][i],s[0][i],c_o[0][i]);
	end
fa f4(c[0][m-1],c[1][m-2],p,s[0][m-2],c_o[0][m-2]);
endgenerate
assign op[1]=s[0][0];
generate
for (i=2;i<n-1;i=i+1)
	begin:loop4
		for (j=0;j<m-2;j=j+1)
			begin:loop5
				fa f(c[i][j],s[i-2][j+1],c_o[i-2][j],s[i-1][j],c_o[i-1][j]);
			end
		fa f1(c[i][m-2],c[i-1][m-1],c_o[i-2][m-2],s[i-1][m-2],c_o[i-1][m-2]);
		assign op[i]=s[i-1][0];
	end
for (j=0;j<m-2;j=j+1)
	begin:loop9
		fa f(c[i][j],s[i-2][j+1],c_o[i-2][j],s[i-1][j],c_o[i-1][j]);
	end
fa f1(c[i][m-2],c[i-1][m-1],c_o[i-2][m-2],s[i-1][m-2],c_o[i-1][m-2]);
endgenerate
wire t,t1;
generate
ha h2(p,s[n-2][0],op[n-1],t); 
fa h1 (c_o[n-2][0],s[n-2][1],t,op[n],c_o[n-1][0]);
for (j=1;j<m-2;j=j+1)
	begin:loop6
		fa f2(c_o[n-2][j],s[n-2][j+1],c_o[n-1][j-1],op[n+j],c_o[n-1][j]);
	end
fa f3(c_o[n-2][m-2],c[n-1][m-1],c_o[n-1][m-3],op[m+n-2],t1);
xor x5 (op[m+n-1],t1,p);
endgenerate
endmodule
