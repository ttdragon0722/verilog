`timescale 1ns/1ns
module Test();

    reg D,Clk;
    wire [3:0]Q1,Q2;
    Question2 test2(
        .Clk(Clk),.D(D),.Q2(Q2)
    );


    initial begin
    forever begin
        Clk = !Clk;
        #100;
    end
    end
    initial begin
        D=1'b0;Clk=1'b0;
        #100;
        D=!D;
        #200;
        D=!D;
        #200;
        D=!D;
        #200;
        D=!D;
        #200;
        D=!D;
        #400;
        D=!D;
        #400;
        D=!D;
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