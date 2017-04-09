module DFF_tb();
reg d,clk,reset;
output q;

DFF d1(d,clk,q);

initial 
begin 

d=1'b0;
clk=1'b0;

end
always #200 d=~d;
always #100 clk=~clk;
always #100 $monitor($time,"  %b %b %b",d,clk,q);

initial
begin
#2400 $finish;
end
endmodule