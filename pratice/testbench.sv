`timescale 1ns/1ns
module Practice();

    reg[3:0] A,B,C;
    wire[3:0] X;

    Gate1 uut(
        .A(A),.B(B),.C(C),.X(X)
    );

    initial begin
        A = 3 ; B = 5 ; C = 41;
        #100;
        A = 1'b0 ; B = 1'b0 ; C = 2'b2;
        #100;
        A = 1'b0 ; B = 1'b1 ; C = 1'b0;
        #100;
        A = 1'b0 ; B = 1'b1 ; C = 1'b1;
        #100;
        A = 1'b1 ; B = 1'b0 ; C = 1'b0;
        #100;
        A = 1'b1 ; B = 1'b0 ; C = 1'b1;
        #100;
        A = 1'b1 ; B = 1'b1 ; C = 1'b0;
        #100;
        A = 1'b1 ; B = 1'b1 ; C = 1'b1;
        #100;
    end
    initial begin
        $display("Starting Testbench");
        #800;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule