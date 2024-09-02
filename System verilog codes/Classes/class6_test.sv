// Code your testbench here
// or browse Examples

program test ;
  A a1,a2;	//When handle assignment is done, both handles share the same memory
  initial
    begin
      a1 = new();
      a2 = new();
      $display("Before handle assign a1 = %h a2 = %h",a1,a2);
      a1.m = 10;
      a2.m = 4;
      $display("Before handle assign a1.m = %d a2.m = %d",a1.m,a2.m);
      a1 = a2;
      $display("After handle assign a1 = %h a2 = %h",a1,a2);
      $display("After handle assign a1.m = %d a2.m = %d",a1.m,a2.m);
      a1.m = 30;
      $display("After handle assign a1.m = %d a2.m = %d",a1.m,a2.m);
      a2.m = 40;
 	  $display("After handle assign a1.m = %d a2.m = %d",a1.m,a2.m);
    end
endprogram
      