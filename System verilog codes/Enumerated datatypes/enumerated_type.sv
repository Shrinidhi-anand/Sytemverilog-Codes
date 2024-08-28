// Code your testbench here
// or browse Examples
module enum1;
  //enum bit [2:0]{red, green, blue = 3'b111, yellow=3'b000,white,black} colors;
  enum logic [2:0]{blue,yellow,white,black} colors;
  //blue = 3'b100;
  
  initial
  begin
    //colors can hold one value at a time
    $display("colors: %p",colors);
    colors = colors.first;
    $display("colors: %d",colors);
    $display("colors: %p",colors);//If %d is used as format specifier value is returned but if %p is used key is returned
    $display("colors: value of %0s \t is %0d", colors.name , colors.first);
    for(int i=0;i<6;i++)
      begin
        $display("colors: value of %0s \t is %0d",colors.name,colors);		//.name() is an inuilt function for enumerated datatypes
        colors = colors.next;
      end
     colors = colors.last;
    $display("colors: value of %0s \t is %0d",colors.name,colors);
  end
endmodule