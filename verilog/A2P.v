module a2p(data_in,dataout,n_valid);
input [17:0] data_in;
output [9:0] dataout;
output n_valid;

wire [17:0] data_in;
wire [9:0] dataout;

wire [7:0] state;
wire [7:0] in_ch;

reg [7:0] data_out;
reg n_valid;

assign state = data_in[15:8] ;
assign in_ch = data_in[7:0] ;

assign dataout = {2'b00,data_out};

always@(state,in_ch)
	begin

if(state == 8'b00000000  && in_ch == 8'd97  ) 
 data_out <= 8'b00000001 ;
 else if(state == 8'b00000001  && in_ch == 8'd98  ) 
 data_out <= 8'b00000010 ;
 else if(state == 8'b00000001  && in_ch == 8'd105  ) 
 data_out <= 8'b00100101 ;
 else if(state == 8'b00000001  && in_ch == 8'd112  ) 
 data_out <= 8'b00101100 ;
 else if(state == 8'b00000001  && in_ch == 8'd119  ) 
 data_out <= 8'b00000010 ;
 else if(state == 8'b00000001  && in_ch == 8'd122  ) 
 data_out <= 8'b00000010 ;
 else if(state == 8'b00000001  && in_ch == 8'd120  ) 
 data_out <= 8'b00000010 ;
 else if(state == 8'b00000001  && in_ch == 8'd107  ) 
 data_out <= 8'b00000010 ;
 else if(state == 8'b00000001  && in_ch == 8'd106  ) 
 data_out <= 8'b01100100 ;
 else if(state == 8'b00000001  && in_ch == 8'd114  ) 
 data_out <= 8'b01101011 ;
 else if(state == 8'b00000001  && in_ch == 8'd111  ) 
 data_out <= 8'b01110010 ;
 else if(state == 8'b00000001  && in_ch == 8'd108  ) 
 data_out <= 8'b01111001 ;
 else if(state == 8'b00000001  && in_ch == 8'd115  ) 
 data_out <= 8'b10001110 ;
 else if(state == 8'b00000001  && in_ch == 8'd113  ) 
 data_out <= 8'b10010101 ;
 else if(state == 8'b00000010  && in_ch == 8'd99  ) 
 data_out <= 8'b00000011 ; 
 else if(state == 8'b00000011  && in_ch == 8'd100  ) 
 data_out <= 8'b00000100 ;
 else if(state == 8'b00000100  && in_ch == 8'd101  ) 
 data_out <= 8'b00000101 ;
 else if(state == 8'b00000101  && in_ch == 8'd102  ) 
 data_out <= 8'b00000110 ;
 else if(state == 8'b00000110  && in_ch == 8'd103  ) 
 data_out <= 8'b00000111 ;
 else if(state == 8'b00000111  && in_ch == 8'd104  ) 
 data_out <= 8'b00001000 ;
 else if(state == 8'b00000111  && in_ch == 8'd105  ) 
 data_out <= 8'b00011101 ;
 else if(state == 8'b00000010  && in_ch == 8'd109  ) 
 data_out <= 8'b00001010 ;
 else if(state == 8'b00001010  && in_ch == 8'd111  ) 
 data_out <= 8'b00001011 ;
 else if(state == 8'b00001011  && in_ch == 8'd112  ) 
 data_out <= 8'b00001100 ;
 else if(state == 8'b00001100  && in_ch == 8'd113  ) 
 data_out <= 8'b00001101 ;
 else if(state == 8'b00001101  && in_ch == 8'd114  ) 
 data_out <= 8'b00001110 ;
 else if(state == 8'b00001110  && in_ch == 8'd115  ) 
 data_out <= 8'b00001111 ;
 else if(state == 8'b00001110  && in_ch == 8'd102  ) 
 data_out <= 8'b00010110 ;
 else if(state == 8'b00001110  && in_ch == 8'd116  ) 
 data_out <= 8'b00100100 ;
 else if(state == 8'b00100101  && in_ch == 8'd106  ) 
 data_out <= 8'b00100110 ;
 else if(state == 8'b00100110  && in_ch == 8'd107  ) 
 data_out <= 8'b00100111 ;
 else if(state == 8'b00100111  && in_ch == 8'd108  ) 
 data_out <= 8'b00101000 ;
 else if(state == 8'b00101000  && in_ch == 8'd109  ) 
 data_out <= 8'b00101001 ;
 else if(state == 8'b00101001  && in_ch == 8'd110  ) 
 data_out <= 8'b00101010 ;
 else if(state == 8'b00101010  && in_ch == 8'd111  ) 
 data_out <= 8'b00101011 ;
 else if(state == 8'b00101100  && in_ch == 8'd113  ) 
 data_out <= 8'b00101101 ;
 else if(state == 8'b00101101  && in_ch == 8'd114  ) 
 data_out <= 8'b00101110 ;
 else if(state == 8'b00101110  && in_ch == 8'd115  ) 
 data_out <= 8'b00101111 ;
 else if(state == 8'b00101111  && in_ch == 8'd116  ) 
 data_out <= 8'b00110000 ;
 else if(state == 8'b00110000  && in_ch == 8'd117  ) 
 data_out <= 8'b00110001 ;
 else if(state == 8'b00110001  && in_ch == 8'd118  ) 
 data_out <= 8'b00110010 ;
 else if(state == 8'b00000010  && in_ch == 8'd120  ) 
 data_out <= 8'b00110100 ;
 else if(state == 8'b00110100  && in_ch == 8'd118  ) 
 data_out <= 8'b00110101 ;
 else if(state == 8'b00110101  && in_ch == 8'd122  ) 
 data_out <= 8'b00110110 ;
 else if(state == 8'b00110110  && in_ch == 8'd97  ) 
 data_out <= 8'b00110111 ;
 else if(state == 8'b00110111  && in_ch == 8'd98  ) 
 data_out <= 8'b00111000 ;
 else if(state == 8'b00111000  && in_ch == 8'd99  ) 
 data_out <= 8'b00111001 ;
 else if(state == 8'b00000010  && in_ch == 8'd120  ) 
 data_out <= 8'b00111011 ;
 else if(state == 8'b00111011  && in_ch == 8'd118  ) 
 data_out <= 8'b00111100 ;
 else if(state == 8'b00111100  && in_ch == 8'd122  ) 
 data_out <= 8'b00111101 ;
 else if(state == 8'b00111101  && in_ch == 8'd97  ) 
 data_out <= 8'b00111110 ;
 else if(state == 8'b00111110  && in_ch == 8'd98  ) 
 data_out <= 8'b00111111 ;
 else if(state == 8'b00111111  && in_ch == 8'd99  ) 
 data_out <= 8'b01000000 ;
 else if(state == 8'b00101100  && in_ch == 8'd99  ) 
 data_out <= 8'b01010111 ;
 else if(state == 8'b01010111  && in_ch == 8'd100  ) 
 data_out <= 8'b01011000 ;
 else if(state == 8'b01011000  && in_ch == 8'd101  ) 
 data_out <= 8'b01011001 ;
 else if(state == 8'b01011001  && in_ch == 8'd102  ) 
 data_out <= 8'b01011010 ;
 else if(state == 8'b01011010  && in_ch == 8'd103  ) 
 data_out <= 8'b01011011 ;
 else if(state == 8'b01011011  && in_ch == 8'd105  ) 
 data_out <= 8'b01011100 ;
 else if(state == 8'b01100100  && in_ch == 8'd106  ) 
 data_out <= 8'b01100101 ;
 else if(state == 8'b01100101  && in_ch == 8'd107  ) 
 data_out <= 8'b01100110 ;
 else if(state == 8'b01100110  && in_ch == 8'd108  ) 
 data_out <= 8'b01100111 ;
 else if(state == 8'b01100111  && in_ch == 8'd109  ) 
 data_out <= 8'b01101000 ;
 else if(state == 8'b01101000  && in_ch == 8'd110  ) 
 data_out <= 8'b01101001 ;
 else if(state == 8'b01101001  && in_ch == 8'd111  ) 
 data_out <= 8'b01101010 ;
 else if(state == 8'b01101011  && in_ch == 8'd113  ) 
 data_out <= 8'b01101100 ; 
 else if(state == 8'b01101100  && in_ch == 8'd114  ) 
 data_out <= 8'b01101101 ;
 else if(state == 8'b01101101  && in_ch == 8'd115  ) 
 data_out <= 8'b01101110 ;
 else if(state == 8'b01101110  && in_ch == 8'd116  ) 
 data_out <= 8'b01101111 ;
 else if(state == 8'b01101111  && in_ch == 8'd117  ) 
 data_out <= 8'b01110000 ;
 else if(state == 8'b01110000  && in_ch == 8'd118  ) 
 data_out <= 8'b01110001 ;
 else if(state == 8'b01110010  && in_ch == 8'd120  ) 
 data_out <= 8'b01110011 ;
 else if(state == 8'b01110011  && in_ch == 8'd118  ) 
 data_out <= 8'b01110100 ;
 else if(state == 8'b01110100  && in_ch == 8'd122  ) 
 data_out <= 8'b01110101 ;
 else if(state == 8'b01110101  && in_ch == 8'd97  ) 
 data_out <= 8'b01110110 ;
 else if(state == 8'b01110110  && in_ch == 8'd98  ) 
 data_out <= 8'b01110111 ;
 else if(state == 8'b01110111  && in_ch == 8'd99  ) 
 data_out <= 8'b01111000 ;
 else if(state == 8'b01111001  && in_ch == 8'd120  ) 
 data_out <= 8'b01111010 ; 
 else if(state == 8'b01111010  && in_ch == 8'd118  ) 
 data_out <= 8'b01111011 ;
 else if(state == 8'b01111011  && in_ch == 8'd122  ) 
 data_out <= 8'b01111100 ; 
 else if(state == 8'b01111100  && in_ch == 8'd97  ) 
 data_out <= 8'b01111101 ;
 else if(state == 8'b01111101  && in_ch == 8'd98  ) 
 data_out <= 8'b01111110 ; 
 else if(state == 8'b01111110  && in_ch == 8'd99  ) 
 data_out <= 8'b01111111 ;
 else if(state == 8'b01100100  && in_ch == 8'd97  ) 
 data_out <= 8'b10000001 ;
 else if(state == 8'b10000001  && in_ch == 8'd121  ) 
 data_out <= 8'b10000010 ;
 else if(state == 8'b10000010  && in_ch == 8'd101  ) 
 data_out <= 8'b10000011 ;
 else if(state == 8'b10000011  && in_ch == 8'd115  ) 
 data_out <= 8'b10000100 ;
 else if(state == 8'b10000100  && in_ch == 8'd104  ) 
 data_out <= 8'b10000101 ;
 else if(state == 8'b10000101  && in_ch == 8'd106  ) 
 data_out <= 8'b10000110 ;
 else if(state == 8'b10000101  && in_ch == 8'd107  ) 
 data_out <= 8'b10001101 ;
 else if(state == 8'b10001110  && in_ch == 8'd100  ) 
 data_out <= 8'b10001111 ;
 else if(state == 8'b10001111  && in_ch == 8'd107  ) 
 data_out <= 8'b10010000 ;
 else if(state == 8'b10010000  && in_ch == 8'd108  ) 
 data_out <= 8'b10010001 ;
 else if(state == 8'b10010001  && in_ch == 8'd109  ) 
 data_out <= 8'b10010010 ;
 else if(state == 8'b10010010  && in_ch == 8'd110  ) 
 data_out <= 8'b10010011 ;
 else if(state == 8'b10010011  && in_ch == 8'd111  ) 
 data_out <= 8'b10010100 ;
 else if(state == 8'b10010101  && in_ch == 8'd104  ) 
 data_out <= 8'b10010110 ;
 else if(state == 8'b10010110  && in_ch == 8'd114  ) 
 data_out <= 8'b10010111 ;
 else if(state == 8'b10010111  && in_ch == 8'd115  ) 
 data_out <= 8'b10011000 ;
 else if(state == 8'b10011000  && in_ch == 8'd116  ) 
 data_out <= 8'b10011001 ;
 else if(state == 8'b10011001  && in_ch == 8'd117  ) 
 data_out <= 8'b10011010 ;
 else if(state == 8'b10011010  && in_ch == 8'd118  ) 
 data_out <= 8'b10011011 ;
 else if(state == 8'b00000010  && in_ch == 8'd99  ) 
 data_out <= 8'b10011101 ;
 else if(state == 8'b10011101  && in_ch == 8'd118  ) 
 data_out <= 8'b10011110 ;
 else if(state == 8'b10011110  && in_ch == 8'd122  ) 
 data_out <= 8'b10011111 ;
 else if(state == 8'b10011111  && in_ch == 8'd97  ) 
 data_out <= 8'b10100000 ;
 else if(state == 8'b10100000  && in_ch == 8'd98  ) 
 data_out <= 8'b10100001 ;
 else if(state == 8'b10100001  && in_ch == 8'd99  ) 
 data_out <= 8'b10100010 ;
 else if(state == 8'b00101100  && in_ch == 8'd97  ) 
 data_out <= 8'b10100100 ;
 else if(state == 8'b10100100  && in_ch == 8'd118  ) 
 data_out <= 8'b10100101 ;
 else if(state == 8'b10100101  && in_ch == 8'd122  ) 
 data_out <= 8'b10100110 ;
 else if(state == 8'b10100110  && in_ch == 8'd97  ) 
 data_out <= 8'b10100111 ;
 else if(state == 8'b10100111  && in_ch == 8'd98  ) 
 data_out <= 8'b10101000 ;
 else if(state == 8'b10101000  && in_ch == 8'd99  ) 
 data_out <= 8'b10101001 ;
 else if(state == 8'b01111001  && in_ch == 8'd111  ) 
 data_out <= 8'b10101011 ;
 else if(state == 8'b10101011  && in_ch == 8'd107  ) 
 data_out <= 8'b10101100 ;
 else if(state == 8'b10101100  && in_ch == 8'd101  ) 
 data_out <= 8'b10101101 ;
 else if(state == 8'b10101101  && in_ch == 8'd102  ) 
 data_out <= 8'b10101110 ;
 else if(state == 8'b10101110  && in_ch == 8'd103  ) 
 data_out <= 8'b10101111 ;
 else if(state == 8'b10101111  && in_ch == 8'd104  ) 
 data_out <= 8'b10110000 ;
 else if(state == 8'b00101100  && in_ch == 8'd111  ) 
 data_out <= 8'b10110010 ;
 else if(state == 8'b10110010  && in_ch == 8'd119  ) 
 data_out <= 8'b10110011 ;
 else if(state == 8'b10110011  && in_ch == 8'd101  ) 
 data_out <= 8'b10110100 ;
 else if(state == 8'b10110100  && in_ch == 8'd102  ) 
 data_out <= 8'b10110101 ;
 else if(state == 8'b10110101  && in_ch == 8'd103  ) 
 data_out <= 8'b10110110 ;
 else if(state == 8'b10110110  && in_ch == 8'd104  ) 
 data_out <= 8'b10110111 ;
 else if(state == 8'b00101100  && in_ch == 8'd108  ) 
 data_out <= 8'b10111001 ;
 else if(state == 8'b10111001  && in_ch == 8'd97  ) 
 data_out <= 8'b10111010 ;
 else if(state == 8'b10111010  && in_ch == 8'd111  ) 
 data_out <= 8'b10111011 ;
 else if(state == 8'b10111011  && in_ch == 8'd102  ) 
 data_out <= 8'b10111100 ;
 else if(state == 8'b10111100  && in_ch == 8'd103  ) 
 data_out <= 8'b10111101 ;
 else if(state == 8'b10111101  && in_ch == 8'd104  ) 
 data_out <= 8'b10111110 ;
 else if(state == 8'b00101100  && in_ch == 8'd97  ) 
 data_out <= 8'b11000000 ;
 else if(state == 8'b11000000  && in_ch == 8'd108  ) 
 data_out <= 8'b11000001 ;
 else if(state == 8'b11000001  && in_ch == 8'd111  ) 
 data_out <= 8'b11000010 ;
 else if(state == 8'b11000010  && in_ch == 8'd119  ) 
 data_out <= 8'b11000011 ;
 else if(state == 8'b11000011  && in_ch == 8'd103  ) 
 data_out <= 8'b11000100 ;
 else if(state == 8'b11000100  && in_ch == 8'd104  ) 
 data_out <= 8'b11000101 ;
 else if(state == 8'b00101100  && in_ch == 8'd117  ) 
 data_out <= 8'b11000111 ;
 else if(state == 8'b11000111  && in_ch == 8'd119  ) 
 data_out <= 8'b11001000 ;
 else if(state == 8'b11001000  && in_ch == 8'd97  ) 
 data_out <= 8'b11001001 ;
 else if(state == 8'b11001001  && in_ch == 8'd114  ) 
 data_out <= 8'b11001010 ;
 else if(state == 8'b11001010  && in_ch == 8'd103  ) 
 data_out <= 8'b11001011 ;
 else if(state == 8'b11001011  && in_ch == 8'd104  ) 
 data_out <= 8'b11001100 ;
 else if(state == 8'b01111001  && in_ch == 8'd111  ) 
 data_out <= 8'b11001110 ;
 else if(state == 8'b11001110  && in_ch == 8'd112  ) 
 data_out <= 8'b11001111 ;
 else if(state == 8'b11001111  && in_ch == 8'd97  ) 
 data_out <= 8'b11010000 ;
 else if(state == 8'b11010000  && in_ch == 8'd116  ) 
 data_out <= 8'b11010001 ;
 else if(state == 8'b11010001  && in_ch == 8'd101  ) 
 data_out <= 8'b11010010 ;
 else if(state == 8'b11010010  && in_ch == 8'd104  ) 
 data_out <= 8'b11010011 ;
 else if(state == 8'b01110010  && in_ch == 8'd117  ) 
 data_out <= 8'b11010101 ;
 else if(state == 8'b11010101  && in_ch == 8'd116  ) 
 data_out <= 8'b11010110 ;
 else if(state == 8'b11010110  && in_ch == 8'd114  )
 data_out <= 8'b11010111 ;
 else if(state == 8'b11010111  && in_ch == 8'd119  ) 
 data_out <= 8'b11011000 ;
 else if(state == 8'b11011000  && in_ch == 8'd97  ) 
 data_out <= 8'b11011001 ;
 else if(state == 8'b11011001  && in_ch == 8'd104  ) 
 data_out <= 8'b11011010 ;
 else if(state == 8'b10001110  && in_ch == 8'd112  ) 
 data_out <= 8'b11011100 ;
 else if(state == 8'b11011100  && in_ch == 8'd111  ) 
 data_out <= 8'b11011101 ;
 else if(state == 8'b11011101  && in_ch == 8'd119  ) 
 data_out <= 8'b11011110 ;
 else if(state == 8'b11011110  && in_ch == 8'd117  ) 
 data_out <= 8'b11011111 ;
 else if(state == 8'b11011111  && in_ch == 8'd114  ) 
 data_out <= 8'b11100000 ;
 else if(state == 8'b11100000  && in_ch == 8'd116  ) 
 data_out <= 8'b11100001 ;
 else
	data_out <= 8'd0;

 end

 always@(data_out)
 	begin
		if(data_out == 0)
			n_valid = 1;
		else
			n_valid = 0;
	end
 endmodule
