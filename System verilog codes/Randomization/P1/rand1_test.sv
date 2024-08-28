// Code your testbench here
// or browse Examples
program rand1;
  packet pkt;
  initial
    begin
      pkt = new();
      repeat(20)
        begin
          void'(pkt.randomize());	//inverted comma
          $display("\t addr1=%0d \t addr2=%0d", pkt.addr1,pkt.addr2);
        end
    end
endprogram