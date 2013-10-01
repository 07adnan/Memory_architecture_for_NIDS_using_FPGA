module ns_ctrl(clk,reset,a2p_in,preReg,data_out);
input clk;
input reset;
input a2p_in;
input [31:0] preReg;

output data_out;

wire clk;
wire reset;
wire a2p_in;
wire [31:0] preReg;

reg data_out;


always@(posedge clk)
   begin
     if(reset == 1)
   		data_out <= 0;
	else if(a2p_in == 1 || preReg == 0 )
		data_out <= 0;
	else
		data_out <= 1;
   end
   
   
endmodule   
	   
	   
