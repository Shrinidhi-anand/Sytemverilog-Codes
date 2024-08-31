// Code your testbench here
// or browse Examples

program bus_contention;
  semaphore sbus = new(2);
  
  task block_bus (string name, integer busval);
    $display("[@t]:%s gets key and is going to block the shared bus for 50 time units to write the value %d",$time,name,busval);
    #50;
  endtask
  
  initial
    begin
      fork
        begin
          #55;
          $display("@%t: CPU1 requests key",$time);
          sbus.get(1);
          block_bus("CPU",1000);
          $display("@%t: CPU1 returns key",$time);
          sbus.put(1);
          #10;
          
          $display("@%t: CPU1 requests key",$time);
          sbus.get(1);
          block_bus("CPU",1000);
          $display("@%t: CPU1 returns key",$time);
          sbus.put(1);
        end
        
        begin
          #25;
          $display("@%t: CPU2 requests key",$time);
          sbus.get(2);
          block_bus("CPU2",2000);
          $display("@%t: CPU2 returns key",$time);
          sbus.get(1);
          #25;
          $display("@%t: CPU2 requests key",$time);
          sbus.get(1);
          block_bus("CPU2",4000);
          $display("@%t: CPU2 returns key",$time);
          sbus.put(1);
        end
      join
      #25;
      $display("@%t FINISHED SIMULATION",$time);
    end
endprogram