module tb_mux4to1;

    logic a, b, c, d;
    logic s1, s0;
    logic y;

    mux4to1 dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .s1(s1),
        .s0(s0),
        .y(y)
    );

    initial begin

        $monitor("s1=%b s0=%b | a=%b b=%b c=%b d=%b | y=%b",
                 s1, s0, a, b, c, d, y);

        a = 0; b = 1; c = 0; d = 1;

        s1 = 0; s0 = 0;
        #10;

        s1 = 0; s0 = 1;
        #10;

        s1 = 1; s0 = 0;
        #10;

        s1 = 1; s0 = 1;
        #10;

        $finish;

    end

endmodule
