// Code your testbench here
// or browse Examples

program learn_class1();
  arith a1,a2,a3;
  logic unsigned [4:0] addresult;
  
  initial
    begin
      $display("a1 = %d a2 = %d",a1,a2);
      a1 = new();
      a2 = new();
      a3 = new();
      $display("a1=%d a2=%d",a1,a2);
      a1.print();
      $display("1. %d %d",a1.a,a1.b);
      a1.a = 5;
      a1.b = 6;
      a1.print();
      
      $display("2. %d %d",a1.a,a1.b);
      a2.a = 10;
      a2.b = 15;
      a2.print();
      $display("3. %d %d",a2.a,a2.b);
      
      addresult = a1.addfunc(a1.a,a1.b);
      $display("4. %d",addresult);
      addresult = a2.addfunc();
      $display("5. %d",addresult);
      addresult = a1.addfunc(10,);
    end
  
  initial
    begin
      #20;
      a1.mytask(2);
    end
   
  initial
    begin
      #40;
      a1.mytask(3);
    end

endprogram

  
  
 

          
          