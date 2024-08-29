// Code your design here

class packet;
  rand bit [2:0]addr1;
  string addr_range;
  constraint address_range {(addr_range == "small") ->(addr1<5); }
  constraint address_range1 {(addr_range =="big") -> (addr1<3); }
endclass

