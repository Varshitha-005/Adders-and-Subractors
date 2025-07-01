module eight_bit_subtractor (
    input  [7:0] A,      
    input  [7:0] B,      
    output [7:0] DIFF,   
    output BORROW        
);
    wire [8:0] result;
    assign result = {1'b0, A} + ~{1'b0, B} + 9'b000000001; 
    assign DIFF = result[7:0];   
    assign BORROW = result[8];  
endmodule
