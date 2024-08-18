// Code your testbench here
// or browse Examples

module ass_array();
  integer asc_a[*];
int asc_a_size;
int i,j;

initial
begin
	asc_a_size=asc_a.size();
  $display("Size of asc array%0d",asc_a.size() );
	asc_a[15]=278;
	asc_a[20]=205;
	asc_a[15]=12;
	asc_a[20]=492;
	asc_a[16]=65;
  $display("Ascending order..: Elements are %p",asc_a);
	asc_a_size=asc_a.num();
  $display("Size of asc_array = %0d",asc_a_size);
  if(asc_a.first(i))
	begin
		do
          display("Ascending order..: %0d element is %d",i,asc_a[i]);
        while(asc_a.next(i));
	end
	else
      $display("Array empty");

	if(asc_a.exists(15)==1)
      $display("Found: element is %0d",asc_a[15]);
	else
      $display("Not found: element is %0d",asc_a[15]);
	
	if(asc_a.exists(6)==1)
      $display("Found: element is %0d",asc_a[6]);
	else
      $display("Not found:element is %0d",asc_a[6]);

	if( asc_a.first(i) )	
	begin
		do
          $display("Ascending order..:%0d element is %0d",i,asc_a[i] );
		while(asc_a.next(i));
	end
	else
      $display("Array empty");

	if( asc_a.last(j) )	
	do
      $display("Descending order..: %d element is %0d",j,asc_a[j]);
	while(asc_a.prev(j));
  
  	$display("last..: %0d element is %0d",j,asc_a.last(j) );
  	$display("last..: %0d element is %0d",j,asc_a.prev(j) );
	asc_a.delete(20);
  asc_a_size=asc_a.num();
  $display("Size of asc array = %0d",asc_a_size);
	$finish;
end
endmodule

