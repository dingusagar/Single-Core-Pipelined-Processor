module RightShiftRot_32(in,rotate,select,out,clk);
input [31:0]in;
input [4:0]select;
input rotate,clk;
output [31:0]out;
wire [10:0]r,s;
wire [191:0]w;

assign w[0]=0;

//STAGE 1
assign s[4]=select[4];
MUX m001(w[0],in[0],rotate,w[1]);
MUX m002(w[0],in[1],rotate,w[2]);
MUX m003(w[0],in[2],rotate,w[3]);
MUX m004(w[0],in[3],rotate,w[4]);
MUX m005(w[0],in[4],rotate,w[5]);
MUX m006(w[0],in[5],rotate,w[6]);
MUX m007(w[0],in[6],rotate,w[7]);
MUX m008(w[0],in[7],rotate,w[8]);
MUX m009(w[0],in[8],rotate,w[9]);
MUX m010(w[0],in[9],rotate,w[10]);
MUX m011(w[0],in[10],rotate,w[11]);
MUX m012(w[0],in[11],rotate,w[12]);
MUX m013(w[0],in[12],rotate,w[13]);
MUX m014(w[0],in[13],rotate,w[14]);
MUX m015(w[0],in[14],rotate,w[15]);
MUX m016(w[0],in[15],rotate,w[16]);

MUX_DFF MD01(in[0],in[16],s[4],clk,w[17]);
MUX_DFF MD02(in[1],in[17],s[4],clk,w[18]);
MUX_DFF MD03(in[2],in[18],s[4],clk,w[19]);
MUX_DFF MD04(in[3],in[19],s[4],clk,w[20]);
MUX_DFF MD05(in[4],in[20],s[4],clk,w[21]);
MUX_DFF MD06(in[5],in[21],s[4],clk,w[22]);
MUX_DFF MD07(in[6],in[22],s[4],clk,w[23]);
MUX_DFF MD08(in[7],in[23],s[4],clk,w[24]);
MUX_DFF MD09(in[8],in[24],s[4],clk,w[25]);
MUX_DFF MD10(in[9],in[25],s[4],clk,w[26]);
MUX_DFF MD11(in[10],in[26],s[4],clk,w[27]);
MUX_DFF MD12(in[11],in[27],s[4],clk,w[28]);
MUX_DFF MD13(in[12],in[28],s[4],clk,w[29]);
MUX_DFF MD14(in[13],in[29],s[4],clk,w[30]);
MUX_DFF MD15(in[14],in[30],s[4],clk,w[31]);
MUX_DFF MD16(in[15],in[31],s[4],clk,w[32]);
MUX_DFF MD17(in[16],w[1],s[4],clk,w[34]);
MUX_DFF MD18(in[17],w[2],s[4],clk,w[35]);
MUX_DFF MD19(in[18],w[3],s[4],clk,w[36]);
MUX_DFF MD20(in[19],w[4],s[4],clk,w[37]);
MUX_DFF MD21(in[20],w[5],s[4],clk,w[38]);
MUX_DFF MD22(in[21],w[6],s[4],clk,w[39]);
MUX_DFF MD23(in[22],w[7],s[4],clk,w[40]);
MUX_DFF MD24(in[23],w[8],s[4],clk,w[41]);
MUX_DFF MD25(in[24],w[9],s[4],clk,w[42]);
MUX_DFF MD26(in[25],w[10],s[4],clk,w[43]);
MUX_DFF MD27(in[26],w[11],s[4],clk,w[44]);
MUX_DFF MD28(in[27],w[12],s[4],clk,w[45]);
MUX_DFF MD29(in[28],w[13],s[4],clk,w[46]);
MUX_DFF MD30(in[29],w[14],s[4],clk,w[47]);
MUX_DFF MD31(in[30],w[15],s[4],clk,w[48]);
MUX_DFF MD32(in[31],w[16],s[4],clk,w[49]);


//STAGE 2

DFF R1(rotate,clk,r[3]);
DFF S1(select[3],clk,s[3]);

