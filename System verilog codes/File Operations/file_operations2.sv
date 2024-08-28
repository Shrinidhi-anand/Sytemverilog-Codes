// Code your testbench here
// or browse Examples
module filet (mem);
  input [4:0]b,c;
  output reg [4:0]a;
  integer file;
  reg a,b,c;
  initial
    begin
      file = $fopen("res.txt");	//Open file res.txt
      a=b+c;
      $fdisplay(file,"Res:%d",a);
      $fclose(file);
    end
endmodule

module test();
  reg [4:0]b,c;
  wire [4:0]a;
  
  filet f1(mem);
  initial
    begin
      b=5;
      c=10;
      #50;
    end
endmodule