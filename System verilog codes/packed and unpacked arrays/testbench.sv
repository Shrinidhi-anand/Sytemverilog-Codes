// Code your testbench here
// or browse Examples

module arrays;

int array1[7];
  int array2[5:0];
int array6[7];
int array3[2:0][3:0];
int array5[4:0][5:0];
bit [0:2][0:3]array4;
int val;
int I,j;

initial 
begin
	array1={0,1,2,3,4,5,6};
	array2={0,1,2,3,4,5};
  	array3= { {0,1,2,3}, {4,5,6,7}, {8,9,10,11} };
  	array4= { {69,1,0,0},{1,1,1,1}, {0,0,0,0} };
	for(i=1; i<8; i++)
	begin
		val++;
		array6[i];
	end

	$display(******Displaying array1******”);
	foreach(array1[i])
      $display("\t array1[%0d]=%0d", i, array1[i]);
	
	$display(******Displaying array2******”);
	for(i=0; i<6; i++)
      $display("\t array2[%0d]=% 0d",I,array2[i]);
		
	$display(******Displaying array3******”);
	foreach( array3[i,j] )
      $display("\t array3[%0d][%0d]=%0d",i,j,array3[i][j] );

	$display(******Displaying array4******”);
	for(i=0;i<3;i++)
		for(j=0,j<4;j++)
          $display("\t array4[%0d][%0d]=%0d",i,j,array[i][j]);
	
	$display(******Displaying array5******”);
	foreach( array5[i,j] )
		array5 [i] [j] = array1[4];
  $display("\t array5[%0d][%0d]=%0d",i,j,array5[i][j] );

	$display(******Displaying array6******”);
	foreach(array6[i])
      $display("\t array6[%0d]=%0d",i,array6[i]);

	if(array1==array6)
	begin
      $display("\n");
      $display("******MISSION PASS! respect++******");
      $display("******array1==array6******");
	end
	else
      $display("MISSION FAILED! We’ll get ‘em next time");
end

endmodule
