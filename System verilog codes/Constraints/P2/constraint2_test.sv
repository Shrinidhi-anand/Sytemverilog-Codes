// Code your testbench here
// or browse Examples
program const2;
  packet pkt1;
  packet1 pkt2;
  initial
    begin
      pkt1=new();
      pkt2=new();
      $display("Parent randomization");
      repeat(5)
        begin
          void'(pkt1.randomize());
          $display("\t addr1=%d",pkt1.addr1);
        end
      
      $display("Child randomization");
      repeat(5)
        begin
          void'(pkt2.randomize());
          $display("\t addr1=%d",pkt2.addr1);
        end
      
    end
endprogram