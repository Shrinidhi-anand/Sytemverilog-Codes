// Code your testbench here
// or browse Examples
program const4;
  packet pkt1;
  
  initial
    begin
      pkt1=new();
    
      repeat(10)
        begin
          void'(pkt1.randomize());
          $display("\t addr1=%d",pkt1.addr1);
          $display("\t addr2=%d",pkt1.addr2);
        end
      
    end
endprogram