// TODO: Make these parametrizable
module priorityEncoder
			(
			in,
			out
			);

parameter 	WIDTH = 8;
localparam  OWIDTH = $clog2(WIDTH);

input 	[WIDTH-1:0]		in;
output 	[OWIDTH-1:0]	out;

wire    [OWIDTH-1:0]    temp [WIDTH:0];

// We assume this is the index
assign temp[0] = 0;

genvar i;
generate
    //Go through every bit
    for(i=0; i<WIDTH; i=i+1) begin : PRIENC
        // If we find a 0 (empty slot), then store i, else propogate
        assign temp[i+1] = (in[i]==1'b0) ? i : temp[i]; 
    end
endgenerate

assign out = temp[WIDTH];

endmodule
