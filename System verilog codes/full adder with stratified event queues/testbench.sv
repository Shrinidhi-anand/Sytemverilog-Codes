// Code your testbench here
// or browse Examples

module fa_top;
logic a,b,c;
logic sum,carry;
	fa_d F1(.a_d(a),.b_d(b),.c_d(c),.sum_d(sum),.carry_d(carry));
	fa_sct F2(.a_t(a),.b_t(b),.c_t(c),.sum_t(sum),.carry_t(carry));
endmodule
