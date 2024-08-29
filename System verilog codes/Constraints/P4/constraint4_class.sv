// Code your design here

class packet;
  rand bit [2:0]addr1;
  rand bit [2:0]addr2; 
  constraint addr_range {addr1 dist { 2 := 5, [5:7]:=8}; }
  constraint addr_range1 {addr2 dist { 2 :/ 5, [5:7]:/8}; }
endclass

