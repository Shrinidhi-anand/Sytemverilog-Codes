// Code your design here

class packet;
  rand bit [2:0]addr1;
  string addr_range;
  constraint address_range {if(addr_range == "small")
    addr1==3'b0101;
                            else
                              addr1>4;}
                     
endclass

