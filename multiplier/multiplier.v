module dff1(d,clk,q);
input [63:0]d;
input clk;
output reg [63:0]q;

always @ (posedge clk)
begin
q <= d;
end
endmodule

module csa(a,b,c,sum,carry);
input  [62:0]a,b,c;
output [63:0]sum,carry;
assign sum[62:0]=a^b^c;
assign carry[63:1]= (a&b) | (b&c) | (c&a);
assign carry[0]=0;
assign sum[63]=0;
endmodule

module AND (a,b,c);
input [31:0]a;
input b;
output [31:0]c;
assign c[0]=a[0]&b;
assign c[1]=a[1]&b;
assign c[2]=a[2]&b;
assign c[3]=a[3]&b;
assign c[4]=a[4]&b;
assign c[5]=a[5]&b;
assign c[6]=a[6]&b;
assign c[7]=a[7]&b;
assign c[8]=a[8]&b;
assign c[9]=a[9]&b;
assign c[10]=a[10]&b;
assign c[11]=a[11]&b;
assign c[12]=a[12]&b;
assign c[13]=a[13]&b;
assign c[14]=a[14]&b;
assign c[15]=a[15]&b;
assign c[16]=a[16]&b;
assign c[17]=a[17]&b;
assign c[18]=a[18]&b;
assign c[19]=a[19]&b;
assign c[20]=a[20]&b;
assign c[21]=a[21]&b;
assign c[22]=a[22]&b;
assign c[23]=a[23]&b;
assign c[24]=a[24]&b;
assign c[25]=a[25]&b;
assign c[26]=a[26]&b;
assign c[27]=a[27]&b;
assign c[28]=a[28]&b;
assign c[29]=a[29]&b;
assign c[30]=a[30]&b;
assign c[31]=a[31]&b;
endmodule


module multiplier(a,b,out,clk);
input [31:0] a,b;
input clk;
output [63:0]out;
wire [31:0]x[31:0];
wire [62:0]p[31:0];

AND a1(a,b[0],x[0]);
AND a2(a,b[1],x[1]);
AND a3(a,b[2],x[2]);
AND a4(a,b[3],x[3]);
AND a5(a,b[4],x[4]);
AND a6(a,b[5],x[5]);
AND a7(a,b[6],x[6]);
AND a8(a,b[7],x[7]);
AND a9(a,b[8],x[8]);
AND a10(a,b[9],x[9]);
AND a11(a,b[10],x[10]);
AND a12(a,b[11],x[11]);
AND a13(a,b[12],x[12]);
AND a14(a,b[13],x[13]);
AND a15(a,b[14],x[14]);
AND a16(a,b[15],x[15]);
AND a17(a,b[16],x[16]);
AND a18(a,b[17],x[17]);
AND a19(a,b[18],x[18]);
AND a20(a,b[19],x[19]);
AND a21(a,b[20],x[20]);
AND a22(a,b[21],x[21]);
AND a23(a,b[22],x[22]);
AND a24(a,b[23],x[23]);
AND a25(a,b[24],x[24]);
AND a26(a,b[25],x[25]);
AND a27(a,b[26],x[26]);
AND a28(a,b[27],x[27]);
AND a29(a,b[28],x[28]);
AND a30(a,b[29],x[29]);
AND a31(a,b[30],x[30]);
AND a32(a,b[31],x[31]);

assign p[0][31:0]=x[0];
assign p[1][32:1]=x[1];
assign p[2][33:2]=x[2];
assign p[3][34:3]=x[3];
assign p[4][35:4]=x[4];
assign p[5][36:5]=x[5];
assign p[6][37:6]=x[6];
assign p[7][38:7]=x[7];
assign p[8][39:8]=x[8];
assign p[9][40:9]=x[9];
assign p[10][41:10]=x[10];
assign p[11][42:11]=x[11];
assign p[12][43:12]=x[12];
assign p[13][44:13]=x[13];
assign p[14][45:14]=x[14];
assign p[15][46:15]=x[15];
assign p[16][47:16]=x[16];
assign p[17][48:17]=x[17];
assign p[18][49:18]=x[18];
assign p[19][50:19]=x[19];
assign p[20][51:20]=x[20];
assign p[21][52:21]=x[21];
assign p[22][53:22]=x[22];
assign p[23][54:23]=x[23];
assign p[24][55:24]=x[24];
assign p[25][56:25]=x[25];
assign p[26][57:26]=x[26];
assign p[27][58:27]=x[27];
assign p[28][59:28]=x[28];
assign p[29][60:29]=x[29];
assign p[30][61:30]=x[30];
assign p[31][62:31]=x[31];

