// Code your testbench here
// or browse Examples

module top();
  logic a,b,ci,s,co;
  
  ha h1(.a_d(a),.b_d(b),.ci_d(ci),.s_d(s),.co_d(co));
  
  test t1 (.a_t(a),.b_t(b),.ci_t(ci),.s_t(s),.co_t(co));
endmodule