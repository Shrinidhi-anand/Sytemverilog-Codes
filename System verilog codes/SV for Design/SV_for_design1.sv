// Code your testbench here
// or browse Examples

module test;
  reg inp1,inp2;
  logic out;
  //always@(inp1 or inp2)
  always_comb
    begin
      $display("@%0d inp = %d inp2 = %0d",$time,inp1,inp2);
      out = inp1+inp2;
    end
  
  initial
    begin
      #10 
      inp1 = 1;
      inp2 = 0;
      #5
      $display("@%0t out = %0d",$time,out);
      #10 
      inp1 = 1;
      inp2 = 1;
      #5
      $display("@%0t out = %0d",$time,out);
      #10 
      inp1 = 0;
      inp2 = 0;
      #5
      $display("@%0t out = %0d",$time,out);
      #100;
      $finish;
    end
endmodule