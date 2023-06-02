`timescale 1ns/1ns
module Test();

    reg clk,D;
    wire Q1,Q2;

    // Q1 uut(
    //     D = 1'b0;
    //     #110;
    // );

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