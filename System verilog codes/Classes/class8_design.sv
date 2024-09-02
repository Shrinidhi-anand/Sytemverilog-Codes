// Code your design here

class A;
  integer j = 5;
  function A copy_A();
    $display("B...%d",$time);
    copy_A = new();
    copy_A.j = this.j;
    $display("9...%d",$time);
  endfunction
endclass

class B;
  integer i=1;
  A a;
  
  function new();
    $display("2...%d",$time);
    a = new();
    $display("3...%d",$time);
  endfunction
  
  function B copy_B();
    $display("5...%d",$time);
    copy_B = new();
    $display("6...%d",$time);
    copy_B.i = i;
    $display("7...%d",$time);
    copy_B.a = a.copy_A();
  endfunction
endclass

