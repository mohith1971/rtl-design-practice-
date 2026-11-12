module mux4to1(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    input logic s1,
    input logic s0,
    output logic y
);

    assign y = (~s1 & ~s0 & a) |
               (~s1 &  s0 & b) |
               ( s1 & ~s0 & c) |
               ( s1 &  s0 & d);

endmodule
