// Code your testbench here
// or browse Examples
program const5;
  packet pkt1;
  
  initial
    begin
      pkt1=new();
      pkt.addr_range = "small";
      repeat(10)
        begin
          void'(pkt1.randomize());
          $display("\t addr1=%d",pkt1.addr1);
        end
      
    end
endprogram