module tb_ripple_adder4;

    logic [3:0] A, B;
    logic [3:0] sum;
    logic cout;

    ripple_adder4 dut (
        .A(A),
        .B(B),
        .sum(sum),
        .cout(cout)
    );

    initial begin

        $monitor("A=%b B=%b | cout=%b sum=%b",
                 A, B, cout, sum);

        A = 4'b0011; B = 4'b0001;
        #10;

        A = 4'b0111; B = 4'b0011;
        #10;

        A = 4'b1111; B = 4'b0001;
        #10;

        A = 4'b1010; B = 4'b0101;
        #10;

        $finish;

    end

endmodule
