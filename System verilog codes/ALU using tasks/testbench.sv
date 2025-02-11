// Code your testbench here
// or browse Examples


module alu_top;
logic [30:0]a,b;
logic [15:0]l,m;
logic [2:0]i;
logic [31:0]sum,dif,pro,quo,rem,And,Or,Xor;

alu_d A2(.a_d(a),.b_d(b),.l_d(l),.m_d(m),.sum_d(sum),.dif_d(dif),.pro_d(pro),.quo_d(quo),.rem_d(rem),.and_d(And),.or_d(Or),.xor_d(Xor));
alu_sct A3(.a_t(a),.b_t(b),.l_t(l),.m_t(m),.sum_t(sum),.dif_t(dif),.pro_t(pro),.quo_t(quo),.rem_t(rem),.and_t(And),.or_t(Or),.xor_t(Xor));
endmodule



program alu_sct(a_t,b_t,l_t,m_t,rst_t,sum_t,dif_t,pro_t,quo_t,rem_t,and_t,or_t,xor_t);
input [31:0]sum_t,dif_t,pro_t,quo_t,rem_t,and_t,or_t,xor_t;
output reg [30:0]a_t,b_t;
output reg [15:0]l_t,m_t;
output reg rst_t;
reg [31:0]sum_e,dif_e,pro_e,quo_e,rem_e,and_e,or_e,xor_e;
integer mcmp;
event e1,e2,e3,e4,e5,e6,e7;

function void display_all();
	$display(“@%d Time……\n a=%d \n b=%d \n l=%d \n m=%d \n sum=%d exp sum=%d \n dif=%d exp dif=%d \n pro=%d exp pro=%d \n quo=%d exp quo=%d \n rem=%d exp rem=%d \n and=%d exp and=%d \n or=%d exp or=%d\n xor=%d exp xor=%d”,$time,a_t,b_t,l_t,m_t,sum_t,sum_e,dif_t,dif_e,pro_t,pro_e,quo_t,quo_e,rem_t,rem_e,and_t,and_e,or_t,or_e,xor_t,xor_e);
endfunction
		
task addition(input [30:0] a_t,b_t,output [31:0]sum_t);
begin
	sum_t = a_t+b_t;
end
endtask

task subtract(input [30:0] a_t,b_t,output [31:0]dif_t);
begin
	dif_t = a_t-b_t;
end
endtask

task multiply(input [15:0] l_t,m_t,output [31:0]pro_t);
begin
	pro_t = l_t*m_t;
end
endtask
	
task divide(input [15:0] l_t,m_t,output [31:0]quo_t);
begin
	quo_t = l_t/m_t;
end
endtask

task modulus(input [30:0] a_t,b_t,output [31:0]rem_t);
begin
	rem_t = a_t%b_t;
end
endtask

task AND(input [30:0] a_t,b_t,output [31:0]and_t);
begin
	and_t = a_t&b_t;
end
endtask

task OR(input [30:0] a_t,b_t,output [31:0]or_t);
begin
	or_t = a_t|b_t;
end
endtask

task XOR(input [30:0] a_t,b_t,output [31:0]xor_t);
begin
	xor_t = a_t^b_t;
end
endtask

task verdict(integer mcmp);
begin
	if(mcmp>0)
		$display(“Some cases have failed”);
	else
		$display(“All cases passed”);
end
endtask

initial
begin
	rst_t=1;
	#40;
	rst_t=0;
	repeat(10)
	begin
		if(rst_t)
		begin
			sum_e=0;
			dif_e=0;
			pro_e=0;
			quo_e=0;
			rem_e=0;
			and_e=0;
			or_e=0;
			xor_e=0;
		end
		else
		begin
			a_t=$random;
			b_t=$random;
			l_t=$random;
			m_t=$random;
			#20;
			fork
			begin OP1:
				addition(a_t,b_t,sum_e); 
			end
			begin OP2:
				subtract(a_t,b_t,dif_e); 
			end
			begin OP3:
				multiply(l_t,m_t,pro_e); 
			end
			begin OP4:
				divide(l_t,m_t,quo_e); 
			end
			begin OP5:
				modulus(a_t,b_t,rem_e); 
			end
			begin OP6:
				AND(a_t,b_t,and_e); 
			end
			begin OP7:
				OR (a_t,b_t,or_e); 
			end
			begin OP8:
				XOR (a_t,b_t,xor_e); 
			end
			join
			if(sum_t==sum_e && dif_t==dif_e && pro_t==pro_e && quo_t==quo_e && rem_t==rem_e && and_t == and_e && or_t==or_e && xor_t==xor_e)
			begin
				$display(“PASS CONDITION”);
				display_all();	
			end
			else
			begin
				$display(“FAIL CONDITION”);
				display_all();
				mcmp=mcmp+1;
			end	
		end
	end
	verdict(mcmp);
end
endprogram

