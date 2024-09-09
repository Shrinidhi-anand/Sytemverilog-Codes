// Code your testbench here
// or browse Examples

program test();
  parent p1;
  child c1;
  initial
    begin
      p1 = new();
      c1 = new();
      $display("1. Access parent methods from parent :");
      p1.printa();
      $display("2. Access child methods from child :");
      c1.printb();
      $display("3. Access parent methods from child");
      c1.printa();
    end
endprogram
