// Code your testbench here
// or browse Examples

program deep_copy;
  B b1,b2;
  initial
    begin
      $display("1...%d",$time);
      b1=new();
      b2=new();
      $display("4...%d",$time);
      
      b1.i = 10;
      b1.a.j = 20;
      $display("BEFORE COPYING");
      $display("b1.i=%d b1.a.j=%d",b1.i,b1.a.j);
      $display("b2.i=%d b2.a.j=%d",b2.i,b2.a.j);
      b2 = b1.copy_B();
      $display("10...%d",$time);
      $display("AFTER COPYING");
      $display("b1.i=%d b1.a.j=%d",b1.i,b1.a.j);
      $display("b2.i=%d b2.a.j=%d",b2.i,b2.a.j);
      b1.i = 80;
      b1.a.j = 80;
      $display("AFTER COPYING");
      $display("b1.i=%d b1.a.j=%d",b1.i,b1.a.j);
      $display("b2.i=%d b2.a.j=%d",b2.i,b2.a.j);
    end
endprogram
      