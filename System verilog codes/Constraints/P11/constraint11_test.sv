// Code your testbench here
// or browse Examples
program const11;
  packet pkt1;
  
  initial
    begin
      pkt1=new();
      pkt1.randomize();
      $display("array= %p",pkt1.array);
    end
endprogram