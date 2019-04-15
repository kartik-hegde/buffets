module tb8;

    reg [7:0] seq;
    wire [3:0] idx;

    leadingZero8 u_lze_8(seq,idx);

    initial begin
    #3
        seq = 8'h80;
    #3
        $display("seq %h, idx %d\n", seq, idx);
        seq = 8'h01;
    #3
        $display("seq %h, idx %d\n", seq, idx);
        seq = 8'h08;
    #3
        $display("seq %h, idx %d\n", seq, idx);
        seq = 8'h03;
    #3
        $display("seq %h, idx %d\n", seq, idx);
    end

endmodule

module tb32;

    reg [31:0] seq;
    wire [5:0] idx;

    leadingZero32 u_lze_32(seq,idx);

    initial begin
    #3
        seq = 32'h80000000;
    #3
        $display("seq %h, idx %d\n", seq, idx);
        seq = 32'h00000001;
    #3
        $display("seq %h, idx %d\n", seq, idx);
        seq = 32'h00000008;
    #3
        $display("seq %h, idx %d\n", seq, idx);
        seq = 32'h00000003;
    #3
        $display("seq %h, idx %d\n", seq, idx);
    end
endmodule
