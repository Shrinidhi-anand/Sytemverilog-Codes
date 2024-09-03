// Code your testbench here
// or browse Examples

program test();
  bit [4:0] a,b;
  covergroup tr_cov;
    CP_a : coverpoint a {
      bins u[] = (1,2 =>2,3);
      bins v = (4 => 5 => 6), (7=>8);
      bins w[] = (4=>5=>6),(7=>8);
      bins y = (9=>10, 7=>4);
      bins z[] = ([8:3]=>[4:6]);
      bins bad = default;
    }
    CP_ab : coverpoint b {
      bins a = {1,8};
      bins b[] = {0,10};
      bins bad = default;
    }
  endgroup
  tr_cov cov_h;
  
  initial
    begin
      cov_h = new();
      a = 1;
      cov_h.sample();
      #10;
      a = 2;
      cov_h.sample();
      #10;
      a = 4;
      cov_h.sample();
      #10;
      a = 5;
      cov_h.sample();
      #10;
      a = 6;
      cov_h.sample();
      #10;
      a = 7;
      cov_h.sample();
      #10;
      a = 8;
      cov_h.sample();
      #10;
      a = 9;
      cov_h.sample();
      #10;
      a = 10;
      cov_h.sample();
      #10;
      a = 4;
      cov_h.sample();
      #10;
      a = 7;
      cov_h.sample();
      #10;
      a = 4;
      cov_h.sample();
      #10;
      b = 0;
      cov_h.sample();
      #10;
      b = 10;
      cov_h.sample();
      #10;
      $display("Functional coverage is %d", cov_h.get_coverage);
      $finish();
    end
endprogram
      
/*Commands to run coverage in VCS simulator

vcs -lca -sverilog -cm line+fsm+branch+cond+tgl+path+assert testbench.sv
          
simv -gui=dve

urg -lca -dir simv.vdb
urg -lca -dir simv.vdb -show text

OPEN THE GENERATED REPORT using firefox*/