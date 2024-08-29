// Code your design here

class packet;
  rand bit [2:0]addr1;
  constraint addr_range {!(addr1 inside {[2:5]});}
endclass

