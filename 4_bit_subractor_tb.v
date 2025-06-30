`include "4_bit_subractor.v"
module test;
    reg [3:0] A, B;
    wire [3:0] DIFF;
    wire BORROW;
    four_bit_subtractor uut (
        .A(A),
        .B(B),
        .DIFF(DIFF),
        .BORROW(BORROW)
    );
    initial begin
        $display("   A    -   B    =   DIFF   BORROW");
        $monitor("%b - %b = %b     %b", A, B, DIFF, BORROW);
        A = 4'b0100; B = 4'b0010; #10;
        A = 4'b0110; B = 4'b0101; #10;
        A = 4'b0010; B = 4'b0110; #10;
        A = 4'b1001; B = 4'b1001; #10;
        $finish;
    end
endmodule
