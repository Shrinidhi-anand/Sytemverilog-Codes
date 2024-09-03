// Code your testbench here
// or browse Examples

program test;
  int count;
  enum {red,green,blue} colour;
  bit clk;
  
  covergroup my_fcol @(count);
    CP : coverpoint colour;
  endgroup
  my_fcol cov_inst;
  initial clk = 1'b0;
  initial
    begin
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      cov_inst = new();
      
	  colour = red;
      count++;
     
     
      $display("Colour = %s",colour.name);
     
	  colour = green;
      count++;
     
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