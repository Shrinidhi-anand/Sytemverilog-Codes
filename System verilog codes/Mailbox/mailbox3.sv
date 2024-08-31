// Code your testbench here
// or browse Examples

program mymail;
  
  mailbox #(pkt) mbdata;
  int i,j;
  pkt p1,p2;
  
  initial
    begin
      mbdata = new();
      repeat(3)
        begin
          p1=new();
          p1.a = $random;
          p1.b = $random;
          mbdata.put(p1);
          $display("@%t mbox put size=%d a=%d b=%d",$time,mbdata.num,p1.a,p1.b);
        end
      #100;
      $finish;
    end
  
  initial
    begin
      while(1)
        begin
          #1;
          p2 = new();
          $display("@%t mbox get size=%d",$time,mbdata.num);
          mbdata.get(p2);
          $display("@%t mbox get a:%d b:%d",$time,p2.a,p2.b);
        end
    end
endprogram

  
  
 

          
          