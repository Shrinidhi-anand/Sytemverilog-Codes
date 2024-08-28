// Code your testbench here
// or browse Examples
module filet (mem);
  output reg [11:0] mem [2:0];
  
  initial
    begin
      readmemb( "res.txt",mem);
    end
endmodule

module test();
  wire [11:0] mem [2:0];
  filet f1 (mem);
  initial
    begin
      $display("Read %b from the file",mem[0]);
      #50;
    end
endmodule