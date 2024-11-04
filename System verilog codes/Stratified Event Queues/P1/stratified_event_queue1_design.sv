// Code your design here

interface ha_int ( input bit clk );
  bit d,q;
endinterface



module ha(a_d,b_d,ci_d,s_d,co_d);
  input a_d,b_d,ci_d;
  output reg s_d,co_d;
  always@(a_d,b_d,ci_d)
    begin
      s_d = a_d ^ b_d ^ ci_d;
      co_d = (a_d & b_d) | (b_d & ci_d) | (ci_d & a_d);
    end
endmodule


program test (a_t,b_t,ci_t,s_t,co_t);
  output reg a_t , b_t, ci_t;
  input s_t, co_t;
  initial
    begin
      a_t = 0;
      b_t = 0;
      ci_t = 0;
      #10;
      repeat(5)
        begin
          a_t = $random;
          b_t = $random;
     	  ci_t = $random;
          #10;
          $display("%t...For a:%d b:%d c_in:%d sum:%d carry:%d",$time,a_t,b_t,ci_t,s_t,co_t);
        end
    end
endprogram

