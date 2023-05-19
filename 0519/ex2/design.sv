module ex2 (
    input[6:0] P,input[6:0] Q,
    output reg [8:0] R,
    output reg [5:0] S,
    output reg [7:0] T,
    output reg [6:0] U,
    output reg [4:0] V,
    output reg [5:0] W,
    output reg [6:0] X,
    output Y,
    output Z
);
    
    always @(*) begin
        R = P*3;
        S = Q >> 2;
        T = 4'b1010+P;
        U = P~&Q;
        V = {P[2:0],P[7:2]}>>2;
    end
endmodule