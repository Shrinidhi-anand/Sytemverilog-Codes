// Code your design here
class arith;
  bit [3:0]a;
  integer b;
  
  	function void print();
       	$display("Function: print: a=%d b=%d",a,b);
  	endfunction
            
    function logic unsigned[4:0] addfunc (input bit unsigned [3:0] c=8, input bit unsigned [3:0] d=9);
      addfunc = c+d;
      $display("Function addfunc: c=%d d=%d sum=%d",c,d,addfunc);
    endfunction
                         
                 task mytask(input logic [1:0]a);
                   $display("Task print: a=%d",a);
                   #100;
                 endtask
                 endclass
                    
                       