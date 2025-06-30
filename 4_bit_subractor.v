module four_bit_subtractor (
    input [3:0] A,     
    input [3:0] B,     
    output [3:0] DIFF, 
    output BORROW      
);
    wire [4:0] result;
    assign result = {1'b0, A} + ~{1'b0, B} + 5'b00001; 
    assign DIFF = result[3:0];   
    assign BORROW = ~result[4]; 
endmodule
