// Code your design here


class arith;
  bit [3:0]a;
  bit [3:0]b;
  int c[];
  
  function void print();
    $display("Function : print : a=%d b=%d",a,b);
  endfunction
  
  function new (input bit [3:0] e = 2, f = 8);
    a = e;
    b = f;
    $display("Function : new a=%d b = %d",a,b);
  endfunction 
  
  function bit unsigned[4:0] addfunc (input bit unsigned [3:0] c=8,input bit unsigned [3:0] d = 9);
    addfunc = c+d;
    $display("Function addfunc : After sum: c=%d d = %d sum = %d",c,d,addfunc);
  endfunction
  
endclass

