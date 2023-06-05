`timescale 1ns/1ns
module Test();

    reg [3:0] S;
    reg [4:0] A ;
    reg [4:0] B ;
    wire [4:0] Alu;

    ALU_Gate uut(
        .S(S),.A(A),.B(B),.Alu(Alu)
    );

    initial begin
        S = 4'b1101;
        A = 5'b00001;
        B = 5'b00000;
        #100;
        S = 4'b1100;
        A = 5'b00010;
        B = 5'b00001;
        #100;
        S = 4'b0111;
        A = 5'b00100;
        B = 5'b00010;
        #100;
        S = 4'b0101;
        A = 5'b01000;
        B = 5'b00100;
        #100;
        S = 4'b0001;
        A = 5'b10000;
        B = 5'b01000;
        #100;
        S = 4'b0000;
        A = 5'b00001;
        B = 5'b00001;
        #100;
        S = 4'b1111;
        A = 5'b00001;
        B = 5'b00001;
        #100;
    end
    initial begin
        $display("Starting Testbench");
        #700;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule