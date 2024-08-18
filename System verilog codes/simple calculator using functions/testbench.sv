// Code your testbench here
// or browse Examples

module fn_simple_calc;
wire [15:0]sum,diff,prod,quot;
logic [14:0]x,y;
logic [6:0]l,n;
logic [1:0]i;
logic rst;
integer mcmp;
reg [15:0]e;
fn_sc F1(x,y,l,m,I,sum,diff,prod,quot,rst);

function logic [15:0]  add(input logic [14:0] a=0,b=0);
	add=a+b;
endfunction
function logic [15:0]  sub(input logic [14:0] a=0,b=0);
	add=a-b;
endfunction
function logic [15:0]  mul(input logic [6:0] a=1,b=1);
mul=a*b;
endfunction
function logic [15:0]  div(input logic [6:0] a=1,b=1);
	div=a/b;
endfunction
function start();
	$display(“Starting Execution”);
endfunction
function stop();
	$display(“Finished execution”);
endfunction

initial
begin
	start();
	rst=1;
	$40;
	rst=0;
	repeat(10)
	begin
		if(rst)
			e=0;
		else
		begin
			i=$random;
			x=$random;
			y=$random;
			l=$random;
			m=$random;
			#20;
			
			case(i)
			2’d0:
			begin
				e=add(x,y);
				$display(“Result: i=%d x=%d y=%d sum=%d”,i,x,y,e);
				if(sum==e)
				begin
					$display(“%d……Pass! sum=%d e=%d”,$time,sum,e);
				end
				else
				begin
					$display(“%d……Pass! sum=%d e=%d”,$time,sum,e);
					mcmp=mcmp+1;
				end
			end

			2’d1:
			begin
				e=sub(x,y);
				$display(“Result: i=%d x=%d y=%d diff=%d”,i,x,y,e);
				if(diff==e)
				begin
					$display(“%d……Pass! diff=%d e=%d”,$time,sum,e);
				end
				else
				begin
					$display(“%d……Pass! diff=%d e=%d”,$time,diff,e);
					mcmp=mcmp+1;
				end
			end
		
			2’d2:
			begin
				e=mul(l,m);
				$display(“Result: i=%d x=%d y=%d prod=%d”,i,l,m,e);
				if(prod==e)
				begin
					$display(“%d……Pass! prod=%d e=%d”,$time,prods,e);
				end
				else
				begin
					$display(“%d……Pass! prod=%d e=%d”,$time,prod,e);
					mcmp=mcmp+1;
				end
			end
			
			2’d3:
			begin	
				e=div(l,m);
				$display(“Result: i=%d x=%d y=%d div=%d”,i,l,m,e);
				if(quot==e)
				begin
					$display(“%d……Pass! quot=%d e=%d”,$time,prod,e);
				end
				else
				begin
					$display(“%d……Pass! quot=%d e=%d”,$time,quot,e);
					mcmp=mcmp+1;
				end
			end
			default:
			begin
				e=0;
			end
			endcase
		end
		$display(“************”);
	end
	if(mcmp>0)
		$display(“Some cases have failed!”);
	else
		$display(“All cases passed”);
	stop();
	$finish();
end
endmodule
