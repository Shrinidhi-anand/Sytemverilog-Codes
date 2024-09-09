// Code your design here
class parent;
  int i = 40;
  string j = "star";
   
  function void printa();
    $display("WE are in parent class : i=%d and j = %s",i,j);
  endfunction
  
endclass

class child extends parent;
  int m = 50;
  string n = "moon";
  
  function void printb();
    $display("WE are inn child class : m = %d and n = %s",m,n);
  endfunction
endclass
