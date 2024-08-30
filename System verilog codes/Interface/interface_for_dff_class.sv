// Code your design here

interface dff_int ( input bit clk );
  bit d,q;
endinterface



module dff (clk,d,q);
  input clk,d;
  output reg q;
  wire clk;
  always@(posedge clk)
    begin
      	q <= d;
    end
endmodule



program test (dff_int dffint);
  /*
  input q;
  output reg d;
  wire clk;
  */
  
  initial
    begin
      
      @(posedge dffint.clk)
      dffint.d <= 0;
      
      @(posedge dffint.clk)
      $display("For D = %b, Out = %b", dffint.d,dffint.q);
      
      @(posedge dffint.clk)
      dffint.d <= 1;
      
      @(posedge dffint.clk)
      $display("For D = %b, Out = %b", dffint.d,dffint.q);
      
      repeat(5)
        begin
          @(posedge dffint.clk);
        end
      $finish;
    end
endprogram