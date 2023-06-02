`timescale 1ns/1ns
module Test();

    reg I0,I1,I0_a,I1_a,I0_b,I1_b,I0_c,I1_c;
    wire Q3,Q2,Q1,Q0;
    wire Q3_a,Q2_a,Q1_a,Q0_a;
    wire Q3_b,Q2_b,Q1_b,Q0_b;
    wire Q3_c,Q2_c,Q1_c,Q0_c;

    Power uut(
        .I0(I0),.I1(I1),.Q3(Q3),.Q2(Q2),.Q1(Q1),.Q0(Q0)
    );
    PowerGate uut1(
        .I0(I0_a),.I1(I1_a),.Q3(Q3_a),.Q2(Q2_a),.Q1(Q1_a),.Q0(Q0_a)
    );
    PowerIf uut2(
        .I0(I0_b),.I1(I1_b),.Q3(Q3_b),.Q2(Q2_b),.Q1(Q1_b),.Q0(Q0_b)
    );
    PowerCase uut3(
        .I0(I0_c),.I1(I1_c),.Q3(Q3_c),.Q2(Q2_c),.Q1(Q1_c),.Q0(Q0_c)
    );

    initial begin
        I0 = 1'b0;I1 = 1'b0;
        I0_a = 1'b0;I1_a = 1'b0;
        I0_b = 1'b0;I1_b = 1'b0;
        I0_c = 1'b0;I1_c = 1'b0;
        #100;
        I0 = 1'b1;I1 = 1'b0;
        I0_a = 1'b1;I1_a = 1'b0;
        I0_b = 1'b1;I1_b = 1'b0;
        I0_c = 1'b1;I1_c = 1'b0;
        #100;
        I0 = 1'b0;I1 = 1'b1;
        I0_a = 1'b0;I1_a = 1'b1;
        I0_b = 1'b0;I1_b = 1'b1;
        I0_c = 1'b0;I1_c = 1'b1;
        #100;
        I0 = 1'b1;I1 = 1'b1;
        I0_a = 1'b1;I1_a = 1'b1;
        I0_b = 1'b1;I1_b = 1'b1;
        I0_c = 1'b1;I1_c = 1'b1;
        #100;
        
    end
    initial begin
        $display("Starting Testbench");
        #400;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule