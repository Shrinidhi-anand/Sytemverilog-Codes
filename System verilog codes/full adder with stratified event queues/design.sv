// Code your design here

module fa_d(a_d,b_d,c_d,sum_d,carry_d);
input a_d,b_d,c_d;
output reg sum_d,carry_d;
always@(a_d,b_d,c_d)
begin
	sum_d=a_d^b_d^c_d;
	carry_d=( (a_d)&(b_d) )| c_d & (a_d | b_d);
end
endmodule

program fa_tb(a_t,b_t,c_t,sum_t,carry_t);
output reg a_t,b_t,c_t;
input sum_t,carry_t;
initial
begin
	repeat(5)
	begin
		a_t=$random;
		b_t=$random;
		c_t=$random;
		#10;
		expr={carry,sum};
		if(expr[0]==sum_t && expr[1]==carry_t)
		begin
			$display(“%d……PASS! a=%d b=%d c=%d sum=%d carry=%d expr[0]=%d expr[1]=%d”,$time,a_t,b_t,c_t,sum_t,carry_t,expr[0],expr[1]);
			mcmp=0;
		end
		else 
		begin
			$display(“%d……PASS! a=%d b=%d c=%d sum=%d carry=%d expr[0]=%d expr[1]=%d”, $time,a_t,b_t,c_t,sum_t,carry_t,expr[0],expr[1]);
			mcmp=mcmp+1;
		end
	end
	if(mcmp>0)
		$display(“Some cases failed”);
	else 
		$display(“All cases passed”);
end
endprogram