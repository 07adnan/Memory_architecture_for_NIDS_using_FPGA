module top_pattern(clk,reset,input_ch,ifFinal);

input clk;
input reset;
input [7:0] input_ch;

output ifFinal;

wire clk;
wire reset;
wire [7:0] input_ch;

wire ifFinal;

wire [17:0] addr_reg;

wire [9:0] next_state;
wire [9:0] a2p_out;
wire [9:0] valid_state;
wire [31:0] pathVec;
wire [31:0] pathVec_out;
wire n_valid;
wire ns_sel;

reg [7:0] input_ch_temp;

always@(posedge clk)
	begin
		if(reset == 1 )
			input_ch_temp <= 0;
		else
		input_ch_temp <= input_ch;
	end	

assign addr_reg = {next_state,input_ch_temp};

a2p     a1(addr_reg,a2p_out,n_valid);

memory  a2(clk,reset,a2p_out,n_valid,valid_state,pathVec,ifFinal);

preReg  a3(clk,reset,pathVec,pathVec_out);
   
ns_ctrl a4(clk,reset,n_valid,pathVec_out,ns_sel);

assign next_state = (ns_sel == 1)?valid_state:10'd0;
   
endmodule   
	   
	   
