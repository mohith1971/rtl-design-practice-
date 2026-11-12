module tb_decoder2to4;

    logic A1, A0;
    logic Y0, Y1, Y2, Y3;

    decoder2to4 dut (
        .A1(A1),
        .A0(A0),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );

    initial begin

        $monitor("A1=%b A0=%b | Y3=%b Y2=%b Y1=%b Y0=%b",
                 A1, A0, Y3, Y2, Y1, Y0);

        A1 = 0; A0 = 0;
        #10;

        A1 = 0; A0 = 1;
        #10;

        A1 = 1; A0 = 0;
        #10;

        A1 = 1; A0 = 1;
        #10;

        $finish;

    end

endmodule
