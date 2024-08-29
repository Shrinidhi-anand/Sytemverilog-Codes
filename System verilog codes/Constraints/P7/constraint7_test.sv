// Code your testbench here
// or browse Examples
program const7
  packet pkt1;
  
  initial
    begin
      pkt1=new();
     
      repeat(5)
        begin
          pkt1.addr1 = new[6];
          void'(pkt1.randomize());
          $display("addrsize=%d",pkt1.addr1.size);
          foreach(pkt1.addr1[i])
            $display("addr = %d",pkt1.addr1[i]);
        end
      
    end
endprogram