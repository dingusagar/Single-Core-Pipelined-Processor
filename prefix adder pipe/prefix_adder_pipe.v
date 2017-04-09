module BLACK (gl,al,gr,gout);
	input gl,al,gr;
	output gout;
 assign gout=gl|(al&gr);
 
endmodule //BLACK 

module WHITE (gl,al,gr,ar,gout,aout);
	input gl,al,gr,ar;
	output gout,aout;
	assign gout=gl|(al&gr);
	assign aout=al&ar;
endmodule//WHITE 

module prefixadder(A,B,cin,sum,cout,clock);
	input [31:0]A,B;
	input cin,clock;
	output[31:0]sum;
	output cout;
	wire [31:0]g,a,p;
	wire [130:0]w;
    wire [252:0]d;
    wire[31:0]k,h,i,j;
	assign g=A&B;
	assign p=A^B;
	assign a=p|g;
	BLACK  b1(g[0],a[0],cin,w[0]);
    DFF d1(w[0],clock,d[0]);
	WHITE  w1(g[2],a[2],g[1],a[1],w[1],w[2]);
    DFF d2(w[1],clock,d[1]);
    DFF d3(w[2],clock,d[2]);
	WHITE  w2(g[4],a[4],g[3],a[3],w[3],w[4]);
    DFF d4(w[3],clock,d[3]);
    DFF d5(w[4],clock,d[4]);
    WHITE  w3(g[6],a[6],g[5],a[5],w[5],w[6]);
    DFF d6(w[5],clock,d[5]);
    DFF d7(w[6],clock,d[6]);
    
    DFF d156(g[1],clock,d[155]);
    DFF d157(a[1],clock,d[156]);
	BLACK  b2(d[155],d[156],d[0],w[7]);
    DFF d8(w[7],clock,d[7]);

    
    BLACK  b3(d[1],d[2],d[0],w[8]);
    DFF d9(w[8],clock,d[8]);
    
    DFF d158(g[5],clock,d[157]);
    DFF d159(a[5],clock,d[158]);
    WHITE  w4(d[157],d[158],d[3],d[4],w[9],w[10]);
    DFF d10(w[9],clock,d[9]);
    DFF d11(w[10],clock,d[10]);
    WHITE  w5(d[5],d[6],d[3],d[4],w[11],w[12]);
    DFF d12(w[11],clock,d[11]);
    DFF d13(w[12],clock,d[12]);
    
    DFF d160(g[3],clock,d[159]);
    DFF d161(a[3],clock,d[160]);
    DFF d162(d[159],clock,d[161]);
    DFF d163(d[160],clock,d[162]);
    BLACK  b4(d[161],d[162],d[8],w[13]);
    DFF d14(w[13],clock,d[13]);
    
    DFF d208(d[3],clock,d[207]);
    DFF d209(d[4],clock,d[208]);
    BLACK  b5(d[207],d[208],d[8],w[14]);
    DFF d15(w[14],clock,d[14]);
    
    BLACK  b6(d[9],d[10],d[8],w[15]);
    DFF d16(w[15],clock,d[15]);
	BLACK  b7(d[11],d[12],w[8],w[16]);
    DFF d17(w[16],clock,d[16]);
    
    WHITE  w6(g[8],a[8],g[7],a[7],w[17],w[18]);
    DFF d18(w[17],clock,d[17]);
    DFF d19(w[18],clock,d[18]);
    WHITE  w7(g[10],a[10],g[9],a[9],w[19],w[20]);
    DFF d20(w[19],clock,d[19]);
    DFF d21(w[20],clock,d[20]);
    
    WHITE  w8(g[12],a[12],g[11],a[11],w[21],w[22]);
    DFF d22(w[21],clock,d[21]);
    DFF d23(w[22],clock,d[22]);

    WHITE  w9(g[14],a[14],g[13],a[13],w[23],w[24]);
    DFF d24(w[23],clock,d[23]);
    DFF d25(w[24],clock,d[24]);

    WHITE  w10(g[16],a[16],g[15],a[15],w[25],w[26]);
    DFF d26(w[25],clock,d[25]);
    DFF d27(w[26],clock,d[26]);

    WHITE  w11(g[18],a[18],g[17],a[17],w[27],w[28]);
    DFF d28(w[27],clock,d[27]);
    DFF d29(w[28],clock,d[28]);

    WHITE  w12(g[20],a[20],g[19],a[19],w[29],w[30]);
    DFF d30(w[29],clock,d[29]);
    DFF d31(w[30],clock,d[30]);

    WHITE  w13(g[22],a[22],g[21],a[21],w[31],w[32]);
    DFF d32(w[31],clock,d[31]);
    DFF d33(w[32],clock,d[32]);

    WHITE  w14(g[24],a[24],g[23],a[23],w[33],w[34]);
    DFF d34(w[33],clock,d[33]);
    DFF d35(w[34],clock,d[34]);

    WHITE  w15(g[26],a[26],g[25],a[25],w[35],w[36]);
    DFF d36(w[35],clock,d[35]);
    DFF d37(w[36],clock,d[36]);

    WHITE  w16(g[28],a[28],g[27],a[27],w[37],w[38]);
    DFF d38(w[37],clock,d[37]);
    DFF d39(w[38],clock,d[38]);

    WHITE  w17(g[30],a[30],g[29],a[29],w[39],w[40]);
    DFF d40(w[39],clock,d[39]);
    DFF d41(w[40],clock,d[40]);
    //level 2
    
    DFF d164(g[9],clock,d[163]);
    DFF d165(a[9],clock,d[164]);
    WHITE  w18(d[163],d[164],d[17],d[18],w[41],w[42]);
    DFF d42(w[41],clock,d[41]);
    DFF d43(w[42],clock,d[42]);
    
    WHITE  w19(d[19],d[20],d[17],d[18],w[43],w[44]);
    DFF d44(w[43],clock,d[43]);
    DFF d45(w[44],clock,d[44]);
    
    DFF d166(g[13],clock,d[165]);
    DFF d167(a[13],clock,d[166]);
    WHITE  w20(d[165],d[166],d[21],d[22],w[45],w[46]);
    DFF d46(w[45],clock,d[45]);
    DFF d47(w[46],clock,d[46]);

    WHITE  w21(d[23],d[24],d[21],d[22],w[47],w[48]);
    DFF d48(w[47],clock,d[47]);
    DFF d49(w[48],clock,d[48]);

    DFF d168(g[17],clock,d[167]);
    DFF d169(a[17],clock,d[168]);
    WHITE  w22(d[167],d[168],d[25],d[26],w[49],w[50]);
    DFF d50(w[49],clock,d[49]);
    DFF d51(w[50],clock,d[50]);

    WHITE  w23(d[27],d[28],d[25],d[26],w[51],w[52]);
    DFF d52(w[51],clock,d[51]);
    DFF d53(w[52],clock,d[52]);

    DFF d170(g[21],clock,d[169]);
    DFF d171(a[21],clock,d[170]);
    WHITE  w24(d[169],d[170],d[29],d[30],w[53],w[54]);
    DFF d54(w[53],clock,d[53]);
    DFF d55(w[54],clock,d[54]);


    WHITE  w25(d[31],d[32],d[29],d[30],w[55],w[56]);
    DFF d56(w[55],clock,d[55]);
    DFF d57(w[56],clock,d[56]);
    
    DFF d172(g[25],clock,d[171]);
    DFF d173(a[25],clock,d[172]);
    WHITE  w26(d[171],d[172],d[33],d[34],w[57],w[58]);
    DFF d58(w[57],clock,d[57]);
    DFF d59(w[58],clock,d[58]);

    WHITE  w27(d[35],d[36],d[33],d[34],w[59],w[60]);
    DFF d60(w[59],clock,d[59]);
    DFF d61(w[60],clock,d[60]);

    DFF d174(g[29],clock,d[173]);
    DFF d175(a[29],clock,d[174]);
    WHITE  w28(d[173],d[174],d[37],d[38],w[61],w[62]);
    DFF d62(w[61],clock,d[61]);
    DFF d63(w[62],clock,d[62]);

    WHITE  w29(d[39],d[40],d[37],d[38],w[63],w[64]);
    DFF d64(w[63],clock,d[63]);
    DFF d65(w[64],clock,d[64]);

    //level 3
    
    DFF d176(g[11],clock,d[175]);
    DFF d177(a[11],clock,d[176]);

    DFF d178(d[175],clock,d[177]);
    DFF d179(d[176],clock,d[178]);
    WHITE  w30(d[177],d[178],d[43],d[44],w[65],w[66]);
    DFF d66(w[65],clock,d[65]);
    DFF d67(w[66],clock,d[66]);

    DFF d210(d[21],clock,d[209]);
    DFF d211(d[21],clock,d[210]);


    WHITE  w31(d[209],d[210],d[43],d[44],w[67],w[68]);
    DFF d68(w[67],clock,d[67]);
    DFF d69(w[68],clock,d[68]);

    WHITE  w32(d[45],d[46],d[43],d[44],w[69],w[70]);
    DFF d70(w[69],clock,d[69]);
    DFF d71(w[70],clock,d[70]);

    WHITE  w33(d[47],d[48],d[43],d[44],w[71],w[72]);
    DFF d72(w[71],clock,d[71]);
    DFF d73(w[72],clock,d[72]);
    
    DFF d180(g[19],clock,d[179]);
    DFF d181(a[19],clock,d[180]);
    
    DFF d182(d[179],clock,d[181]);
    DFF d183(d[180],clock,d[182]);
    WHITE  w34(d[181],d[182],d[51],d[52],w[73],w[74]);
    DFF d74(w[73],clock,d[73]);
    DFF d75(w[74],clock,d[74]);

     DFF d212(d[29],clock,d[211]);
     DFF d213(d[30],clock,d[212]);

    WHITE  w35(d[211],d[212],d[51],d[52],w[75],w[76]);
    DFF d76(w[75],clock,d[75]);
    DFF d77(w[76],clock,d[76]);

    WHITE  w36(d[53],d[54],d[51],d[52],w[77],w[78]);
    DFF d78(w[77],clock,d[77]);
    DFF d79(w[78],clock,d[78]);

    WHITE  w37(d[55],d[56],d[51],d[52],w[79],w[80]);
    DFF d80(w[79],clock,d[79]);
    DFF d81(w[80],clock,d[80]);
    
    DFF d184(g[27],clock,d[183]);
    DFF d185(a[27],clock,d[184]);

    DFF d186(d[183],clock,d[184]);
    DFF d187(d[184],clock,d[186]);
    WHITE  w38(d[184],d[186],d[59],d[60],w[81],w[82]);
    DFF d82(w[81],clock,d[81]);
    DFF d83(w[82],clock,d[82]);

    DFF d214(d[37],clock,d[213]);
    DFF d215(d[38],clock,d[214]);

    WHITE  w39(d[213],d[214],d[59],d[60],w[83],w[84]);
    DFF d84(w[83],clock,d[83]);
    DFF d85(w[84],clock,d[84]);

    WHITE  w40(d[61],d[62],d[59],d[60],w[85],w[86]);
    DFF d86(w[85],clock,d[85]);
    DFF d87(w[86],clock,d[86]);

    WHITE  w41(d[63],d[64],d[59],d[60],w[87],w[88]);
    DFF d88(w[87],clock,d[87]);
    DFF d89(w[88],clock,d[88]);

    //level 4
    DFF d188(g[7],clock,d[187]);
    DFF d189(a[7],clock,d[188]);
    
    DFF d190(d[187],clock,d[189]);
    DFF d191(d[188],clock,d[190]);

    DFF d192(d[189],clock,d[191]);
    DFF d193(d[190],clock,d[192]);
    BLACK  b8(d[191],d[192],d[16],w[89]);
    DFF d90(w[89],clock,d[89]);
    
    DFF d216(d[17],clock,d[215]);
    DFF d217(d[18],clock,d[216]);

    DFF d218(d[215],clock,d[217]);
    DFF d219(d[216],clock,d[218]);
    BLACK  b9(d[217],d[218],d[16],w[90]);
    DFF d91(w[90],clock,d[90]);
     
    DFF d220(d[41],clock,d[219]);
    DFF d221(d[42],clock,d[220]);
    BLACK  b10(d[219],d[220],d[16],w[91]);
    DFF d92(w[91],clock,d[91]);
    
    DFF d222(d[43],clock,d[221]);
    DFF d223(d[44],clock,d[222]);
    BLACK  b11(d[221],d[222],d[16],w[92]);
    DFF d93(w[92],clock,d[92]);

    BLACK  b12(d[65],d[66],d[16],w[93]);
    DFF d94(w[93],clock,d[93]);

    BLACK  b13(d[67],d[68],d[16],w[94]);
    DFF d95(w[94],clock,d[94]);

    BLACK  b14(d[69],d[70],d[16],w[95]);
    DFF d96(w[95],clock,d[95]);

    BLACK  b15(d[71],d[72],d[16],w[96]);
    DFF d97(w[96],clock,d[96]);
    
    DFF d194(g[23],clock,d[193]);
    DFF d195(a[23],clock,d[194]);

    DFF d196(d[193],clock,d[195]);
    DFF d197(d[194],clock,d[196]);

    DFF d198(d[195],clock,d[197]);
    DFF d199(d[196],clock,d[198]);
    WHITE  w42(d[197],d[198],d[79],d[80],w[97],w[98]);
    DFF d98(w[97],clock,d[97]);
    DFF d99(w[98],clock,d[98]);
   
    DFF d224(d[33],clock,d[223]);
    DFF d225(d[34],clock,d[224]);

    DFF d226(d[223],clock,d[224]);
    DFF d227(d[224],clock,d[226]);
    WHITE  w43(d[33],d[34],d[79],d[80],w[99],w[100]);
    DFF d100(w[99],clock,d[99]);
    DFF d101(w[100],clock,d[100]);
    
    DFF d228(d[57],clock,d[227]);
    DFF d229(d[58],clock,d[228]);
    WHITE  w44(d[227],d[228],d[79],d[80],w[101],w[102]);
    DFF d102(w[101],clock,d[101]);
    DFF d103(w[102],clock,d[102]);
    
    DFF d230(d[59],clock,d[229]);
    DFF d231(d[60],clock,d[230]);
    WHITE  w45(d[229],d[230],d[79],d[80],w[103],w[104]);
    DFF d104(w[103],clock,d[103]);
    DFF d105(w[104],clock,d[104]);
    
    WHITE  w46(d[81],d[82],d[79],d[80],w[105],w[106]);
    DFF d106(w[105],clock,d[105]);
    DFF d107(w[106],clock,d[106]);

    WHITE  w47(d[83],d[84],d[79],d[80],w[107],w[108]);
    DFF d108(w[107],clock,d[107]);
    DFF d109(w[108],clock,d[108]);
    WHITE  w48(d[85],d[86],d[79],d[80],w[109],w[110]);
    DFF d110(w[109],clock,d[109]);
    DFF d111(w[110],clock,d[110]);
    WHITE  w49(d[87],d[88],d[79],d[80],w[111],w[112]);
    DFF d112(w[111],clock,d[111]);
    DFF d113(w[112],clock,d[112]);
    //level 5
    DFF d200(g[13],clock,d[199]);
    DFF d201(a[13],clock,d[200]);
    
    DFF d202(d[199],clock,d[201]);
    DFF d203(d[200],clock,d[202]);
   
    DFF d204(d[201],clock,d[203]);
    DFF d205(d[202],clock,d[204]);
    
    DFF d206(d[203],clock,d[205]);
    DFF d207(d[204],clock,d[206]);
    BLACK  b16(d[205],d[206],d[96],w[113]);
    

    DFF d232(d[25],clock,d[231]);
    DFF d233(d[26],clock,d[232]);

    DFF d234(d[231],clock,d[233]);
    DFF d235(d[232],clock,d[234]);
    
    DFF d236(d[233],clock,d[235]);
    DFF d237(d[234],clock,d[236]);
    BLACK  b17(d[235],d[236],d[96],w[114]);
     
    DFF d238(d[49],clock,d[237]);
    DFF d239(d[50],clock,d[238]);

    DFF d240(d[237],clock,d[239]);
    DFF d241(d[238],clock,d[240]);
    BLACK  b18(d[239],d[240],d[96],w[115]);
     

    DFF d242(d[51],clock,d[241]);
    DFF d243(d[52],clock,d[242]);

    DFF d244(d[241],clock,d[243]);
    DFF d245(d[242],clock,d[244]);
    BLACK  b19(d[243],d[244],d[96],w[116]);
     

    DFF d246(d[73],clock,d[245]);
    DFF d247(d[74],clock,d[246]);
    BLACK  b20(d[245],d[246],d[96],w[117]);
     
    
    DFF d248(d[75],clock,d[247]);
    DFF d249(d[76],clock,d[248]);
    BLACK  b21(d[247],d[248],d[96],w[118]);
     

    DFF d250(d[77],clock,d[249]);
    DFF d251(d[78],clock,d[250]);
    BLACK  b22(d[77],d[78],d[96],w[119]);
     

    DFF d252(d[79],clock,d[251]);
    DFF d253(d[80],clock,d[252]);
    BLACK  b23(d[251],d[252],d[96],w[120]);
     
    BLACK  b24(d[97],d[98],d[96],w[121]);
     
    BLACK  b25(d[99],d[100],d[96],w[122]);
     
    BLACK  b26(d[101],d[102],d[96],w[123]);
     
    BLACK  b27(d[103],d[104],d[96],w[124]);
     
    BLACK  b28(d[105],d[106],d[96],w[125]);
        
    BLACK  b29(d[107],d[108],d[96],w[126]);
    
    BLACK  b30(d[109],d[110],d[96],w[127]);
     
    BLACK  b31(d[111],d[112],d[96],w[128]);
     
    
    DFF d140(cin,clock,d[139]);
    DFF d141(d[139],clock,d[140]);
    DFF d142(d[140],clock,d[141]);
    DFF d143(d[141],clock,d[142]);
     

    Df e1(p,clock,k);
    Df e2(k,clock,h);
    Df e3(h,clock,i);
    Df e4(i,clock,j);
    assign sum[0]=j[0]^d[142];
    
    DFF d145(d[0],clock,d[144]);
    DFF d146(d[144],clock,d[145]);
    DFF d147(d[145],clock,d[146]);


    assign sum[1]=j[1]^d[146];
    
    DFF d148(d[7],clock,d[147]);
    DFF d149(d[147],clock,d[148]);
    assign sum[2]=j[2]^d[148];
    
    DFF d150(d[8],clock,d[149]);
    DFF d151(d[149],clock,d[150]); 
    assign sum[3]=j[3]^d[150];
	
    DFF d152(d[13],clock,d[151]);
    assign sum[4]=j[4]^d[151];

    DFF d153(d[14],clock,d[152]);
	assign sum[5]=j[5]^d[152];

    DFF d154(d[15],clock,d[153]);
	assign sum[6]=j[6]^d[153];

    DFF d155(d[16],clock,d[154]);
	assign sum[7]=j[7]^d[154];
    
     
	assign sum[8]=j[8]^d[89];
	assign sum[9]=j[9]^d[90];
	assign sum[10]=j[10]^d[91];
	assign sum[11]=j[11]^d[92];
	assign sum[12]=j[12]^d[93];
	assign sum[13]=j[13]^d[94];
	assign sum[14]=j[14]^d[95];
	assign sum[15]=j[15]^d[96];
	assign sum[16]=j[16]^w[113];
	assign sum[17]=j[17]^w[114];
	assign sum[18]=j[18]^w[115];
	assign sum[19]=j[19]^w[116];
	assign sum[20]=j[20]^w[117];
	assign sum[21]=j[21]^w[118];
	assign sum[22]=j[22]^w[119];
	assign sum[23]=j[23]^w[120];
	assign sum[24]=j[24]^w[121];
	assign sum[25]=j[25]^w[122];
	assign sum[26]=j[26]^w[123];
	assign sum[27]=j[27]^w[124];
	assign sum[28]=j[28]^w[125];
	assign sum[29]=j[29]^w[126];
	assign sum[30]=j[30]^w[127];
	assign sum[31]=j[31]^w[128];
    
    DFF d130(g[31],clock,d[129]);
    DFF d131(a[31],clock,d[130]);
    
    DFF d132(d[129],clock,d[131]);
    DFF d133(d[130],clock,d[132]);
    
    DFF d134(d[131],clock,d[133]);
    DFF d135(d[132],clock,d[134]);
    
    DFF d136(d[133],clock,d[135]);
    DFF d137(d[134],clock,d[136]);
    

	BLACK  b32(d[135],d[136],w[128],w[129]);
	assign cout=w[129]; 

endmodule



    





