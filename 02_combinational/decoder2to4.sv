module decoder2to4(
    input logic A1,
    input logic A0,
    output logic Y0,
    output logic Y1,
    output logic Y2,
    output logic Y3
);

    assign Y0 = ~A1 & ~A0;
    assign Y1 = ~A1 &  A0;
    assign Y2 =  A1 & ~A0;
    assign Y3 =  A1 &  A0;

endmodule
