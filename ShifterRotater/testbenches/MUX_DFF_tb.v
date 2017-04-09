module MUX_DFF_tb();
reg d1,d2,clk;
output dout;
reg select;

MUX_DFF M1(d1,d2,select,clk,dout);
initial
begin

d1=0;
d2=1;
select=0;
clk=0;
end

#1 select=1;
# clk=0;

#2 select=0;
#2 clk=1;

always #1
begin
$monitor($time,"  d1-%b  d2- %b  select - %b  clk - %b dout- %b",d1,d2,select,clk,dout);
end
always #3 $finish;

endmodule