module mux_gate (
    A,B,S,Y
);
    input A,B,S;
    output Y;

    wire Sn = ~S;

    wand st;
    assign st = A;
    assign st = Sn;

    wand rd;
    assign rd = B;
    assign rd = S;

    or(Y,st,rd);

endmodule