// Code your design here

class packet;
  rand bit [31:0]array[10];
  
  constraint array_c {unique {array}; foreach ( array[i]) array[i]<12;}
  
endclass

