// Code your testbench here
// or browse Examples
program const8;
  packet pkt1;
  
  initial
    begin
      pkt1=new();
     
      repeat(5)
        begin
          pkt1.addr1 = new[6];
          void'(pkt1.randomize());
          $display("addrsize=%d",pkt1.addr1.size);
        end
          			pkt.addr_range.constraint_mode(0);
          
          $display("After disbaling constraint");
          repeat(10)
            begin
               void'(pkt1.randomize());
          $display("addrsize=%d",pkt1.addr1.size);
            end
          
          pkt.addr_range.constraint_mode(1;
          
                                         $display("After enabling constraint");
          repeat(10)
            begin
               void'(pkt1.randomize());
          $display("addrsize=%d",pkt1.addr1.size);
            end
    end
endprogram