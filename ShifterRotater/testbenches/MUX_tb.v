module MUX_tb();
reg d1,d2;
output dout;
reg select;

MUX M1(d1,d2,select,dout);
initial
begin

d1=0;
d2=1;
select=0;

end
always #10 select=~select;

always #10
begin
$monitor($time,"  d1-%b  d2- %b  select - %b  dout- %b",d1,d2,select,dout);
end
always #240 $finish;

endmodule