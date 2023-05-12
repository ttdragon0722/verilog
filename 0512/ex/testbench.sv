`timescale 1ns/1ns
module append_test();

    reg A,B,Ci;
    wire S,Co;

    append_gate uut(
        .S(Out),
        .Co(Co),
        .A(A),
        .B(B),
        .C(Ci)
    );

    initial begin
        A=1'b0;
        B=1'b0;
        Ci=1'b0;
        #100;
        A=1'b0;
        B=1'b0;
        Ci=1'b1;
        #100;
        A=1'b0;
        B=1'b1;
        Ci=1'b0;
        #100;
        A=1'b0;
        B=1'b1;
        Ci=1'b1;
        #100;
        A=1'b1;
        B=1'b0;
        Ci=1'b0;
        #100;
        A=1'b1;
        B=1'b0;
        Ci=1'b1;
        #100;
        A=1'b1;
        B=1'b1;
        Ci=1'b0;
        #100;
        A=1'b1;
        B=1'b1;
        Ci=1'b1;
    end

    initial begin
        $display("Starting Testbench");
        #1000;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule

