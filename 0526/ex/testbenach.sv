`timescale 1ns/1ns
module Test();

    reg clk,D;
    wire [3:0] Q1,Q2;

    block uut(
        .D(D),.Clk(clk),.X(Q1),.Y(Q2)
    );

    initial begin
        forever begin
            clk = !clk;
            #100;
        end
    end

    initial begin
        clk = 1'b0;D = 1'b0;
        #100;
        D = !D;
        #200;
        D = !D;
        #200;
        D = !D;
        #200;
        D = !D;
        #200;
        D = !D;
        #400;
        D = !D;
        #400;
        D = !D;
        #400;
    end
    initial begin
        $display("Starting Testbench");
        #2200;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule