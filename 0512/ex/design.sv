module append_gate(S,Co,A,B,C);
    input A,B,C;
    output S,Co;
    xor(S,A,B,C);
    wand st;
    assign st = A;
    assign st = B;
    wand nd;
    assign nd = A;
    assign nd = C;
    wand rd;
    assign rd = B;
    assign rd = C;
    or(Co,st,nd,rd);
endmodule
