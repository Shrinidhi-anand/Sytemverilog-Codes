// Code your testbench here
// or browse Examples

program mymail;
  int a,b;
  mailbox mbdata;
  
  initial
    begin
      mbdata = new(2);
      repeat(4)
        begin
          #2;
          $display("@%t [putsize] before put_size = %d",$time,mbdata.num);
          $display("@%t [put] size=%d data=%d",$time , mbdata.num,a);
          a = a+1;
        end
      $display("END");
      #100;
      $finish;
    end
  
  initial
    begin
      repeat(6)
        begin
          #5;
          $display("@%t [get] Before get size=%d",$time,mbdata.num);
          mbdata.get(b);
          $display("@%t [get] size=%d data=%d",$time,mbdata.num,b);
          $display("OUT OF MAILBOX");
        end
    end
endprogram

          
          