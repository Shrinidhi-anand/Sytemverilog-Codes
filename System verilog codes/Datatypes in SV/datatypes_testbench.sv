// Code your testbench here
// or browse Examples
module datatypes();
  logic [2:0] A;
  logic [2:0] B;
  logic [3:0] Y;
  logic [2:0] P;
  integer i;
  int j;
  bit [3:0] b;
  byte c;
  logic [3:0]l;
  adder a1 ( .A(A),.B(B),.Y(Y));
  initial
    begin
      $display("@%d...Value of i=%d A=%d B=%d Y=%d",$time,i,A,B,Y);
      $display("@%d...Initial value of bit b=%b byte c=%b",$time,b,c);
      $display("@%d...Initial value of logic l=%d",$time,l);
      
      A=10;
      $display("@%d... Value of logic A=%b",$time,A);
      
      i=4'b01xz;
      $display("@%d... Value of integer i=%b",$time,i);
      
      j=10;
      $display("@%d... Value of int j=%b",$time,j);
      
      j=4'b01xz;
      $display("@%d... Value of int j=%b",$time,j);
      
      b=10;
      $display("@%d... Value of bit b=%b",$time,b);
      
      b=4'b01xz;
      $display("@%d... Value of bit b=%b",$time,b);
      
      c=10;
      $display("@%d... Value of byte c=%b",$time,c);
      
      c=4'b01xz;
      $display("@%d... Value of byte c=%b",$time,c);
      
      l=10;
      $display("@%d... Value of logic l=%b",$time,l);
      
      l=4'b01xz;
      $display("@%d... Value of logic l=%b",$time,l);
      $finish;
    end
endmodule