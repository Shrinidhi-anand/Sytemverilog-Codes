// Code your testbench here
// or browse Examples
program const9;
  packet pkt1;
  
  initial
    begin
      pkt1=new();
     
      repeat(10)
        begin
          if((pkt1.randomize() with {addr1>1;}) == 1)
            $display("\t addr1= %d",pkt1.addr1);
        end
    end
endprogram