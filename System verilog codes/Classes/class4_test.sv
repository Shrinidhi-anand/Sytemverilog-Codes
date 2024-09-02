// Code your testbench here
// or browse Examples

program test4  ;
  packet pkt1,pkt2,pkt3;
  initial
    begin
      pkt1 = new(5,10);
      pkt2 = new(6,66);
      pkt3 = new(0,0);
      pkt1.wr = READ;
      pkt1.print();
      pkt1.run();
      pkt1.print();
      pkt2.print();
      pkt3.print();
    end

endprogram