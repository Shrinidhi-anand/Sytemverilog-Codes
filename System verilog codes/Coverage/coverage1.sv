// Code your testbench here
// or browse Examples

module test;
  enum {red,green,blue} colour;
  bit [1:0] my_num;
  int miscompare;
  covergroup my_fcol;
    CP_colour : coverpoint colour { bins a[] = {red,green,blue}; }
    CP_num : coverpoint my_num { bins b[] = {0,1,2}; }
    CP_colourXCP_num : cross CP_colour,CP_num;
  endgroup
  
  my_fcol cov_h;
  
  initial
    begin
      cov_h = new();
      repeat(1)
        begin
          colour = red;
          cov_h.sample();
          #10;
          colour = blue;
          cov_h.sample();
          #10;
          //colour = green;
          //cov_h.sample();
        end
      repeat(1)
        begin
          my_num = 3;
          $display("%d..",my_num);
          cov_h.sample();
          my_num = 2;
          $display("%d..",my_num);
          cov_h.sample();
          my_num = 1;
          $display("%d..",my_num);
          cov_h.sample();
          my_num = 0;
          $display("%d..",my_num);
          cov_h.sample();
        end
      $finish;
    end
endmodule

/*Commands to run coverage in VCS simulator

vcs -lca -sverilog -cm line+fsm+branch+cond+tgl+path+assert testbench.sv
          
simv -gui=dve

urg -lca -dir simv.vdb
urg -lca -dir simv.vdb -show text

OPEN THE GENERATED REPORT using firefox