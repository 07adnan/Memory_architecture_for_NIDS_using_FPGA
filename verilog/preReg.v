module preReg(clk,reset,data_in,data_out);
input clk;
input reset;
input [31:0] data_in;

output [31:0] data_out;

wire clk;
wire reset;
wire [31:0] data_in;

reg [31:0] data_out;


always@(posedge clk)
   begin
     if(reset == 1)
   		data_out <= 32'b11111111111111111111111111111111;
	else
		data_out <= data_out & data_in;
   end
   
   
endmodule   
	   
	   
