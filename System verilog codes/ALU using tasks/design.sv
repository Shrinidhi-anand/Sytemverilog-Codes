// Code your design here

module alu_d(a_d,b_d,l_d,m_d,rst_d,sum_d,dif_d,pro_d,quo_d,rem_d,and_d,or_d,xor_d);
input [30:0]a_d,b_d;
input [15:0]l_d,m_d;
input rst_d;
output reg [31:0]sum_d,dif_d,pro_d,quo_d,rem_d,and_d,or_d,xor_d;
always@(a_d,b_d,l_d,m_d)
begin
	if(rst_d)
	begin
		sum_d=0;
		dif_d=0;
		pro_d=0;
		quo_d=0;
		rem_d=0;
		and_d=0;
		or_d=0;
		xor_d=0;
	end
	else
	begin
		sum_d=a_d+b_d;
		dif_d=a_d-b_d;
		pro_d=l_d*m_d;
		div_d=l_d/m_d;
		rem_d=l_d%m_d;
		and_d=a_d&b_d;
		or_d=a_d|b_d;
		xor_d=a_d^b_d;
	end
end
endmodule
