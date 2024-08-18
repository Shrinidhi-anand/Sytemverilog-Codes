// Code your testbench here
// or browse Examples

module dyn_array();
int dyn_a[];
int dyn_b[];
logic 31:0 dyn_c[];
string b;
int j;
int dyn_a_size;

initial
begin
	dyn_a_size=dyn_a.size();
	$display(“Size of dynamic array a=%d”,dyn_a_size);
	$display(“array=%p”,dyn_a);
	dyn_a=new[5];
	dyn_a_size= dyn_a.size();
	$display(“Size of dynamic array a=%d”,dyn_a_size);
	#100;
	foreach(dyn_a[i])
		$display(“For each %d element is %d”,I,dyn_a[i]);
	for(int i=0;i<dyn_a_size;i=i+1);
		$display(“For loop: %d element is %d”,I,dyn_a[i]);

	$display(“**************************************************”);
	dyn_a={15,163,29,80,90};
	dyn_a[0]=15;
	dyn_a[2]=163;
	foreach(dyn_a[i])
		$display(“%d element is %d”,I,dyn_a[i]);

	j=0;
	$display(“using while statement”);
	while ( j< dyn_a_size-1)
	begin
		$display(“% element is %d”,j,dyn_a[j]);
		j=j+1;
	end
	
	$display(“Array b”);
	dyn_b=new[10];
	dyn_b[3:9]=dyn_a;
foreach(dyn_b[i])
	$display(“%d element is %d”,I,dyn_b[i]);

$display(“Array c”);
dyn_c=new[10];
foreach(dyn_c[i])
	$display(“%d element is %b”,I,dyn_c[i]);

dyn_a_size=dyn_a.size();
$display(“Size of the dynamic array a =%d”,I,dyn_a_size)
foreach(dyn_a[i])
	$display(“%d element is %d”,I,dyn_a[i]);

dyn_a[].delete();
$display(“After deleting %d”,dyn_a.size);
foreach(dyn_a[i])
	$display(“%d element is %d”,I,dyn_a[i]);	

$display(“STRING ARRAYS”);
b=”system Verilog classes”;
foreach(b[i])
	$write(“%s”,b);
foreach(b[i])
	$display(“%s”,b);
$finish;
end
endmodule	
