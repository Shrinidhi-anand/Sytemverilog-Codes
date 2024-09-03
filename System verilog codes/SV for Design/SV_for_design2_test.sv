// Code your testbench here
// or browse Examples

module tb_fsm;
  reg clk,resetn;
  fsm fsm_inst ( clk,resetn);
  initial
    begin
      clk = 0;
      resetn = 1;
      #1 resetn = 0;
      #3 resetn = 1;
      #50 $finish;
    end
  always #5 clk = ~clk;
  final
  begin
    $display("%d...We are doing procedural block",$time);
  end
endmodule