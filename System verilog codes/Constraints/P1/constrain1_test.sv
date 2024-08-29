// Code your testbench here
// or browse Examples
program const1;
  packet pkt;
  initial
    begin
      pkt=new();
      repeat(10)
        begin
          if(pkt.randomize())
            $display("\t addr1=%d",pkt.addr1);
          else
            $display("Fail");
        end
    end
endprogram