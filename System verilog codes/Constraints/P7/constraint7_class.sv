// Code your design here

class packet;
  rand bit [2:0]addr1[];
  constraint address_range {foreach (addr1[i])
    addr1[i] inside {2,3,6};}
                     
endclass

