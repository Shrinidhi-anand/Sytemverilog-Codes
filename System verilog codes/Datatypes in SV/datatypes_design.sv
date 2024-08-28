// Code your design here

module adder(A,B,Y);
  input [2:0]A,B;
  output reg [3:0]Y;
  always@(A,B)
  begin
    Y=A+B;
  end
endmodule