MUX m101(w[0],w[17],r[3],w[50]);
MUX m102(w[0],w[18],r[3],w[51]);
MUX m103(w[0],w[19],r[3],w[52]);
MUX m104(w[0],w[20],r[3],w[53]);
MUX m105(w[0],w[21],r[3],w[54]);
MUX m106(w[0],w[22],r[3],w[55]);
MUX m107(w[0],w[23],r[3],w[56]);
MUX m108(w[0],w[24],r[3],w[57]);

MUX_DFF MD101(w[17],w[25],s[3],clk,w[58]);
MUX_DFF MD102(w[18],w[26],s[3],clk,w[59]);
MUX_DFF MD103(w[19],w[27],s[3],clk,w[60]);
MUX_DFF MD104(w[20],w[28],s[3],clk,w[61]);
MUX_DFF MD105(w[21],w[29],s[3],clk,w[62]);
MUX_DFF MD106(w[22],w[30],s[3],clk,w[63]);
MUX_DFF MD107(w[23],w[31],s[3],clk,w[64]);
MUX_DFF MD108(w[24],w[32],s[3],clk,w[65]);
MUX_DFF MD109(w[25],w[34],s[3],clk,w[66]);
MUX_DFF MD110(w[26],w[35],s[3],clk,w[67]);
MUX_DFF MD111(w[27],w[36],s[3],clk,w[68]);
MUX_DFF MD112(w[28],w[37],s[3],clk,w[69]);
MUX_DFF MD113(w[29],w[38],s[3],clk,w[70]);
MUX_DFF MD114(w[30],w[39],s[3],clk,w[71]);
MUX_DFF MD115(w[31],w[40],s[3],clk,w[72]);
MUX_DFF MD116(w[32],w[41],s[3],clk,w[73]);
MUX_DFF MD117(w[34],w[42],s[3],clk,w[74]);
MUX_DFF MD118(w[35],w[43],s[3],clk,w[75]);
MUX_DFF MD119(w[36],w[44],s[3],clk,w[76]);
MUX_DFF MD120(w[37],w[45],s[3],clk,w[77]);
MUX_DFF MD121(w[38],w[46],s[3],clk,w[78]);
MUX_DFF MD122(w[39],w[47],s[3],clk,w[79]);
MUX_DFF MD123(w[40],w[48],s[3],clk,w[80]);
MUX_DFF MD124(w[41],w[49],s[3],clk,w[81]);
MUX_DFF MD125(w[42],w[50],s[3],clk,w[82]);
MUX_DFF MD126(w[43],w[51],s[3],clk,w[83]);
MUX_DFF MD127(w[44],w[52],s[3],clk,w[84]);
MUX_DFF MD128(w[45],w[53],s[3],clk,w[85]);
MUX_DFF MD129(w[46],w[54],s[3],clk,w[86]);
MUX_DFF MD130(w[47],w[55],s[3],clk,w[87]);
MUX_DFF MD131(w[48],w[56],s[3],clk,w[88]);
MUX_DFF MD132(w[49],w[57],s[3],clk,w[89]);

//STAGE 3

DFF R2(rotate,clk,r[5]);
DFF R3(r[5],clk,r[2]);
DFF S2(select[2],clk,s[5]);
DFF S3(s[5],clk,s[2]);

MUX m201(w[0],w[58],r[2],w[90]);
MUX m202(w[0],w[59],r[2],w[91]);
MUX m203(w[0],w[60],r[2],w[92]);
MUX m204(w[0],w[61],r[2],w[93]);