assign p[0][62:32]=0;
assign p[1][62:33]=0;
assign p[2][62:34]=0;
assign p[3][62:35]=0;
assign p[4][62:36]=0;
assign p[5][62:37]=0;
assign p[6][62:38]=0;
assign p[7][62:39]=0;
assign p[8][62:40]=0;
assign p[9][62:41]=0;
assign p[10][62:42]=0;
assign p[11][62:43]=0;
assign p[12][62:44]=0;
assign p[13][62:45]=0;
assign p[14][62:46]=0;
assign p[15][62:47]=0;
assign p[16][62:48]=0;
assign p[17][62:49]=0;
assign p[18][62:50]=0;
assign p[19][62:51]=0;
assign p[20][62:52]=0;
assign p[21][62:53]=0;
assign p[22][62:54]=0;
assign p[23][62:55]=0;
assign p[24][62:56]=0;
assign p[25][62:57]=0;
assign p[26][62:58]=0;
assign p[27][62:59]=0;
assign p[28][62:60]=0;
assign p[29][62:61]=0;
assign p[30][62:62]=0;


assign p[1][0:0]=0;
assign p[2][1:0]=0;
assign p[3][2:0]=0;
assign p[4][3:0]=0;
assign p[5][4:0]=0;
assign p[6][5:0]=0;
assign p[7][6:0]=0;
assign p[8][7:0]=0;
assign p[9][8:0]=0;
assign p[10][9:0]=0;
assign p[11][10:0]=0;
assign p[12][11:0]=0;
assign p[13][12:0]=0;
assign p[14][13:0]=0;
assign p[15][14:0]=0;
assign p[16][15:0]=0;
assign p[17][16:0]=0;
assign p[18][17:0]=0;
assign p[19][18:0]=0;
assign p[20][19:0]=0;
assign p[21][20:0]=0;
assign p[22][21:0]=0;
assign p[23][22:0]=0;
assign p[24][23:0]=0;
assign p[25][24:0]=0;
assign p[26][25:0]=0;
assign p[27][26:0]=0;
assign p[28][27:0]=0;
assign p[29][28:0]=0;
assign p[30][29:0]=0;
assign p[31][30:0]=0;

wire [63:0] p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22;
wire [63:0] pp1,pp2,pp3,pp4,pp5,pp6,pp7,pp8,pp9,pp10,pp11,pp12,pp13,pp14,pp15,pp16,pp17,pp18,pp19,pp20,pp21
,pp22;
csa c1(p[0],p[1],p[2],p1,p2);
csa c2(p[3],p[4],p[5],p3,p4);
csa c3(p[6],p[7],p[8],p5,p6);
csa c4(p[9],p[10],p[11],p7,p8); 
csa c5(p[12],p[13],p[14],p9,p10);
csa c6(p[15],p[16],p[17],p11,p12);
csa c7(p[18],p[19],p[20],p13,p14);
csa c8(p[21],p[22],p[23],p15,p16); 
csa c9(p[24],p[25],p[26],p17,p18);
csa c10(p[27],p[28],p[29],p19,p20);
 
 assign p21[62:0]=p[30];
 assign p22[62:0]=p[31];
 assign p21[63]=0;
 assign p22[63]=0;
 
 dff1   mb1(p1,clk,pp1);
  dff1 mb2(p2,clk,pp2);
  dff1 mb3(p3,clk,pp3);
  dff1 mb4(p4,clk,pp4);
   dff1 mb5(p5,clk,pp5);
  dff1 mb6(p6,clk,pp6);
   dff1 mb7(p7,clk,pp7);
  dff1 mb8(p8,clk,pp8);
   dff1 mb9(p9,clk,pp9);
  dff1 mb10(p10,clk,pp10);
  dff1 mb11(p11,clk,pp11);
  dff1 mb12(p12,clk,pp12);
  dff1 mb13(p13,clk,pp13);
  dff1 mb15(p14,clk,pp14);
   dff1 mb16(p15,clk,pp15);
  dff1 mb17(p16,clk,pp16);
   dff1 mb18(p17,clk,pp17);
  dff1 mb19(p18,clk,pp18);
   dff1 mb20(p19,clk,pp19);
  dff1  mb21(p20,clk,pp20);
  dff1 mb22(p21,clk,pp21);
   dff1 mb23(p22,clk,pp22);
 
 
 wire [63:0] q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15;
 wire [63:0] qq1,qq2,qq3,qq4,qq5,qq6,qq7,qq8,qq9,qq10,qq11,qq12,qq13,qq14,qq15;
 csa c11(pp1[62:0],pp2[62:0],pp3[62:0],q1,q2);
  csa c12(pp4[62:0],pp5[62:0],pp6[62:0],q3,q4);
 csa c13(pp7[62:0],pp8[62:0],pp9[62:0],q5,q6);
  csa c14(pp10[62:0],pp11[62:0],pp12[62:0],q7,q8);
 csa c15(pp13[62:0],pp14[62:0],pp15[62:0],q9,q10);
  csa c16(pp16[62:0],pp17[62:0],pp18[62:0],q11,q12);
 csa c17(pp19[62:0],pp20[62:0],pp21[62:0],q13,q14);
 
 assign q15=pp22;
 
 
 dff1  dft1(q1,clk,qq1);
 dff1  dft12(q2,clk,qq2);
  dff1 dft13(q3,clk,qq3);
 dff1 dft14(q4,clk,qq4);
  
 dff1 dft15(q5,clk,qq5);
 dff1 dft16(q6,clk,qq6);
  dff1 dft17(q7,clk,qq7);
 dff1 dft18(q8,clk,qq8);
  dff1 dft19(q9,clk,qq9);
 dff1 dft111(q10,clk,qq10);
  dff1 dft112(q11,clk,qq11);
 dff1 dft113(q12,clk,qq12);
  
 dff1 dft114(q13,clk,qq13);
 dff1 dft115(q14,clk,qq14);
  dff1 dft116(q15,clk,qq15);


