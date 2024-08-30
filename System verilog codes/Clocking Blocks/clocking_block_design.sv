// Code your design here

interface arb_interface (input bit clk,reset);
  logic [1:0]gnt,req;
  logic [1:0] temp_gnt;
  
  clocking cb @(posedge clk)
    output reg;
    input gnt;
  endclocking
  
  assign clk1 = !clk;
  clocking cb2 @(posedge clk1);
    output req;
  endclocking
  
  modport FOR_TB (input reset, clocking cb, clocking cb2);
    
endinterface



module arbiter (clk,reset,req,gnt);
  input clk,reset;
  input [1:0]req;
  output [1:0]gnt;
  wire clk,reset;
  wire [1:0]req;
  reg [1:0]gnt;
  
  always@(posedge clk)
    begin
      if(reset)
        gnt <= 2'b00;
      else
        begin
          if(req == 2'b01)
            gnt <= 2'b01;
          else
            gnt <= 2'b11;
        end
    end
endmodule

    program testbench (arb_interface.FOR_TB arbif);
      int i;
      initial
        begin
          
          repeat(5)
            begin
              arbif.cb.req <= 1;
              if(arbif.cb.req == 1)
                $display("1");
              else
                $display("2");
              i=i+1;
            end
          $finish;
        end
      initial
        begin
          while (1)
            begin
              @(arbif.cb)
              if(arbif.cb.gnt == 2'b01)
                $display("recvd gnt 01 at %t",$time);
              else
                $display("recvd gnt 00/10/11 at %t",$time);
            end
        end
     	
endprogram

