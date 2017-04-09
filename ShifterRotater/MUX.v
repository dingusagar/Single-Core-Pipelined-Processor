module MUX(d1,d2,select,dout);
input d1,d2;
input select;
output dout;

assign dout=(((~select)&d1)|(select & d2));

endmodule