// Code your testbench here
// or browse Examples

module queue();
  int q[$] = {2,4,8,10,12,14};
  int p[$] = {};
  int e,pos;
  int k,i;
  int fronte,backe;
  initial
    begin
      $display("Displaying elements of q");
      $display("1. %p",q);
      foreach(q[i])
        $display("Inside foreach %d",q[i]);
      $display("%p",q);
      
      e = q[0];
      $display("@%t...e=%d",$time,e);
      e = q[$];
      $display("@%t...e=%d",$time,e);
      $display("2. %p",q);
      
      q[0] = e;
      $display("Displaying elements of q");
      foreach(q[i])
        $display("%d elements is %d",i,q[i]);
      p = q;
      $display("Displaying elements of p");
      foreach(p[i])
        $display("%d elements is %d",i,p[i]);
      
      q = {q,6};
      $display("Displaying elements of q");
      foreach(q[i])
        $display("%d elements is %d",i,q[i]);
      
      q = {168,q};
       $display("Displaying elements of q");
      foreach(q[i])
        $display("%d elements is %d",i,q[i]);
      
      q = q [1:$];
      $display("Displaying elements of q");
      foreach(q[i])
        $display("%d elements is %d",i,q[i]);
      
      q = q[1:$-1];
       $display("Displaying elements of q");
      foreach(q[i])
        $display("%d elements is %d",i,q[i]);
      
      e = 400;
      pos = 3;
      $display("e=%d pos=%d",e,pos);
      $display("Queue size = %d",q.size());
      
      q = {q[0:pos-1],e,q[pos:$] };
      for( int j = 0;j<=q.size()-1;j++)
        $display("%d element is %d",j,q[j]);
      $display("||||||||||||||||||||");
      
      k = 0;
      q.push_front(13);
      $display("Push Front");
      while(k<=q.size() - 1)
        begin
          $display("%d element is %d",k,q[k]);
          k=k+1;
        end
      
      $display("Push Front");
      q.push_front(124);
      foreach(q[i])
         $display("%d elements is %d",i,q[i]);
      
      $display("Push Back");
      q.push_back(70);
      q.push_back(229);
      foreach(q[i])
         $display("%d elements is %d",i,q[i]);
      
      fronte = q.pop_front();
      backe = q.pop_back();
      $display("pop...fe = %d...be = %d",fronte,backe);
      $display("Again displaying");
      foreach(q[i])
        $display("%d element is %d",i,q[i]);
      q.insert(4,18);
       $display("Again displaying");
      foreach(q[i])
        $display("%d element is %d",i,q[i]);
      #1000;
      $finish;
    end
endmodule