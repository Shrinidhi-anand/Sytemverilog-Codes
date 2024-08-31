// Code your testbench here
// or browse Examples

program mymail;
  int a,b;
  mailbox mbdata;
  
  initial
    begin
      mbdata = new();
      repeat(8)
        begin
          #1;
          $display("@%0t [putsize] before put_size = %0d",$time,mbdata.num);
          mbdata.put(a);
          $display("@%0t [put] size=%0d data=%0d",$time , mbdata.num,a);
          a = a+1;
        end
      $display("END");
      #100;
      $finish;
    end
  
  initial
    begin
      while(1)
        begin
          #2;
          $display("@%0t [get] Before get size=%0d",$time,mbdata.num);
          mbdata.peek(b);
          $display("@%0t [get] size=%0d data=%0d",$time,mbdata.num,b);
          $display("OUT OF MAILBOX");
        end
    end
endprogram

          
          