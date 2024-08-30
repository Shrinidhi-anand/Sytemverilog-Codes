// Code your testbench here
// or browse Examples

module top();
  bit clk;
  initial
    begin
      forever #5 clk=~clk;
    end
  
  dff_int dffint (clk);
  dff duv (.clk(dffint.clk),.d(dffint.d),.q(dffint.q));
  test t1 (dffint);
endmodule