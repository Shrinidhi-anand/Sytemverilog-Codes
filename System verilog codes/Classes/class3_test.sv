// Code your testbench here
// or browse Examples

program learn_class1;
  arith a1;
  arith a2;
  bit unsigned [4:0] addresult;
  initial
    begin
      a1 = new(2,3);
      a2 = new();
      a1.print();
      addresult = a1.addfunc (a1.a,a1.b);
      a1.a = 5;
      a1.b = 6;
      addresult = a1.addfunc (a1.a,a1.b);
      $display("display a1.a=%d a1.b=%d",a1.a,a1.b);
      $display("display a2.a=%d a2.b=%d",a2.a,a2.b);
    end
  
endprogram