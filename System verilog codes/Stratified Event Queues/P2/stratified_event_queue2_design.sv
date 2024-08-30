// Code your design here

interface dff_int ( input bit clk );
  bit d,q;
endinterface



module counter (count,clk,rst);
  input clk,rst;
  output reg [3:0] count;
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        count <= 0;
      else if(count ==15)
        count <= 0;
	  else
  		count <= count+1;
    end
endmodule

program test (clk_t,rst_t,count_t);
  output reg rst_t;
  input clk_t;
  input [3:0]count_t;
  
  initial begin
    @(posedge clk_t)
    rst_t = 1;
    @(posedge clk_t)
    rst_t = 0;
  end
  
  initial
    begin
      repeat(100)
        begin
          @(posedge clk_t);
    	end
  	$finish;
  end
endprogram

