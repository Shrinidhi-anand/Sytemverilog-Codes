// Code your testbench here
// or browse Examples

program test;
  event ev;
  enum {red,green,blue} colour;
  bit clk;
  bit [1:0] num;
  
  covergroup my_fcol @(ev);
    CP : coverpoint colour;
    CPn : coverpoint num;
  endgroup
  my_fcol cov_inst;
  initial
    begin
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      cov_inst = new();
      
	  colour = red;
      num = 0;
      -> ev;
      $display("Colour = %s",colour.name);
     
	  colour = green;
      num = 3;
      -> ev;
      $display("Colour = %s",colour.name);
     
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