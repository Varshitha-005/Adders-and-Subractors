`include "four_bit_adder.v"
module test;
    reg [3:0] A, B;
    wire [3:0] SUM;
    wire COUT;
    four_bit_adder uut (
        .A(A),
        .B(B),
        .SUM(SUM),
        .COUT(COUT)
    );
    initial begin
        $display("A     + B     = SUM   Carry");
        $monitor("%b + %b = %b   %b", A, B, SUM, COUT);
        A = 4'b0001; B = 4'b0010; #10;
        A = 4'b0101; B = 4'b0011; #10;
        A = 4'b1111; B = 4'b0001; #10;
        A = 4'b1010; B = 4'b0110; #10;
        $finish;
    end
endmodule
