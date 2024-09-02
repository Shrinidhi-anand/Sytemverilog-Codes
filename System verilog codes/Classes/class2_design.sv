// Code your design here


package defs_pkg;
typedef enum {WRITE,READ} enum_t;
endpackage
import defs_pkg :: *;

class packet;
  bit [10:0] addr;
  bit [31:0] data;
  enum_t wr;
  function void print();
    $display("[Function:Packet] addr=%d data=%d wr=%s \n",addr,data,wr.name());
  endfunction
  task generat();
    addr = $urandom_range(2,7);
    data = $urandom_range(89,200);
    endtask
    
endclass
    