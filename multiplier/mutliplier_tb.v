module mtbp_tb();
	reg [31:0]a,b;
reg clock;
	wire [63:0]out;

multiplier prefix(a,b,out,clock);
initial
begin
	clock=1'b0;	
end
always
begin
	#1 clock=~clock;
end
initial
begin
#12 a=32'd11111;
   b=32'd11111;

#12 a=32'd10;
    b=32'd20;

#12 a=32'd10;
   b=32'd30;

#12 a=32'd10;
   b=32'd40;


#12 a=32'd10;
   b=32'd50;
 
 
 #12 a=32'd10;
   b=32'd60;

#12 a=32'd10;
   b=32'd70;


#12 a=32'd10;
   b=32'd80;


#12 a=32'd10;
   b=32'd10;


end
initial 
begin
	#400 $finish;
end
initial
begin
	$monitor($time," a = %d b=%d  out=%d ",a,b,out);
end

endmodule
