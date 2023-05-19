`timescale 1ns/1ns
`include "./design.sv"
module ex2_test();

    reg [6:0] P,Q ;
    wire [8:0] R;
    wire [5:0] S;
    wire [7:0] T;
    wire [6:0] U;
    wire [4:0] V;
    wire [5:0] W;
    wire [6:0] X;
    wire Y;
    wire Z;

    ex2 uut(
        .P(P),
        .Q(Q),
        .R(R),
        .S(S),
        .T(T),
        .U(U),
        .V(V),
        .W(W),
        .X(X),
        .Y(Y),
        .Z(Z)
    );

    initial begin
        P=5'b00001;Q=5'b00000;
        #10;
        P=5'b00011;Q=5'b00001;
        #10;
        P=5'b00110;Q=5'b00011;
        #10;
        P=5'b00011;Q=5'b01001;
        #10;
        P=5'b00011;Q=5'b10001;
        #10;
        P=5'b00011;Q=5'b00101;
        #10;
        P=5'b01111;Q=5'b01101;
        #10;
        P=5'b10011;Q=5'b00001;
        #10;
        P=5'b00011;Q=5'b00001;
    end
    initial begin
        $display("Starting Testbench");
        #100;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule