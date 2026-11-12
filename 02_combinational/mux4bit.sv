module mux4bit (
    input  logic [3:0] a,
    input  logic [3:0] b,
    input  logic       s,
    output logic [3:0] y
);
    assign y = s ? b : a;
endmodule
