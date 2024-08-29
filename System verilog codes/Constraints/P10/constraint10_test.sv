// Code your testbench here
// or browse Examples
program const10;
  packet pkt1;
  
  initial
    begin
      pkt1=new();
     
      repeat(3)
        begin
          assert(pkt1.randomize())
            $display("\t addr1= %d en=%d",pkt1.addr1,pkt1.en);
        end
    end
endprogram