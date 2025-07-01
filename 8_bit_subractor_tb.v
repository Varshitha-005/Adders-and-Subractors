`include "8_bit_subractor.v"
module test;
    reg [7:0] A, B;
    wire [7:0] DIFF;
    wire BORROW;
    eight_bit_subtractor uut (
        .A(A),
        .B(B),
        .DIFF(DIFF),
        .BORROW(BORROW)
    );
    initial begin
        $display("   A       -     B      =   DIFF     BORROW");
        $monitor("%b - %b = %b     %b", A, B, DIFF, BORROW);
        A = 8'b00010100; B = 8'b00000110; #10; 
        A = 8'b00101000; B = 8'b00100000; #10; 
        A = 8'b00000110; B = 8'b00010100; #10; 
        A = 8'b11111111; B = 8'b00000001; #10; 
        A = 8'b10000000; B = 8'b10000000; #10; 
        $finish;
    end
endmodule
