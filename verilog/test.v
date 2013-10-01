module test;

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
        #10	input_ch = 8'd98;
	#10     input_ch = 8'd99;
	#10     input_ch = 8'd100;
	#10     input_ch = 8'd101;
	#10     input_ch = 8'd102;
	#10     input_ch = 8'd103;
	#10     input_ch = 8'd104;
	#50	$finish;
end

always #5 clk = ~clk;
endmodule   
	   
	   
