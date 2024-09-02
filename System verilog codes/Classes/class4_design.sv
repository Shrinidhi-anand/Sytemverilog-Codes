// Code your design here


package defs_pkg;
typedef enum {WRITE,READ}enum_t;
endpackage

import defs_pkg :: *;

class packet;
  bit [7:0]addr;
  bit [31:0]wdata;
  enum_t wr;
  function void print();
    $display("[Packet] addr =%d wdata=%d wr=%s",addr,wdata,wr.name());
  endfunction
  
  task run();
    addr = $urandom_range(1,30);
    wdata=$urandom_range(20,200);
  endtask
  
  function new (input int a1,input int a2);
    addr = a1;
    wdata = a2;
  endfunction

endclass
  