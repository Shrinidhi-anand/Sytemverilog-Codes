// Code your testbench here
// or browse Examples

program class_inside_class ;
 B b1;
  initial
    begin
      b1 = new();
      b1.a1 = new();
      b1.k = 10;
      b1.a1.j = 20;
      b1.a1.printA();
      b1.printB();
    end

endprogram