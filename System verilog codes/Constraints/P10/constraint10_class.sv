// Code your design here

class packet;
  rand bit [2:0]addr1;
  rand bit [2:0]en;
  
  constraint addr_range {addr1 == fn(en);}

  function bit[2:0]fn(bit [2:0]en);
    if(en<3)
      fn=0;
    else
      fn=fn+1;
  endfunction
endclass

