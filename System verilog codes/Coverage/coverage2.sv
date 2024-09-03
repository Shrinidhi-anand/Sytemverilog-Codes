// Code your testbench here
// or browse Examples

program test;
  enum {red,green,blue} colour;
  bit clk;
  
  covergroup my_fcol @(posedge clk);
    CP : coverpoint colour;
  endgroup
  my_fcol cov_inst;
  initial
    begin
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      cov_inst = new();
      @(posedge clk);
	  colour = red;
      $display("Colour = %s",colour.name);
      @(posedge clk);
	  colour = green;
      $display("Colour = %s",colour.name);
      @(posedge clk);
      @(posedge clk);
      $display("Functional coverage is %d",cov_inst.get_coverage);
      $finish();
    end
endprogram
      
      
/*Commands to run coverage in VCS simulator

vcs -lca -sverilog -cm line+fsm+branch+cond+tgl+path+assert testbench.sv
          
simv -gui=dve

urg -lca -dir simv.vdb
urg -lca -dir simv.vdb -show text

OPEN THE GENERATED REPORT using firefox*/