`timescale 1ns/1ns
module mux_test();

    reg A,B,S;
    wire Y;

    mux_gate uut(
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
        A =1'b0;
        B =1'b0;
        S =1'b0;
        #160;
        A =1'b1;
        #80;
        S =1'b1;
        #240;
        A =1'b0;
        #160;
        B =1'b1;
        #200;
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