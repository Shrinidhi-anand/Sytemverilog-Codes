// Code your design here
class base;
  int base_var;
  int common = 2;
  function void printb();
    $display("WE are in base class %d",base_var);
  endfunction
  
  function void printc();
    $display("Printc : we are in base class");
  endfunction 
endclass

class derived extends base;
  int der_var;
  int common = 3;
  function void printd();
    $display("We are in derived class");
  endfunction
  
  function void printe();
    $display("Printe : WE are in derived class");
    $display("Calculation = %d",common);
  endfunction
  
  function void printc();
    super.printc();
    $display("Printc : We are in derived class access super");
    $display("Calculation = %d",common+super.common);
  endfunction
endclass
