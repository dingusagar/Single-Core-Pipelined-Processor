module prefix_pipelined_tb();
	reg [31:0]a,b;
	reg c,clock;
	wire [31:0]sum;
	wire cout;
prefixadder p(a,b,c,sum,cout,clock);
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
#4 a=32'd10;
   b=32'd20;
   c=0;
#4 a=32'd14;
   b=32'd32;
   c=0; 
#4 a=32'd56;
   b=32'd68;
   c=1; 
#4 a=32'd156;
   b=32'd750;
   c=1;  

#4 a=32'd5;
   b=32'd7;
   c=0;  
 
 #4 a=32'd123;
   b=32'd787;
   c=0;  

#4 a=32'd15;
   b=32'd72;
   c=0;  

#4 a=32'd55;
   b=32'd71;
   c=0;  

#4 a=32'd52;
   b=32'd17;
   c=0;  

end
initial 
begin
	#400 $finish;
end
initial
begin
	$monitor($time," a=%d b=%d c=%b sum=%d cout=%b",a,b,c,sum,cout);
end

endmodule
