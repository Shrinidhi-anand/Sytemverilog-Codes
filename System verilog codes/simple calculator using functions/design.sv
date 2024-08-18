// Code your design here

module fn_sc(x,y,l,m,I,sum,diff,prod,quot,rst);
input  [14:0]x,y;
input [6:0]l,m;
input [1:0]i;
input rst;
output reg [15:0]sum,diff,prod,quot;
always@(x,y,l,m)
begin
	if(rst)
	begin
		sum=0;
		diff=0;		
		prod=0;
		quot=0;
	end
	else
	begin
		case(i)
		2’b0: sum=x+y;
		2’b1: diff=x-y;
		2’b2: prod=l*m;
		2’b3: quot=l/m;
		default:
		begin
			sum=0;
			diff=0;
			prod=1;
			quot=1;
		end
		endcase
	end
end
endmodule
