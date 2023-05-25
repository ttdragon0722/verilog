module ex2 (
    input[4:0] P,input[4:0] Q,
    output [6:0] R,
    output [3:0] S,
    output [7:0] T,
    output [4:0] U,
    output [4:0] V,
    output [5:0] W,
    output [4:0] X,
    output Y,
    output Z
);
    wire S_4;
    assign R = P*3;
    // assign S_4 = Q >> 2;
    assign S = Q >> 1;
    assign T = 4'b0110+P;
    assign U = P~&Q;
    wire [4:0]test;
    // 43210
    // 21043
    assign V = {P[2:0],P[4:3]};
    // 9876543210
    // 765432
    wire [9:0] tenVector = {P[4:0],Q[4:0]}; 
    assign W = tenVector[7:2];
    assign X = (P>10)?P:Q;
    assign Y = ( Q >= 10 & 20 >= Q )? 1 :0 ;

    assign Z = ^P;

    // always @(*) begin
    //     R = P*3;
    //     S_4 = Q >> 2;
    //     S = S_4 << 1;
    //     T = 4'b0110+P;
    //     U = P~&Q;
    //     V = {P[2],P[7:2]}>>2;
    //     W = {P,Q};
    //     X = (P>10)?P:Q;
    //     Y = ( Q >= 10 & 20 >= Q )? 1'b1 :1'b0 ;
    // end
endmodule