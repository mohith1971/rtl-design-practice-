module ripple_adder4 (
    input  logic [3:0] A,
    input  logic [3:0] B,
    output logic [3:0] sum,
    output logic       cout
);

    logic c1, c2, c3;

    full_adder FA0 (
        .a(A[0]), .b(B[0]), .cin(1'b0),
        .sum(sum[0]), .cout(c1)
    );

    full_adder FA1 (
        .a(A[1]), .b(B[1]), .cin(c1),
        .sum(sum[1]), .cout(c2)
    );

    full_adder FA2 (
        .a(A[2]), .b(B[2]), .cin(c2),
        .sum(sum[2]), .cout(c3)
    );

    full_adder FA3 (
        .a(A[3]), .b(B[3]), .cin(c3),
        .sum(sum[3]), .cout(cout)
    );

endmodule
