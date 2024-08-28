// Code your testbench here
// or browse Examples
program rand2;
  packet pkt;
  initial
    begin
      pkt = new();
      repeat(5)
        begin
          if(pkt.randomize())
            $display("\t addr=%d \t data=%d",pkt.addr,pkt.data);
          else
            $display("Failed");
        end
      
      repeat(5)
        begin
          $display("randomization off to addr and data");
          pkt.rand_mode(0);
          void'(pkt.randomize());
          $display("\t addr=%d \t data=%d",pkt.addr,pkt.data);
        end
      
      repeat(5)
        begin
          $display("randomization off to addr");
          pkt.rand_mode(1);
          void'(pkt.randomize());
          $display("\t addr=%d \t data=%d",pkt.addr,pkt.data);
        end
    end
endprogram