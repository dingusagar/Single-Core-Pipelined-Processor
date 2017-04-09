module MUX_DFF(d1,d2,select,clk,dout);
input d1,d2;
input select,clk;
output dout;
wire [1:0]w;

assign w[0]=(((~select)&d1)|(select & d2));

DFF D1(w[0],clk,dout);

endmodule