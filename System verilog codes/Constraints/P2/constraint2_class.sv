// Code your design here

class packet;
  rand bit [2:0]addr1;
  constraint addr_range {addr1 > 1; }
endclass

class packet1 extends packet;
  constraint addr_range1 {addr1 < 6;}
endclass