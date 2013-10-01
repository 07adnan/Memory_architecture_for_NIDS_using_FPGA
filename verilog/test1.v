module test1;

reg clk;
reg reset;

reg [7:0] input_ch;

wire ifFinal;

top_pattern t1(clk,reset,input_ch,ifFinal);
  
initial
	begin
		clk = 0;
		reset = 1;
		input_ch = 8'd97;
	#10 	
		reset = 0;
        #10	input_ch = 8'd112;
	#10     input_ch = 8'd111;
	#10     input_ch = 8'd119;
	#10     input_ch = 8'd101;
	#10     input_ch = 8'd102;
	#10     input_ch = 8'd103;
	#10     input_ch = 8'd104;
	#50	$finish;
end

always #5 clk = ~clk;
endmodule   
	   
	   
