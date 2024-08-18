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

