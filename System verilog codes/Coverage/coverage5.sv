// Code your testbench here
// or browse Examples

program coverage();
  test t1;
  initial
    begin
      t1 = new();
      t1.reset = 0;
      t1.cov.sample();
      t1.a = 21;
      t1.cov.sample();
      t1.a = 21;
      t1.cov.sample();
      #1;
      t1.a = 0;
      t1.b = 0;
      t1.cov.sample();
      #1;
      t1.a = 0;
      t1.b = 1;
      t1.cov.sample();
      #1
      t1.a = 1;
      t1.b = 0;
      t1.cov.sample();
      #1
      t1.a = 1;
      t1.b = 1;
      t1.cov.sample();
      t1.a = 25;
      t1.cov.sample();
      #10
      t1.a = 0;
      t1.b = 0;
      t1.cov.sample();
      
      t1.a = 24;
      t1.b = 0;
      t1.cov.sample();
      t1.a = 21; t1.b = 0;
      t1.cov.sample();
      
      t1.a = 1;
      t1.b = 1;
      t1.cov.sample();
      
      t1.a = 5;
      t1.cov.sample();
      
      t1.a = 7;
      t1.cov.sample();
      
      t1.a = 22;
      t1.cov.sample();
      #20;
      
      t1.a = 151;
      t1.cov.sample();
      t1.a = 135;
      t1.cov.sample();
      t1.a = 120;
      t1.cov.sample();
      t1.a = 200;
      t1.cov.sample();
      $display("Instance coverage is %e",t1.cov.get_coverage());
      #20;
      $finish();
    end
endprogram
/*Commands to run coverage in VCS simulator

vcs -lca -sverilog -cm line+fsm+branch+cond+tgl+path+assert testbench.sv
          
simv -gui=dve

urg -lca -dir simv.vdb
urg -lca -dir simv.vdb -show text

OPEN THE GENERATED REPORT using firefox*/