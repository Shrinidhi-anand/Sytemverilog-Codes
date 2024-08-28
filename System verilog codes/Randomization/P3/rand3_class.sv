// Code your design here

class packet;
  rand bit [2:0]addr;
  randc bit [2:0]data;
  rand bit en;
  bit en_pin;
  
  function void pre_randomize();
    $display("Inside pre-randomize");
    $display("\t en=%d",en_pin);
    if(en_pin==0)
      begin
        addr.rand_mode(0);
        data.rand_mode(1);
      end
    else
      begin
        addr.rand_mode(1);
        data.rand_mode(0);
      end
  endfunction
endclass