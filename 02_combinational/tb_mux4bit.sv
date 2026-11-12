module tb_mux4bit;
    logic [3:0] a,b;
    logic s;
    logic [3:0] y;


    mux4bit dut (
        .a(a),
        .b(b),
        .s(s),
        .y(y)
    );

    initial begin
	    $monitor("a=%b b=%b s=%b |y=%b",a,b,s,y);

	    a = 4'b1010; b = 4'b0101; s = 1'b0;
	    #10;
	    s = 1'b1;
	    #10;
	    a = 4'b1100; b = 4'b0011; s = 1'b0;
	    #10;
	    s = 1'b1;
	    #10;


	    $finish;
	end
   endmodule 

