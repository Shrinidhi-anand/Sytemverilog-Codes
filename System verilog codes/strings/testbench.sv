// Code your testbench here
// or browse Examples

module strings();
string str1=”RTL DESIGN”;
string str2=”RTL VERIFICATION”;
string str3=”RTL STUDENTS”;
string str4=”RTL”;
string str5=”DESIGN”;
string str9;
string str_cat;
int sum,num;
string stsize,comp,comp1,inte,val,str7;
byte st_get,v;
string str4=”INDIA”;
initial
begin
	str1.atoi();
	$display(“Result is %d”,str1);
	str9.itoa(66);
	$display(I to a %s”str9);

	if(str1==str2)
		$display(“String s1 = %s and s2=%s are equal” ,str1,str2);
	if(str1!=str3)
	begin
		$display(“The two strings str1 = %s and str3=%s aren’t equal”,str1,str3);
	$display(“Concatenated string is %s”,{str1,str3});

	foreach(str1[i])
	begin
		$display(“Indexed character is %s”,str1[i]);
		sum=sum+1;
	end
	$display(“Sum of ASCII values in string is %d”,sum);
	stsize=str3.len();	//Returns length of string
	str2.getc(4)		//Returns character in 4th index
	str3.putc(1,”f”);		//pushes character f into 1st index
	str_cat={str1,”&”,str2};	//Concatenation
	uc=str3.toupper(); 	//Convert to uppercase
	lc=dtr3.tolower();	//Convert to lowercase
	subs=str1.substr(3,6);	//returns string from 3rd index to 6th index
	num=str1.compare(str2);	//num is a Boolean value 	
	$finish();
end
endmodule

7.Full adder (Stratified event queue)
Design:
module fa_d(a_d,b_d,c_d,sum_d,carry_d);
input a_d,b_d,c_d;
output reg sum_d,carry_d;
always@(a_d,b_d,c_d)
begin
	sum_d=a_d^b_d^c_d;
	carry_d=( (a_d)&(b_d) )| c_d & (a_d | b_d);
end
endmodule
