`timescale 1ns/1ns
module Practice();

    reg[3:0] A,B,C;
    wire[3:0] X;
    wire[3:0] Y;
    wire[3:0] Z;

    // Max uut(
    //     .A(A),.B(B),.C(C),.X(X)
    // );
    // Min uut(
    //     .A(A),.B(B),.C(C),.X(Y)
    // );
    // Mid uut(
    //     .A(A),.B(B),.C(C),.X(Z)
    // );

    Max max_inst(.A(A), .B(B), .C(C), .X(X));
    Min min_inst(.A(A), .B(B), .C(C), .X(Y));
    Mid mid_inst(.A(A), .B(B), .C(C), .X(Z));


    initial begin
        A = 3 ; B = 5 ; C = 4;
        #200;
        A = 1 ; B = 2 ; C = 3;
        #200;
        A = 7 ; B = 6 ; C = 5;
        #200;
    end
    initial begin
        $display("Starting Testbench");
        #600;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule