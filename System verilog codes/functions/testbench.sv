// Code your testbench here
// or browse Examples

module fn();
logic [5:0]add;
logic [2:0]x,y;
string s1;

function void prints(“Input string s=”Hello”);
	$display(“%s”,s);
endfunction

initial 
begin
	void `(printf() );
	s1=”Today is Tuesday”;
	prints(s1);
	prints(“Functions started”);
	prints();
	add=sum(2,3);
	$display(“(Main-1)……add=%d”,add);
	#20;

	x=4;
	y=2;
	add=sum(x,y);
	$display(“ (Main-2)….add=%d”,add);
	#20;
	add = sum(.a(3),.b(4));
	$display(“[Main-3]…add=%d”,add);
	#20;
	add=sum(6,6);
	$display(“[Main-3]…add=%d”,add);
	#20;
	add=sum(5,);
	$display(“[Main-3]…add=%d”,add);
	#20;
	add=sum(,2);
	$display(“[Main-3]…add=%d”,add);
	#20;
	x=5;
	add=sum(x,.b(6));
	$display(“[Main-3]…add=%d”,add);
	#20;
	$display(“Ending testing”);
$finish();
end
endmodule
