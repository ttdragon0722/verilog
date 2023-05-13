module Gate1 (
    input[3:0] A,input[3:0] B,input[3:0] C,output reg [3:0] X
);
    
    always @(*) begin
    if (A>=B && A>=C)
        assign X = A;
    else if (B>=A && B>=C)
        assign X = B;
    else 
        assign X = C;
    end

endmodule

// module Gate1(input [3:0] A, input [3:0] B, input [3:0] C, output reg [3:0] X);
//     always @(*)
//     begin
//         if(A >= B && A >= C)
//             X = A;
//         else if(B >= A && B >= C)
//             X = B;
//         else
//             X = C;
//     end
// endmodule
