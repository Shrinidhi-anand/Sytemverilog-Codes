// Code your testbench here
// or browse Examples

program test ;
  class B;
    int k;
  endclass
  
  class A;
    int l;
    B b1;
    function new();
      b1 = new();
    endfunction
    function int add(int a = 1 , b = 1);
      add = a+b;
      $display("Function a=%d b=%d add=%d",a,b,add);
    endfunction
  endclass
  
  A a1,a2;
  initial
    begin
      a1 = new();
      a1.l = 15;
      a1.b1.k = 30;
      a1.add(2,4);
      $display("1. a1.l=%d a1.b1.k=%d ",a1.l,a1.b1.k);
      a2 = new a1;
      $display("2. a2.l = %d a2.b1.k=%d",a2.l,a2.b1.k);
      a1.l = 20;
      a2.add(,);
      $display("3. a1.l=%d a2.l=%d",a1.l,a2.l);
      a1.b1.k = 40;
      $display("4. a1.b1.k=%d a2.b1.k=%d",a1.b1.k,a2.b1.k);
      a2.b1.k = 60;
      $display("5. a1.b1.k=%d a2.b1.k=%d",a1.b1.k,a2.b1.k);
    end
    
endprogram
      