MUX_DFF MD201(w[58],w[62],s[2],clk,w[94]);
MUX_DFF MD202(w[59],w[63],s[2],clk,w[95]);
MUX_DFF MD203(w[60],w[64],s[2],clk,w[96]);
MUX_DFF MD204(w[61],w[65],s[2],clk,w[97]);
MUX_DFF MD205(w[62],w[66],s[2],clk,w[98]);
MUX_DFF MD206(w[63],w[67],s[2],clk,w[99]);
MUX_DFF MD207(w[64],w[68],s[2],clk,w[100]);
MUX_DFF MD208(w[65],w[69],s[2],clk,w[101]);
MUX_DFF MD209(w[66],w[70],s[2],clk,w[102]);
MUX_DFF MD210(w[67],w[71],s[2],clk,w[103]);
MUX_DFF MD211(w[68],w[72],s[2],clk,w[104]);
MUX_DFF MD212(w[69],w[73],s[2],clk,w[105]);
MUX_DFF MD213(w[70],w[74],s[2],clk,w[106]);
MUX_DFF MD214(w[71],w[75],s[2],clk,w[107]);
MUX_DFF MD215(w[72],w[76],s[2],clk,w[108]);
MUX_DFF MD216(w[73],w[77],s[2],clk,w[109]);
MUX_DFF MD217(w[74],w[78],s[2],clk,w[110]);
MUX_DFF MD218(w[75],w[79],s[2],clk,w[111]);
MUX_DFF MD219(w[76],w[80],s[2],clk,w[112]);
MUX_DFF MD220(w[77],w[81],s[2],clk,w[113]);
MUX_DFF MD221(w[78],w[82],s[2],clk,w[114]);
MUX_DFF MD222(w[79],w[83],s[2],clk,w[115]);
MUX_DFF MD223(w[80],w[84],s[2],clk,w[116]);
MUX_DFF MD224(w[81],w[85],s[2],clk,w[117]);
MUX_DFF MD225(w[82],w[86],s[2],clk,w[118]);
MUX_DFF MD226(w[83],w[87],s[2],clk,w[119]);
MUX_DFF MD227(w[84],w[88],s[2],clk,w[120]);
MUX_DFF MD228(w[85],w[89],s[2],clk,w[121]);
MUX_DFF MD229(w[86],w[90],s[2],clk,w[122]);
MUX_DFF MD230(w[87],w[91],s[2],clk,w[123]);
MUX_DFF MD231(w[88],w[92],s[2],clk,w[124]);
MUX_DFF MD232(w[89],w[93],s[2],clk,w[125]);

//STAGE 4

DFF R4(rotate,clk,r[6]);
DFF R5(r[6],clk,r[7]);
DFF R6(r[7],clk,r[1]);
DFF S4(select[1],clk,s[6]);
DFF S5(s[6],clk,s[7]);
DFF S6(s[7],clk,s[1]);


MUX m301(w[0],w[94],r[1],w[126]);
MUX m302(w[0],w[95],r[1],w[127]);


MUX_DFF MD301(w[94],w[96],s[1],clk,w[128]);
MUX_DFF MD302(w[95],w[97],s[1],clk,w[129]);
MUX_DFF MD303(w[96],w[98],s[1],clk,w[130]);
MUX_DFF MD304(w[97],w[99],s[1],clk,w[131]);
MUX_DFF MD305(w[98],w[100],s[1],clk,w[132]);
MUX_DFF MD306(w[99],w[101],s[1],clk,w[133]);
MUX_DFF MD307(w[100],w[102],s[1],clk,w[134]);
MUX_DFF MD308(w[101],w[103],s[1],clk,w[135]);
MUX_DFF MD309(w[102],w[104],s[1],clk,w[136]);
MUX_DFF MD310(w[103],w[105],s[1],clk,w[137]);
MUX_DFF MD311(w[104],w[106],s[1],clk,w[138]);
MUX_DFF MD312(w[105],w[107],s[1],clk,w[139]);
MUX_DFF MD313(w[106],w[108],s[1],clk,w[140]);
MUX_DFF MD314(w[107],w[109],s[1],clk,w[141]);
MUX_DFF MD315(w[108],w[110],s[1],clk,w[142]);
MUX_DFF MD316(w[109],w[111],s[1],clk,w[143]);
MUX_DFF MD317(w[110],w[112],s[1],clk,w[144]);
MUX_DFF MD318(w[111],w[113],s[1],clk,w[145]);
MUX_DFF MD319(w[112],w[114],s[1],clk,w[146]);
MUX_DFF MD320(w[113],w[115],s[1],clk,w[147]);
MUX_DFF MD321(w[114],w[116],s[1],clk,w[148]);
MUX_DFF MD322(w[115],w[117],s[1],clk,w[149]);
MUX_DFF MD323(w[116],w[118],s[1],clk,w[150]);
MUX_DFF MD324(w[117],w[119],s[1],clk,w[151]);
MUX_DFF MD325(w[118],w[120],s[1],clk,w[152]);
MUX_DFF MD326(w[119],w[121],s[1],clk,w[153]);
MUX_DFF MD327(w[120],w[122],s[1],clk,w[154]);
MUX_DFF MD328(w[121],w[123],s[1],clk,w[155]);
MUX_DFF MD329(w[122],w[124],s[1],clk,w[156]);
MUX_DFF MD330(w[123],w[125],s[1],clk,w[157]);
MUX_DFF MD331(w[124],w[126],s[1],clk,w[158]);
MUX_DFF MD332(w[125],w[127],s[1],clk,w[159]);

