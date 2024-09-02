// Code your design here


typedef class B;
  
  class A;
    int j;
    B b2;
    function void printA();
      $display("ClassA : %d",j);
    endfunction
    
  endclass
  
  class B;
    int k;
    A a1;
    function new();
      a1 = new();
    endfunction
    
    function void printB();
      $display("Class B : %d",k);
    endfunction
    
  endclass
  
  