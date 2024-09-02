// Code your testbench here
// or browse Examples

program test;
  packet pkt;
  initial
    begin
      pkt = new();
      pkt.write(30);
      $display("1. AFTER write :: pkt.y = %d ",pkt.y);
      pkt.this_write(50);
      $display("1. AFTER this write :: pkt.y = %d ",pkt.y);
    end
endprogram