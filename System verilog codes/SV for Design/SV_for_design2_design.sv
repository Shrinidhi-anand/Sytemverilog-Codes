// Code your design here


module fsm (clock,resetn);
  input clock;
  input resetn;
  enum {IDLE,LOAD,STORE,WAIT} State,NextState;
  always@(posedge clock or negedge resetn)
    if(!resetn)
      State <= IDLE;
    else
      State <= NextState;
  
  always_comb 
    begin
      case(State)
        IDLE : NextState = LOAD;
        LOAD : NextState = STORE;
        STORE : NextState = WAIT;
      endcase
    end
endmodule


  