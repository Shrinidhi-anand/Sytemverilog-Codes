// Code your testbench here
// or browse Examples

program test;
  packet pkt1,pkt2;
  initial
    begin
      pkt1 = new();
      pkt2 = new();
      pkt1.wr = READ;
      pkt1.addr = 10;
      pkt1.data = 55;
      pkt2.wr = WRITE;
      pkt2.addr = 20;
      pkt2.data = 66;
      pkt1.print();
      pkt2.print();
      pkt1.generat();
      pkt1.print();
      pkt2.generat();
      pkt2.print();
    end
endprogram