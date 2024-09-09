// Code your testbench here
// or browse Examples

program test();
  base b1;
  derived d1;
  
  initial
    begin
      d1 = new();
      b1 = new();
      $display("Before");
      b1.printb();
      b1.printc();
      d1.printd();
      d1.printe();
      d1.printc();
      $display("Handle assignmentt");
      b1 = d1;
      b1.printc();
      //b1.printd();  //Pops up an error since base class doesnt contain any printd() function
      
    end
endprogram