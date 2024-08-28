// Code your testbench here
// or browse Examples
program rand3;
  packet pkt;
  initial
    begin
      pkt = new();
      repeat(10)
        begin
          assert(pkt.randomize())
            begin
              $display("program en=%d",pkt.en);
            end
          else
            $display("Fail");
        end
    end
endprogram