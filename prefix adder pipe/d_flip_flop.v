module Df(a,clock,q);
	input [31:0]a;
	input clock;
	output [31:0]q;
	reg [31:0]q;
	always@(posedge clock)
	begin
		q<=a;
	end
endmodule

module DFF(a,clock,q);
	input a,clock;
	output q;
	reg q;
	always@(posedge clock)
    begin 
    	q<=a;
    end
endmodule