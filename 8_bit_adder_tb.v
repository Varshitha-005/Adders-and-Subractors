`include "8_bit_adder.v"
module test;
   reg [7:0] A, B;       
    wire [7:0] SUM;       
    wire COUT;           
    eight_bit_adder uut (
        .A(A),
        .B(B),
        .SUM(SUM),
        .COUT(COUT)
    );
    initial begin
        $display("   A      +     B     =    SUM    COUT");
        $monitor("%b + %b = %b   %b", A, B, SUM, COUT);
        A = 8'b00000001; B = 8'b00000001; #10; 
        A = 8'b10101010; B = 8'b01010101; #10; 
        A = 8'b11111111; B = 8'b00000001; #10; 
        A = 8'b10000000; B = 8'b10000000; #10;
        $finish;
    end
endmodule
