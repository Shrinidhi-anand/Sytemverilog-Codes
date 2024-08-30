// Code your testbench here
// or browse Examples

module top();
  logic top_clk,top_rst;
  logic [3:0] top_count;
  
  initial
    begin
      top_clk = 0;
      forever #5 top_clk = ~top_clk;
    end
  
  counter duv(.count(top_count),.clk(top_clk),.rst(top_rst));
  test duv1(.clk_t(top_clk),.rst_t(top_rst),.count_t(top_count) );
endmodule