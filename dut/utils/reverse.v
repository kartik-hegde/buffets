/*
* Module to reverse a bus
*/

module reverse(bus_i, bus_o);

    parameter WIDTH = 32;

    input [WIDTH-1:0] bus_i;
    output [WIDTH-1:0] bus_o;

    genvar i;
    generate
    for(i=0;i<WIDTH;i=i+1) begin : reverse
        assign bus_o[i] = bus_i[WIDTH-1-i];
    end
    endgenerate

endmodule