//STAGE 5
DFF R7(rotate,clk,r[8]);
DFF R8(r[8],clk,r[9]);
DFF R9(r[9],clk,r[10]);
DFF R10(r[10],clk,r[0]);
DFF S7(select[0],clk,s[8]);
DFF S8(s[8],clk,s[9]);
DFF S9(s[9],clk,s[10]);
DFF S10(s[10],clk,s[0]);

MUX m401(w[0],w[128],r[0],w[160]);


MUX_DFF MD401(w[128],w[129],s[0],clk,out[0]);
MUX_DFF MD402(w[129],w[130],s[0],clk,out[1]);
MUX_DFF MD403(w[130],w[131],s[0],clk,out[2]);
MUX_DFF MD404(w[131],w[132],s[0],clk,out[3]);
MUX_DFF MD405(w[132],w[133],s[0],clk,out[4]);
MUX_DFF MD406(w[133],w[134],s[0],clk,out[5]);
MUX_DFF MD407(w[134],w[135],s[0],clk,out[6]);
MUX_DFF MD408(w[135],w[136],s[0],clk,out[7]);
MUX_DFF MD409(w[136],w[137],s[0],clk,out[8]);
MUX_DFF MD410(w[137],w[138],s[0],clk,out[9]);
MUX_DFF MD411(w[138],w[139],s[0],clk,out[10]);
MUX_DFF MD412(w[139],w[140],s[0],clk,out[11]);
MUX_DFF MD413(w[140],w[141],s[0],clk,out[12]);
MUX_DFF MD414(w[141],w[142],s[0],clk,out[13]);
MUX_DFF MD415(w[142],w[143],s[0],clk,out[14]);
MUX_DFF MD416(w[143],w[144],s[0],clk,out[15]);
MUX_DFF MD417(w[144],w[145],s[0],clk,out[16]);
MUX_DFF MD418(w[145],w[146],s[0],clk,out[17]);
MUX_DFF MD419(w[146],w[147],s[0],clk,out[18]);
MUX_DFF MD420(w[147],w[148],s[0],clk,out[19]);
MUX_DFF MD421(w[148],w[149],s[0],clk,out[20]);
MUX_DFF MD422(w[149],w[150],s[0],clk,out[21]);
MUX_DFF MD423(w[150],w[151],s[0],clk,out[22]);
MUX_DFF MD424(w[151],w[152],s[0],clk,out[23]);
MUX_DFF MD425(w[152],w[153],s[0],clk,out[24]);
MUX_DFF MD426(w[153],w[154],s[0],clk,out[25]);
MUX_DFF MD427(w[154],w[155],s[0],clk,out[26]);
MUX_DFF MD428(w[155],w[156],s[0],clk,out[27]);
MUX_DFF MD429(w[156],w[157],s[0],clk,out[28]);
MUX_DFF MD430(w[157],w[158],s[0],clk,out[29]);
MUX_DFF MD431(w[158],w[159],s[0],clk,out[30]);
MUX_DFF MD432(w[159],w[160],s[0],clk,out[31]);




endmodule