wire [63:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
wire [63:0] ww1,ww2,ww3,ww4,ww5,ww6,ww7,ww8,ww9,ww10;

csa d11(qq1[62:0],qq2[62:0],qq3[62:0],w1,w2);
csa d12(qq4[62:0],qq5[62:0],qq6[62:0],w3,w4);
csa d13(qq7[62:0],qq8[62:0],qq9[62:0],w5,w6);
csa d14(qq10[62:0],qq11[62:0],qq12[62:0],w7,w8);
  assign w9=qq13;
    assign w10=qq14;
	
	    dff1   sd1(w1,clk,ww1);
		dff1 sd2(w2,clk,ww2);
		dff1 sd3(w3,clk,ww3);
		dff1 sd4(w4,clk,ww4);
	    dff1  sd5(w5,clk,ww5);
		dff1  sd6(w6,clk,ww6);
		dff1  sd7(w7,clk,ww7);
		dff1  sd8(w8,clk,ww8);
	    dff1  sd9(w9,clk,ww9);
		dff1  sd10(w10,clk,ww10);
	
	
	wire [63:0] l1,l2,l3,l4,l5,l6,l7;
		
	wire [63:0] ll1,ll2,ll3,ll4,ll5,ll6,ll7;
	csa paa1(ww1[62:0],ww2[62:0],ww3[62:0],l1,l2);
	csa paa2(ww4[62:0],ww5[62:0],ww6[62:0],l3,l4);
	csa paa3(ww7[62:0],ww8[62:0],ww9[62:0],l5,l6);
	    assign l7=ww10;
		
		dff1  f1(l1,clk,ll1);
		dff1 f2(l2,clk,ll2);	
		dff1  f3(l3,clk,ll3);
		dff1  f4(l4,clk,ll4);
		dff1   f5(l5,clk,ll5);
		dff1   nnnvnvnnvnvnvnv(l6,clk,ll6);	
		dff1   f6(l7,clk,ll7);
		
		
	wire [63:0] m1,m2,m3,m4,m5;
		
	wire [63:0] mm1,mm2,mm3,mm4,mm5;
	csa dd1(ll1[62:0],ll2[62:0],ll3[62:0],m1,m2);
	csa dd2(ll4[62:0],ll5[62:0],ll6[62:0],m3,m4);
	  assign m5=ll7;
	  
	  
	   dff1 llkkkk(m1,clk,mm1);
	   dff1    llolo7(m2,clk,mm2);
	   dff1  lopo9(m3,clk,mm3);
	   dff1   a253(m4,clk,mm4);
	   dff1   rtrttr45(m5,clk,mm5);
	  
	  
	  wire[63:0] b1,b2,b3,b4;
	  wire[63:0] bb1,bb2,bb3,bb4;
	  csa kk1(mm1[62:0],mm2[62:0],mm3[62:0], b1,b2);
	  assign b3=mm4;
	  assign b4=mm5;
		  
	  dff1 k1111(b1,clk,bb1);
	  dff1 k987(b2,clk,bb2);
	  dff1 k222(b3,clk,bb3);
	  dff1 k3421(b4,clk,bb4);
		  
		  
	  wire [63:0] s1,s2,s3;
	  wire [63:0] ss1,ss2,ss3;
	  csa ddff1(bb1[62:0],bb2[62:0],bb3[62:0],s1,s2);
	  assign s3=bb4;
	  dff1 nmnm(s1,clk,ss1);
	  dff1 n2nm(s2,clk,ss2);
	  dff1 n3nm(s3,clk,ss3);
	  
	  
	
	  wire [63:0] v1,v2;
	  wire [63:0] vv1,vv2;
	  csa v1llll(ss1[62:0],ss2[62:0],ss3[62:0],v1,v2);
	  dff1 sasa(v1,clk,vv1);
	  dff1 sas9a(v2,clk,vv2);
	  
	  wire [63:0] mult;
	  
	  prefixadder pll1(vv1[31:0],vv2[31:0],0,mult[31:0],cout,clk);
	  prefixadder pzzz2(vv1[63:32],vv2[63:32],cout,mult[63:32],Cout,clk);
	  
	  assign out=mult;
	  
	  endmodule
	