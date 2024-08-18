// Code your testbench here
// or browse Examples

module dyn_array_reduction();
int a={10,2,7,3,4,4};
int b[];
int i;
int j;
initial
begin
	b=new[6];
	b=a;
	$display(“CONTENTS”);
	foreach(a[i])
		$display(“a %d element is %d”,I,a[i]);

	$display(“Reversing”);
	a.reverse();
	foreach(a[i])
		$display(“%d element is %d”,i,a[i]);

	$display(“Sorting”);
	a.sort();
	foreach(a[i])
		$display(“%d element is %d”,I,a[i]);
	
	$display(“reverse sorting”);
	a.rsort();
	foreach(a[i])	
		$display(“%d element is %d”,i,a[i]);

	$display(“shuffle”);
	a.shuffle();			//shuffles the array elements
	j=a.sum();			//Returns sum of all values in array into j
	j=a.product();			// Returns product of all values in array into j
	j=a.and();			//Returns and result of all values in array
	j=a.or();
	j=a.xor();
	$finish();
end
endmodule

