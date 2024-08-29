// Code your design here

class packet;
  rand bit [2:0]addr1;
  constraint addr_range;
endclass
constraint packet::addr_range{ addr1>2;}