// Code your testbench here
// or browse Examples

module top();
  logic clk;
  logic reset;
  logic [1:0]gnt,req;
  
  initial begin
    forever #5 clk=~clk;
  end
  
  initial
    begin
      clk=1'b0;
      reset = 1'b0;
      #100 reset=1'b1;
    end
  
  arb_interface arbif(clk,reset);
  arbiter duv(.clk(clk),.reset(reset),.req(arbif.req),.gnt(arbif.gnt));
  testbench tb(arbif);
endmodule